# -*- coding: utf-8 -*-
module Functionally::Applicative
  def self.included(klass)
    if RUBY_VERSION < '1.9.2'
      klass.send :alias_method,  :applicate, :__applicate
    else
      klass.send :alias_method,  :applicate, :__applicate_with_flatten
    end

    klass.send :alias_method,  :**, :applicate
    klass.send :alias_method,  '＜＊＞', :applicate
    klass.send :alias_method,  :>=, :applicate
  end

  def applies
    self.map(&:__!)
  end

  def __applicate(functors)
    if functors.respond_to? :map
      return self.flat_map{|_| functors.map{|f|
        f.respond_to?(:to_proc) ?  f.call(_) : f._!(_) }
      }
    end

    if functors.respond_to? :to_proc
      return self.flat_map{|_| functors.to_proc.call(_) }
    end
  end

  def __applicate_with_flatten(functors)
    if functors.respond_to? :map
      self.map{|_| functors.map{|f|
        f.respond_to?(:to_proc) ?  f.call(_) : f._!(_) }
      }.flatten(1)
    end

    if functors.respond_to? :to_proc
      return self.map{|_| functors.to_proc.call(_) }.flatten(1)
    end
  end
end
