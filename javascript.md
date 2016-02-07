## JavaScript

## Code style

- **2 spaces** – for indentation
- **Don't mix tabs and spaces**
- **Single quotes for strings** – except to avoid escaping
- **No unused variables**
- **No semicolons**
- **Never start a line with `(` or `[`**
  - This is the **only** gotcha with omitting semicolons
- **Space after keywords** `if (condition) { ... }`
- **Space after function name** `function name (arg) { ... }`
- Always use `===` instead of `==` – but `obj == null` is allowed to check `null || undefined`
- Always handle the node.js `err` function parameter
- **Don't declare globals**
- Do not, at whatever cost, leave trailing whitespaces. Fix your editor if needed
- Keep newline at EOF
- Use newlines liberally to visually separate logical blocks of code

## Log style

- **[TIMESTAMP] [MASTER/WORKER WORKER_NUMBER] [INTERNAL MODULE NAME] Log message**
- Use log levels appropriately **console.log || console.error || console.warn**

> Run `npm test` before committing. If it throws any error, fix it!
