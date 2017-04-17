---
layout: post
title: "How to use Pixelate JavaScript Library?"
author: Tung Tran
date: 2016-01-13 13:52
comments: true
categories:
    - "projects"
tags:
    - "pixelate"
    - "JavaScript"
cover: 
description: How to use Pixelate JavaScript Library? 
keywords: How, library, Pixelate, Javascript
published: true
---

You've seen many shows where they pixelate a part of an image to scramble it. Sometimes it's used to hide the more interesting parts in a nude shot. This technique is also used to conceal information like numbers on credit cards or license plates. When you are reading here, I guess you are thinking that you have to achieve this effect with Photoshop Elements.
But I don't think so, I had a quick and very easy way. This technique is easier than Photoshop. That is Pixelate Javascript Library(PJL). It will help you to pixelate any images. You needn't use Photoshop or anything for modification. I write this post as step by step guide for anyone who wants to work with this Library. So let's get started! 

- This is an image before effect.

{% img center /images/2016/12/pjl1.png %}

- This is an image after effect.

{% img center /images/2016/12/pjl2.png %}

<!-- more -->

##Requirements

- We need to install one of browsers as: `IE 9+`, `Firefox 17+`, `chrome 13+`, `Safari 5+`, `Opera 11+`.
- We need to have one of editors as: `sublime`, `notepad++` or `notepad`.
I think we had all the tools to work. I will show you how to use PJL in your website, and you will see it is very interesting.

###Step 1: Setup bower, gruntjs

Bower is an application manages all these things our project. Before install bower and gruntjs, we need to install `node`, `npm`, `nvm`. You have to install exact versions, as shown in the figure below:

```
$ node --version
v0.10.41
$ npm --version
1.4.29
$ nvm --version
0.23.3
```

Then we will install bower and gruntjs.

```
$ npm install -g grunt-cli
$ npm install -g bower
$ npm install
$ bower install
$ grunt build
```

###Step 2: Clone PJL on Github

Go to https://github.com/teracyhq/pixelate and clone it to the local respository.

```
$ git init repo_local
$ git clone https://github.com/teracyhq/pixelate
```

###Step 3: Create the custom.js file

- We need to create `custom.js` and turn an image url into a canvas, then pixelate it.

```bash form-1
var canvas = document.createElement('canvas'),
    context,
    img = new Image();

img.onload = function() {
    context = canvas.getContext('2d');
    canvas.width = img.width;
    canvas.height = img.height;
    context.drawImage(img, 0, 0);
    var pxl = pixelate(canvas, {
                radius: 10,
                selector: {
                  masked: true, // mask on select
                  strokeStyle: 'black'
                }
            });
    pxl.select(0, 0, 50, 50);
};
img.src = 'images/girl-and-dog.jpg';
```

```bash form-2
var pxl = pixelate($('#my-image'));
pxl.select(0, 0, 50, 50);
```

```bash form-3
var pxl = pixelate(document.getElementById('my-image'));
```

```bash form-4
var pxl = pixelate('images/sample.png');
pxl.on('load', function() {
    $('body').append(pxl.$el);
});
```

###Step 4: Create APIs

Create APIs which interact with the logic file `pixleate.js`. It will give interaction to users who use your application.

- Select an area for masking, unmasking and pixelating.

```bash select(x, y, width, height)
var pxl = pixelate(canvas);
pxl.select(0, 0, 50, 50);
```

- Clears the selected area.

```bash clear()
var pxl = pixelate(canvas);
....
pxl.clear();
```

- Masks the selected area with pixelation.

```bash mask([radius])
var pxl = pixelate(canvas);
...
pxl.mask(10);
```

- Unmasks the selected area, the area becomes transparent to reveal selected original.

```bash unmask()
var pxl = pixelate(canvas);
...
pxl.mask(10);
...
pxl.unmask();
```

- Pixelates the selected area and apply to the canvas.

```bash pixelate()
var pxl = pixelate(canvas);
...
pxl.pixelate(10);
```

- Moves the selected area to (offsetX, offsetY).

```bash move(offsetX, offsetY)
var pxl = pixelate(canvas);
...
pxl.select(0, 0, 50, 50);
pxl.move(10, 20);
```

- Gets the original canvas specified when being initialized.

```bash originalCanvas
var pxl = pixelate(canvas);
...
var origin = pxl.originalCanvas;
```

- Gets the current canvas that could be pixelated or not.

```bash currentCanvas
var pxl = pixelate(canvas);
...
var origin = pxl.currentCanvas;
```
- Unregisters this instance to specified canvas on initialize and dispose this instance.
- This is useful to enable, disable pixelate functionality on the specified canvas.

```bash dispose()
var pxl = pixelate(canvas);
...
pxl.dispose();
```

- Gets the selected area, this is immutable.

```bash getSelectedArea()
var pxl = pixelate(canvas);
...
console.log(pxl.getSelectedArea());
```
We can update and delete APIs. If you needn't use in the your website, you can delete it.

###Step 5: Event trigger

Event trigger is very important. Specify the event which you want to use.

```bash Event trigger
on('select:start', fn(x, y)) //when select start
on('select:stop', fn(x, y, selectedArea)) //when select stop
on('select:clear', fn(selectedArea)) //when clear selected area
on('mask', fn(radius, selectedArea)) //when mark selected area
on('unmask', fn(selectedArea)) //when unmark selected area
on('pixelate', fn(pixelatedCanvas)) //when pixelate the selected area
on('move', fn(offsetX, offsetY)) //when selected area move
on('dispose', fn()) //when dispose
```
- usage:

``` 
var pxl = pixelate(canvas);
pxl.
  on('select:start', function(x, y) {
    console.log('select started at: ' + x + ':' + y);
  }).
  on('select:stop', function(x, y, selectedArea) {
    console.log('select stopped at: ' + x + ':' + y, selectedArea);
  });
```
###Summary

In this post, I've guided you step by step to use PJL as different JavaScript libraries. I think you can now own this library. It's very easy and convenient for any developer..
If you need any pixelate consultant or pixelate development, don’t hesitate to contact us at: hq@teracy.com and we’re very eager to work with you about Pixelate JavaScript Library.
The details about Pixelate JavaScript Library at: https://github.com/teracyhq/pixelate

Happy PJL Developing!