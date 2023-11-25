## VWPage

A sealed class that provides a method to open a new page.

VWPage is a floating page, which means that it is not a full-screen page, but a page that floats above the current page.

| Method | Description       |
| ------ | ----------------- |
| `open` | Opens a new page. |

### open method

| Parameter | Type         | Description                   |
| --------- | ------------ | ----------------------------- |
| `appBar`  | AppBar       | The header of the page.       |
| `context` | BuildContext | The BuildContext of the page. |
| `body`    | Widget       | The body of the page.         |

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