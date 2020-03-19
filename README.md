# LTemplater
LTemplater (Lukas' own templater), a templating utility written in Lua

This utility does just one thing: It takes the input piped into it and renders a
template based on the input lines.

## Example

Use `cat` to pipe the lines in `data.txt` to be rendered using `template.html`
as template. The output is written in this case to `redered.html`

```bash
cat data.txt | lua main.lua template.html > rendered.html
```
