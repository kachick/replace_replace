# coding: us-ascii

require_relative 'helper'

class Test_Hash_NewerReplace < Test::Unit::TestCase

  def test_original
    base = [1, 2, 3]
    assert_same base, base.replace([4, 5, 6]) 
    assert_equal [4, 5, 6], base

    assert_raises TypeError do
      base.replace 1
    end
  end

  def test_extended
    base = [1, 2, 3]
    assert_same base, base.replace(1, 7)
    assert_equal [1, 7, 3], base

    assert_equal [1, 2, 7], [1, 2, 3].replace(-1, 7)
    assert_raises IndexError do
      [1, 2, 3].replace(3, 8) 
    end
  end
end



class Test_Array_NewerReplace < Test::Unit::TestCase
  
  def test_original
    base = {a: 1, b: 2}
    assert_same base, base.replace({c: 3, d: 4}) 
    assert_equal({c: 3, d: 4}, base)

    assert_raises TypeError do
      base.replace 1
    end
  end

  def test_extended
    base = {a: 1, b: 2}
    assert_same base, base.replace(:a, 5)
    assert_equal({:a=>5, :b=>2}, base)

    base = {a: 1, b: 2}
    assert_same base, base.replace(:b, 6)
    assert_equal({:a=>1, :b=>6}, base)

    assert_raises KeyError do
      {a: 1, b: 2}.replace(:c, 7)
    end
  end

end
