require_relative '../replace_replace'

class Array

  alias_method :replace_all, :replace
  remove_method :replace

  include Replace_Replace

end


class Hash

  alias_method :replace_all, :replace
  remove_method :replace

  include Replace_Replace

end
