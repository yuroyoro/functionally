# -*- coding: utf-8 -*-
module Functionally::Functor
  def fmap(ma)
    return ma.map{|_|
      _.respond_to?(:to_proc) ?  self.to_proc.call(_) : _._!(self.to_proc)
    }.flatten(1) if ma.respond_to? :map
    raise TypeError, "wrong type for fmap. it does not respond to flat_map. #{ma.class}"
  end

  def self.included(klass)
    klass.send :alias_method, :^, :fmap
    klass.send :alias_method, '＜＄＞', :fmap
    klass.send :alias_method, :<=, :fmap
  end
end
