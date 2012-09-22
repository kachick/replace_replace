# Copyright (c) 2012 Kenichi kamiya

class Array

  alias_method :replace_all, :replace

  # @return [self]
  def replace(index_or_array, *rests)
    arity = 1 + rests.length

    case arity
    when 1
      replace_all index_or_array
    when 2
      fetch index_or_array
      self[index_or_array] = rests.first
      self
    else
      raise ArgumentError,
        "wrong number of arguments (#{arity} for 1..2)"
    end
  end

  def replace!(index_or_array, *rests)
    replace index_or_array, *rests
  rescue Exception
    nil
  end

end


class Hash

  alias_method :replace_all, :replace

  # @return [self]
  def replace(key_or_hash, *rests)
    arity = 1 + rests.length

    case arity
    when 1
      replace_all key_or_hash
    when 2
      fetch key_or_hash
      self[key_or_hash] = rests.first
      self
    else
      raise ArgumentError,
        "wrong number of arguments (#{arity} for 1..2)"
    end
  end

  def replace!(key_or_hash, *rests)
    replace key_or_hash, *rests
  rescue Exception
    nil
  end

end
