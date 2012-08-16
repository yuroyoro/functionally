class Proc
  include Functionally::Composable
  include Functionally::Currying if RUBY_VERSION < '1.9.0'
  include Functionally::Flipable
  include Functionally::ToProcSupport
  include Functionally::CallableFunctor
  include Functionally::Functor
  include Functionally::FunctorApplicatable

  alias_method :%, :curry
  alias_method :<, :call
end
