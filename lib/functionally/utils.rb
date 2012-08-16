module Functionally::Utils

  def __flat_map(m, f = nil, &block)
    __functor_or_raise!(m) && __function_or_raise!(f)
    m.respond_to?(:flat_map) ?  m.flat_map(&f) : m.map(&f).flatten(1)
  end

  def __functor?(m)
    m.respond_to? :flat_map || (m.respond_to?(:map) && m.respond_to?(:flatten))
  end

  def __functor_or_raise!(m)
    raise TypeError, "#{m.class} isn't functor."  unless __functor?(m)
    true
  end

  def __function?(f)
    f.respond_to? :to_proc
  end

  def __function_or_raise!(f)
    raise TypeError, "#{f.class} isn't function."  unless __function?(f)
    true
  end
end
