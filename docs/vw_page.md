## VWPage

A sealed class that provides a method to open a new page.

VWPage is a floating page, which means that it is not a full-screen page, but a page that floats above the current page.

| Method | Description       |
| ------ | ----------------- |
| `open` | Opens a new page. |

### open method

| Parameter | Type         | Description                                                                           |
| --------- | ------------ | ------------------------------------------------------------------------------------- |
| `appBar`  | AppBar       | The header of the page.                                                               |
| `context` | BuildContext | The BuildContext of the page.                                                         |
| `body`    | Widget       | The body of the page.                                                                 |
| `level`   | int          | define page height based on the level, can be used when have `VMPage` inside `VMPage` |

Returns a `Future<dynamic>` that completes when the bottom sheet is dismissed.

Example usage:

```dart
FilledButton(
  child: Text('Open page'),
  onPressed: (){
    VWPage.open(
      appBar: AppBar(
        title: Text('Page Title'),
      ),
      context: context,
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
    VWPage.open(
      level: 1,
      context: context,
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
            VWPage.open(
              level: 2,
              context: context,
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

