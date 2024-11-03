# VWSheetExtension

A extension that provides a method to open a bottom sheet.

VWSheet is a floating page, which means that it is not a full-screen page, but a page that floats above the current page. It extends the `BuildContext` object and provides a method to open a new page.

| Method      | Description               |
| ----------- | ------------------------- |
| `openSheet` | Opens a new bottom sheet. |

## open method

| Parameter | Type   | Description                                                                           |
| --------- | ------ | ------------------------------------------------------------------------------------- |
| `appBar`  | AppBar | The header of the page.                                                               |
| `body`    | Widget | The body of the page.                                                                 |
| `level`   | int    | define page height based on the level, can be used when have `VMPage` inside `VMPage` |

Returns a `Future<dynamic>` that completes when the bottom sheet is dismissed.

Example usage:

```dart
FilledButton(
  child: Text('Open page'),
  onPressed: (){
    context.openSheet(
      appBar: AppBar(
        title: Text('Page Title'),
      ),
      body: Center(
        child: Text('Hello, World!'),
      ),
    );
  }
)
```

Multi-level page example:

```dart
FilledButton(
  child: const Text('Open first page'),
  onPressed: () {
    context.openSheet(
      level: 1,
      appBar: AppBar(
        title: const Text('First page'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('first back'),
          )
        ],
      ),
      body: Center(
        child: FilledButton(
          child: const Text('open second page'),
          onPressed: () {
            context.openSheet(
              level: 2,
              appBar: AppBar(
                title: const Text('Second page'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('second back'),
                  )
                ],
              ),
              body: const Center(
                child: Text('End'),
              ),
            );
          },
        ),
      ),
    );
  },
)
```