$VERBOSE = true

require_relative '../lib/replace_replace/core_ext'

p [1, 2, 3].replace [4, 5, 6]         #=> [4, 5, 6]
p [1, 2, 3].replace 1, 7              #=> [1, 7, 3]
p [1, 2, 3].replace -1, 7             #=> [1, 2, 7]
#p [1, 2, 3].replace 3, 8             #=> IndexError


p({a: 1, b: 2}.replace({c: 3, d: 4})) #=> {:c=>3, :d=>4}
p({a: 1, b: 2}.replace(:a, 5))        #=> {:a=>5, :b=>2}
p({a: 1, b: 2}.replace(:b, 6))        #=> {:a=>1, :b=>6}
#p({a: 1, b: 2}.replace(:c, 7))       #=> KeyError