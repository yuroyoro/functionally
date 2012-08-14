module Functionally::ToProcSupport
  def call(*args)
    self.to_proc.call(*args)
  end

  def self.included(klass)
    klass.send(:alias_method, :_f, :to_proc)
    klass.send(:alias_method, :_, :to_proc)
  end
end
