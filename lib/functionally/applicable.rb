# -*- coding: utf-8 -*-
module Functionally::Applicable

  def apply(f = nil, &block)
    return block.call(self) if block_given?
    f.to_proc.call(self) if __function_or_raise!(f)
  end

  def to_apply
    !(self._ :apply)
  end

  def self.included(klass)
    klass.send(:include, Functionally::Utils)
    klass.send :alias_method,  :_!, :apply
    klass.send :alias_method,  :__!, :to_apply
  end
end
