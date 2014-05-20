require 'jekyll'
require 'jekyll/post'

module Jekyll

  # add post.file_name and post.full_path
  class Post
    alias_method :original_to_liquid, :to_liquid

    def to_liquid
      file_name = @name
      full_path = File.join(@base, file_name)
      original_to_liquid.deep_merge({
        'full_path' => full_path,
        'file_name' => file_name
      })
    end
  end

  class RevisionTag < Liquid::Tag
    DEFAULT_LIMIT = 5

    def initialize(name, marker, token)
      @params = Hash[*marker.split(/(?:: *)|(?:, *)/)]
      if @params['limit'] != nil
        /\d*/.match(@params['limit']) do |m|
          @limit = m[0].to_i
        end
      else
        @limit = DEFAULT_LIMIT
      end
      super
    end

    def render(context)
      site = context.environments.first['site']
      if context.environments.first['post'] != nil
        post_or_page = context.environments.first['post']
      else
        post_or_page = context.environments.first['page']
      end

      full_path = post_or_page['full_path']

      if full_path == nil
        puts '========= revision plugin::post_or_page =========='
        puts post_or_page
        puts "full_path is nil"
        return ''
      end

      puts "revision plugin::full_path: " + full_path

      cmd = 'git log --date=local --pretty="%cd|%s" --max-count=' + @limit.to_s + ' ' + full_path
      logs = `#{cmd}`

      html = '<ul>'
      logs.each_line do |line|
        parts = line.split('|')
        date, msg = parts[0], parts[1..-1].join('|')
        html << '<li><strong>' + date + '</strong><br/>' + msg + '</li>'
      end
      html << '</ul>'

      if site['revision_github_account'] != nil && site['revision_github_repo'] != nil
        cmd = 'git rev-parse --abbrev-ref HEAD'
        # chop last '\n' of branch name
        branch = `#{cmd}`.chop
        if site['source'] != nil
          # for Octopress sites
          link = File.join('https://github.com', site['revision_github_account'], site['revision_github_repo'],
                           'commits', branch, site['source'], '_posts', post_or_page['file_name'])
        else
          # for Jekyll sites
          link = File.join('https://github.com', site['revision_github_account'], site['revision_github_repo'],
                           'commits', branch, '_posts', post_or_page['file_name'])
        end
        html << '<a href=' + link + ' target=_blank>View all changes on Github</a>'
      end

      return html
    end
  end
end

Liquid::Template.register_tag('revision', Jekyll::RevisionTag)