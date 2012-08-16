module Functionally::CallableFunctor
  def map(&f)
    self.(f)
  end
end
