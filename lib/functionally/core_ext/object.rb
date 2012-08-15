class Object
  include Functionally::Applicable
  include Functionally::Pointed

  alias_method :_m, :method
  alias_method :~, :method
end
