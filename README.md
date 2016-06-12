# Drawing Pascal' Triangle

Calculate Pascal's Triangle and draw the triangle depending on the mod of the given number.
Generated patterns are known to resemble the Sierpinski gasket.

https://en.wikipedia.org/wiki/Pascal%27s_triangle

## Prerequisites

Install ruby 1.9 or later and [bundler](http://bundler.io/) gem.
To install bundler gem, run the following command

```
gem install bundler
```

After you installed bundler, then run `bundle` command to install the dependent library.

```
bundle
```

## Usage

Run the command as follows and you'll find the image file `pascal_triangle.png`.

```
ruby pascal_triangle.rb 400 20 2
```

The arguments indicate the number of rows in the Pascal's triangle, the number to take modulo, and pixel size of each element.


## License

The MIT License (MIT)

Copyright (c) 2016 Yohsuke Murase

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

