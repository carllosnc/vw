# VWModal

`VWModal` is a modal component that can be used to display a modal on the screen.

## Parameters

| Property       | Type           | Description                                                |
|----------------|----------------|------------------------------------------------------------|
| `context`      | `BuildContext` | The build context of the page.                             |
| `body`         | `Widget`       | The body of the dialog.                                    |
| `insetPadding` | `EdgeInsets`   | The padding of the dialog. Defaults to EdgeInsets.all(30). |

## Methods

| Method            | Description                     |
|-------------------|---------------------------------|
| `VWModal.open()`  | Opens the modal on the screen.  |
| `VWModal.close()` | Closes the modal on the screen. |

## Usage

```dart
FilledButton(
  onPressed: () {
    VWModal.open(
      context: context,
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: FilledButton(
            onPressed: () {
              VWModal.close(context);
            },
            child: const Text('Close'),
          ),
        ),
      ),
    );
  },
  child: const Text('Open Dialog'),
)
```