# Bookmarklet Generator

This is a simple bookmarklet generator, which takes a JavaScript file and creates a Bookmarklet.

## Dependencies

- **Lua** (The language that this application is written in)
- **Prettier** (A code formatter to insert the `;` character into the JavaScript where needed)

## Usage

1. Clone this repository with `git clone ...`
2. Create a JavaScript file with the `.js` file extension
3. Format the file with Prettier (this inserts semicolons, which are needed for a valid bookmarklet)
4. Run the script!

    ```shell
    lua main.lua <js-file-name>
    ```

> The resulting Bookmarklet is written to a text file, which can then be copied and pasted into the browser's "Add Bookmark" window as the URL.

## How do I add the Bookmarklet to my browser?

After you create your bookmarklet one-liner JavaScript file, you'll probably want to add it to the browser so you can use it. Once created, you can run the JavaScript code like any other usual link by just clicking the bookmark.

### Google Chrome

> 1. Navigate to the URL [chrome://bookmarks/](https://chrome://bookmarks/)
> 2. On the top right of Bookmarks page's navbar, click the hamburger icon
> 3. Select "Add new bookmark"
> 4. Enter the following information:
>    1. Name: What you would like your bookmark title text to say
>    2. URL: Insert your Bookmarklet JavaScript code, which was outputted to the file ```{{Your File's Name}}.js.bookmarklet.txt```
> 5. Click "Save"

### Microsoft Edge

> 1. Navigate to the URL [edge://favorites/](https://edge://favorites/)
> 2. On the upper right of the Favorites page, click "_Add favorite_"
> 3. Enter the following information:
>    1. Name: What you would like your bookmark title text to say
>    2. URL: Insert your Bookmarklet JavaScript code, which was outputted to the file ```{{Your File's Name}}.js.bookmarklet.txt```
> 4. Click "Save"

### Firefox

> 1. Press "_Ctrl + Shift + O_" to open the Library
> 2. Click "Organize", then "New Bookmark"
> 3. Enter the following information:
>    1. Name: What you would like your bookmark title text to say
>    2. Location: Insert your Bookmarklet JavaScript code, which was outputted to the file ```{{Your File's Name}}.js.bookmarklet.txt```
> 4. Click "Add"

### Brave

> 1. Navigate to the URL [brave://bookmarks/](brave://bookmarks/)
> 2. On the top right of Bookmarks page under the navbar, click the hamburger icon
> 3. Select "Add new bookmark"
> 4. Enter the following information:
>    1. Name: What you would like your bookmark title text to say
>    2. URL: Insert your Bookmarklet JavaScript code, which was outputted to the file ```{{Your File's Name}}.js.bookmarklet.txt```
> 5. Click "Save"
