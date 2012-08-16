# -*- coding: utf-8 -*-
module Functionally::Applicative
  def self.included(klass)
    klass.send :alias_method,  :**, :applicate
    klass.send :alias_method,  :>, :ap
  end

  def applies
    self.map(&:__!)
  end

  def applicate(functors)
    __flat_map(self.applies, functors._m(:>=))
  end

  def ap(functors)
    __flat_map(self, functors._m(:>=))
  end
end
