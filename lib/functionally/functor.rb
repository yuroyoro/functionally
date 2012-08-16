# -*- coding: utf-8 -*-
module Functionally::Functor
  def bind(f = nil,&block)
    return self.map(&block) if block_given?
    self.map(&f)
  end

  def self.included(klass)
    klass.send :alias_method, :>=, :bind
  end
end
