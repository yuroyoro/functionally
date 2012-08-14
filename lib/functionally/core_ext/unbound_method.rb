class UnboundMethod
  def to_proc
    lambda {|s, *xs|
      self.bind(s).(*xs)
    }
  end

  include Functionally::Composable
  include Functionally::Currying if RUBY_VERSION < '1.9.0'
  include Functionally::CurryingSupport
  include Functionally::Flipable
  include Functionally::ToProcSupport
end
