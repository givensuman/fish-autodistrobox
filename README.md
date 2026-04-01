<div align="center">
  <img alt="fish-eza" src="./assets/logo.png" height="200" />
</div>

# fish-peek

A fish plugin for filesystem traversal.

### Pitch

Let's say you want to `cat` a configuration file. You know it's somewhere in "~/.config/xyz", so you run `ls ~/.config/xyz`. Looks like there's another folder in there called "configs", so you press the up arrow to repeat and add "/configs". Then you see the file you want, but pressing the up arrow prefixes the next command with `ls`... so you either go back to the start of rewrite the whole filepath.

### Installation

Install with [fisher](https://github.com/jorgebucaran/fisher):

```shell
fisher install givensuman/fish-peek
```

### Usage

Runs `ls` if pointed to a directory, `cat` if pointed to a file. Passes all arguments along as well.

### License

[MIT](./LICENSE)
