# VWBox

The `VWBox` is a custom widget that allows you to create a box with a background image, gradient, blur effect, and shadow. It is a very flexible widget that can be used to create a variety of UI components.

## Features

- Solid color
- Gradiend color
- Shadow
- Blur effect with gradient and images
- Image background
- Custom border radius
- Width, height, padding, margin

## Usage

```dart
VWBox(
  backgroundImage: const NetworkImage('/path/to/image.png'),
  height: 120,
  width: double.infinity,
  onTap: () {},
  blurEffect: 5,
  gradient: const LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [
      Colors.transparent,
      Colors.black,
    ],
  ),
  padding: const EdgeInsets.all(20),
  borderRadius: BorderRadius.circular(10),
  splashColor: Colors.white.withOpacity(0.2),
  border: Border.all(
    color: Colors.white.withOpacity(1),
    width: 1,
  ),
  child: const Text(
    'Background image with gradient and blur ',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
)
```

## Properties

| Property          | Type            | Description                              |
| ----------------- | --------------- | ---------------------------------------- |
| `backgroundImage` | `ImageProvider` | The image to be used as background       |
| `height`          | `double`        | The height of the box                    |
| `width`           | `double`        | The width of the box                     |
| `onTap`           | `Function`      | The function to be called on tap         |
| `onDoubleTap`     | `Function`      | The function to be called on double tap  |
| `onLongPress`     | `Function`      | The function to be called on long press  |
| `blurEffect`      | `double`        | The blur effect of the box               |
| `gradient`        | `Gradient`      | The gradient of the box                  |
| `padding`         | `EdgeInsets`    | The padding of the box                   |
| `margin`          | `EdgeInsets`    | The margin of the box                    |
| `borderRadius`    | `BorderRadius`  | The border radius of the box             |
| `splashColor`     | `Color`         | The splash color trigged after tap event |
| `border`          | `Border`        | The border of the box                    |
| `child`           | `Widget`        | The child of the box                     |

Some observations:

- gradient has priority over color
- gradient has priority over imageBackground but both can coexist together if gradient use transparent color
