***Golang style guide***

Twelve best practices for Golang

1. Avoid nesting by handling errors first
2. Avoid repetition when possible
3. Important code goes first
4. Document your code
5. Shorter is better
6. Packages with multiple files
7. Make your packages "go get"-able
8. Ask for what you need
9. Keep independent packages independent
10. Avoid concurrency in your API
11. Use goroutines to manage state
12. Avoid goroutine leaks 

You can read more [here](https://talks.golang.org/2013/bestpractices.slide#1)

**Documentation**

The convention is simple: to document a type, variable, constant, function, or even a package, write a regular
comment directly preceding its declaration, with no intervening blank line. Godoc will then present that comment as 
text alongside the item it documents. For example

```
// Fprint formats using the default formats for its operands and writes to w.
// Spaces are added between operands when neither is a string.
// It returns the number of bytes written and any write error encountered.
func Fprint(w io.Writer, a ...interface{}) (n int, err error) {
```

Comments on package declarations should provide general package documentation. These comments can be short
```
// Package sort provides primitives for sorting slices and user-defined
// collections.
package sort
```

Comments that are not adjacent to a top-level declaration are omitted from godoc's output, with one notable exception. 
Top-level comments that begin with the word `BUG(who)` are recognized as known bugs, and included in the 
"Bugs” section of the package documentation. The "who” part should be the user name of someone who could provide 
more information. For example, this is a known issue from the bytes package:

`// BUG(Nanda): The Invite function has expiry bug`

Some formatting rules are as follows :
1. Subsequent lines of text are considered part of the same paragraph; you must leave a blank line 
   to separate paragraphs.
2. Pre-formatted text must be indented relative to the surrounding comment text
3. URLs will be converted to HTML links; no special markup is necessary.
4. If the documentation is large the consider adding a separate file called doc.go in the project. Example [doc.go](https://golang.org/src/encoding/gob/doc.go)
5. Try to keep the types grouped together at top of the file

Always optimise the documentation for [godoc](https://godoc.org/golang.org/x/tools/cmd/godoc)

Some additional resources :
1. [Go Blog](https://blog.golang.org/godoc-documenting-go-code) defining some documentation practices
2. A short [Style Guideline Blog](https://rakyll.org/style-packages/) outlining some basic guidelines for writing code
3. Extensive [document](https://golang.org/doc/effective_go.html) with tips to write clear idiomatic Go code.
4. [Patterns](https://github.com/tmrts/go-patterns) wrt to Go
5. List of [Awesome Go](https://github.com/avelino/awesome-go) projects / packages