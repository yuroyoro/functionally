class Array
  include Functionally::Applicative
  include Functionally::Functor
  include Functionally::FlatMapSupport if RUBY_VERSION < '1.9.0'

end
