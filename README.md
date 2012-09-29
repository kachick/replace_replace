replace_replace
==================

Description
-----------

Improve API around Hash#replace, Array#replace.
The reason is described in [my gist](https://gist.github.com/3774165).

```plaintext
get
====
        |Array  |Hash
-----------------------
strict  |fetch  |fetch
auto    |[], at |[]


set
====
        |Array  |Hash
-----------------------
strict  |?       |?             => Provide this.
auto    |[]=     |[]=, store
```

Features
--------

* Strict replacement methods into Hash, Array
* Pure Ruby :)

Usage
-----

### Overview

```ruby
require 'replace_replace/core_ext'

[1, 2, 3].replace [4, 5, 6]          #=> [4, 5, 6]
[1, 2, 3].replace 1, 7               #=> [1, 7, 3]
[1, 2, 3].replace 3, 8               #=> IndexError


({a: 1, b: 2}.replace({c: 3, d: 4})) #=> {:c=>3, :d=>4}
({a: 1, b: 2}.replace(:a, 5))        #=> {:a=>5, :b=>2}
({a: 1, b: 2}.replace(:c, 7))        #=> KeyError
```

Requirements
-------------

* Ruby - [1.9.2 or later](http://travis-ci.org/#!/kachick/replace_replace)

Install
-------

```bash
$ gem install replace_replace
```

Build Status
-------------

[![Build Status](https://secure.travis-ci.org/kachick/replace_replace.png)](http://travis-ci.org/kachick/replace_replace)

Link
----

* [code](https://github.com/kachick/replace_replace)
* [API](http://kachick.github.com/replace_replace/yard/frames.html)
* [issues](https://github.com/kachick/replace_replace/issues)
* [CI](http://travis-ci.org/#!/kachick/replace_replace)
* [gem](https://rubygems.org/gems/replace_replace)

License
--------

The 2-clause BSD License  
Copyright (c) 2012 Kenichi Kamiya  
See BSD-LICENSE for further details.

