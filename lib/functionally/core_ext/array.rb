class Array
  include Functionally::Applicative
  include Functionally::Functor

  def to_proc
    lambda{|_| self.map{|f| f.to_proc.call(_) }}
  end
end
