## `VWIf`

A widget that conditionally displays either the `ifTrue` or `ifFalse` widget based on a boolean condition.

### Usage
```dart
VWIf(
  condition: true,
  ifTrue: const Text('If True'),
  ifFalse: const Text('If False'),
)
```

## Properties

| Property    | Type      | Description                                                               | Default  |
| ----------- | --------- | ------------------------------------------------------------------------- | -------- |
| `condition` | `bool`    | A boolean value that determines whether the `ifTrue` widget is displayed. | required |
| `ifTrue`    | `Widget`  | The widget that is displayed when the `condition` is true.                | required |
| `ifFalse`   | `Widget?` | The widget that is displayed when the `condition` is false.               | null     |
