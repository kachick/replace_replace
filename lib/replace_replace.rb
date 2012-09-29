# Copyright (c) 2012 Kenichi kamiya

# depend #replace_all, #fetch
module Replace_Replace

  # @overload replace(family)
  #   @param [Hash, Array] family
  # @overload replace(key_or_index, value)
  #   @param key_or_index
  # @return [self]
  def replace(key_or_family, *rests)
    arity = 1 + rests.length

    case arity
    when 1
      replace_all key_or_family
    when 2
      begin
        fetch key_or_family
      rescue
        $@.shift
        raise
      end

      self[key_or_family] = rests.first
      self
    else
      raise ArgumentError,
        "wrong number of arguments (#{arity} for 1..2)"
    end
  end

end
