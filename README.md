# Pixi.js Dart wrapper

This is an early work in progress wrapper of the [Pixi.js](http://www.pixijs.com/) library for Dart. It's a simple bridge of Javascript functions and objects to Dart.

Pixi.js version: 3.0.10

### Idea

There are already Dart ports of Pixi.js in native Dart code but it has one major downside: you have to update Dart code everytime the JS library is updated to stay up to date, which takes a lot of time and efforts.

By using a JS bridge only object and methods signatures have to be updated in case of a Pixi.js update which is way easier to maintain. 

### Work in progress

I created this port for my own needs and it's far from final. It hasn't been completely tested (not even really). If you plan to use it and find a bug or want to complete the port, feel free to create a pull request. 

### Disclaimer

Yes, since it's a bridge from JS to Dart it's obiviously slower than a native port and more memory consuming so if you're looking for a very efficient port you'd rather use another native one.

All credits for [Pixi.js library](http://www.pixijs.com/) goes to the makers of that lib, this port is just wrapper. 

### How to use

The library is really easy to use:

- Clone this repo (A pub package isn't available yet)
- Add dependency to your _pubspec.yaml_:

```yaml
dependencies:
  pixi2dart:
    version: any
    path: ../pixi2dart/
```

- Import the library:

```dart
import 'package:pixi2dart/pixi2dart.dart' as PIXI;
```

- Import the Pixi.js file into your html:

```html
<script src="packages/pixi2dart/js/pixi.js"></script>
```

That's it, you're ready to use Pixi.js APIs directly into your Dart code.

### Sample

Here's a copy of the Pixi.js sample using the pixi2dart port:

```dart
// You can use either `new PIXI.WebGLRenderer`, `new PIXI.CanvasRenderer`, or `PIXI.autoDetectRenderer`
// which will try to choose the best renderer for the environment you are in.
PIXI.SystemRenderer renderer = new PIXI.WebGLRenderer(800, 600);

// The renderer will create a canvas element for you that you can then insert into the DOM.
document.body.append(renderer.view);

// You need to create a root container that will hold the scene you want to draw.
PIXI.Container stage = new PIXI.Container.empty();

// This creates a texture from a 'bunny.png' image.
PIXI.Texture bunnyTexture = PIXI.Texture.fromImage('bunny.png');
PIXI.Sprite bunny = new PIXI.Sprite(bunnyTexture);

// Setup the position and scale of the bunny
bunny.position.x = 400;
bunny.position.y = 300;

bunny.scale.x = 2;
bunny.scale.y = 2;

// Add the bunny to the scene we are building.
stage.addChild(bunny);

// kick off the animation loop (defined below)
animate();

void animate() {
    // start the timer for the next animation loop
    window.animationFrame.then(animate);

    // each frame we spin the bunny around a bit
    bunny.rotation += 0.01;

    // this is the main render call that makes pixi draw your container and its children.
    renderer.render(stage);
}
```
