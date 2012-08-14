# -*- coding: utf-8 -*-
module Functionally::Applicable
  def _!(f)
    return f.to_proc.call(self) if f.respond_to?(:to_proc)
    raise TypeError, "wrong type for apply function.#{f.class}"
  end


  def self.included(klass)
    klass.send :alias_method,  '｜＞', :_!
    klass.send :alias_method,  :applies, :_!
  end
end
