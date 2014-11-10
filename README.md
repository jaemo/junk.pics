# junk dot pics

This is my GIF collection, and a small JSON/HTML frontend for it.

## Building

There is a Makefile included, which should simplify things greatly! It loops
over every file in the `images/` directory and creates a JSON manifest (at
`build/manifest`) as well as copies the `index.html` and `robots.txt` files
into `build`.

Simply upload `build` somewhere, and then point your webserver at it. That's it!
