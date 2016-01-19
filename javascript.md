## JavaScript code conventions

### Indentation
  
Do:

- 2 spaces indent
- No semi colons

Dont:

- Don't mix tabs and spaces
- Don't use comma-first coding style

### Function declarations

Use:

```javascript
var myfunc = function (x, y) {
    return x + y
}
```

### Variables

- Don't declare globals
- If a variable needs to be used across methods, assign it as a property of the constructor

### Whitespaces and newlines

- Do not, at whatever cost, leave trailing whitespaces. Fix your editor if needed
- Keep newline at EOF
- Use newlines liberally to visually separate logical blocks of code
