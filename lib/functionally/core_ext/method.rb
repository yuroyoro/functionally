class Method
  include Functionally::Composable
  include Functionally::Currying if RUBY_VERSION < '1.9.0'
  include Functionally::CurryingSupport
  include Functionally::Flipable
  include Functionally::ToProcSupport
  include Functionally::CallableFunctor
  include Functionally::Functor
  include Functionally::FunctorApplicatable
end
