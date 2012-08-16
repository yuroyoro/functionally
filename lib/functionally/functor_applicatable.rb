module Functionally::FunctorApplicatable

  def fmap(m)
    __flat_map(m, self)
  end

  def self.included(klass)
    klass.send(:include, Functionally::Utils)
    klass.send :alias_method, :<=, :fmap
  end
end
