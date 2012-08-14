class Proc
  include Functionally::Composable
  include Functionally::Currying if RUBY_VERSION < '1.9.0'
  include Functionally::Flipable
  include Functionally::ToProcSupport

  alias_method :^, :curry
end
