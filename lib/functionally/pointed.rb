module Functionally::Pointed
  # TODO default implementation is Array.
  # It should be inject type-class instance as Pointed.
  def pointed
    self.nil? ? [] : [self]
  end
end
