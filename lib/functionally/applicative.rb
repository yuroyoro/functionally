# -*- coding: utf-8 -*-
module Functionally::Applicative
  def self.included(klass)
    if RUBY_VERSION < '1.9.2'
      klass.send :alias_method,  :**, :__applicative_with_flatten
      klass.send :alias_method,  '＜＊＞', :__applicative_with_flatten
    else
      klass.send :alias_method,  :**, :__applicative
      klass.send :alias_method,  '＜＊＞', :__applicative
    end
  end

  private
    def __applicative(functors)
      self.flat_map{|_| functors.map{|f| f.call(_)}}
    end

    def __applicative_with_flatten(functors)
      self.map{|_| functors.map{|f| f.call(_)}}.flatten(1)
    end
end
