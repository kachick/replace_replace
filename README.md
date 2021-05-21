replace_replace
==================

* ***This repository is archived***
* ***No longer maintained***
* ***All versions have been yanked from https://rubygems.org/ for releasing valuable namespace for others***

Description
-----------

Improve API around {Hash,Array}#replace.
See [my gist](https://gist.github.com/3774165).

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

* [Ruby 2.5 or later](http://travis-ci.org/#!/kachick/replace_replace)

Link
----

* [code](https://github.com/kachick/replace_replace)

License
--------

The 2-clause BSD License  
Copyright (c) 2012 Kenichi Kamiya  
See BSD-LICENSE for further details.
