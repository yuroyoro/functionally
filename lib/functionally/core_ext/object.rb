class Object
  include Functionally::Applicable

  alias_method :_m, :method
  alias_method :~, :method
end
