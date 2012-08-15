class Array
  include Functionally::Applicative
  include Functionally::Functor
  include Functionally::FlatMapSupport if RUBY_VERSION < '1.9.0'

  # Array#proc returns lambda that applies passed args to each included functions.
  def to_proc
    lambda{|_| self.map{|f| f.to_proc.call(_) }}
  end
end
