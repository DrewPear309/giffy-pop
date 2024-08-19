# Fullscreen Animated GIF Slideshow

A simple, customizable fullscreen slideshow application that automatically displays an unlimited number of GIFs from a single folder.

## Features

- Fullscreen display of GIFs
- Automatic cycling through GIFs in a specified folder
- Customizable number of GIFs to display

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/fullscreen-gif-slideshow.git
   ```
2. Navigate to the project directory:
   ```
   cd fullscreen-gif-slideshow
   ```

## Usage

1. Place your GIF files in the `gifs` folder within the project directory.
2. Open `index.html` in your web browser.
3. The slideshow will start automatically, displaying your GIFs in fullscreen mode.

## Configuration

Burger icon in upper right corner opens menu to adjust speed, pause slideshow, and move back 1 gif.

You can customize the number of GIFs to display by modifying line 102.

```javascript
const numberOfGifs = 15; // Change this number to set the desired number of GIFs
```

## Requirements

- Modern web browser with JavaScript enabled
- GIF files in the specified folder

## License

This project is open source and available under the [MIT License](LICENSE).
