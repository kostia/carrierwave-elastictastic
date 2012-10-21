# Elastictastic support for CarrierWave

[CarrierWave](https://github.com/jnicklas/carrierwave/)

[Elastictastic](https://github.com/brewster/elastictastic/)

## Installation

```ruby
gem 'carrierwave-elastictastic', require: 'carrierwave/orm/elastictastic'
```

## Getting Started

Follow the "Getting Started" directions in the main
[Carrierwave repository](https://raw.github.com/jnicklas/carrierwave/).

Add the field to the list for mass assignment protection:

```ruby
class User
    include Elastictastic::Document

    attr_accessible :avatar
end
```

Now you can cache files by assigning them to the attribute; they will
automatically be stored when the record is saved. Ex:

```ruby
u = User.new
u.avatar = File.open 'somewhere'
u.save!
```

## License

Copyright (c) 2008-2012 Kostiantyn Kahanskyi

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
