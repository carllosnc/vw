# VWReveal Widget

`VWReveal` is a custom widget that reveals its child widget with an animation. The direction of the animation and the delay before the animation starts can be customized.

## Properties

| Property    | Description                                                                               | Default                 |
| ----------- | ----------------------------------------------------------------------------------------- | ----------------------- |
| `child`     | The widget that will be revealed. This is a required property.                            | N/A                     |
| `direction` | The direction from which the child widget will be revealed. This is an optional property. | `VWRevealDirection.top` |
| `delay`     | The delay before the reveal animation starts. This is an optional property.               | N/A                     |

## Example

```dart
VWReveal(
  child: Text('Hello, World!'),
  direction: VWRevealDirection.bottom,
  delay: Duration(seconds: 1),
)
