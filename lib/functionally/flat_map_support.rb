module Functionally::FlatMapSupport
  def flat_map(&block)
    # TODO return Enumerator unless block
    self.map(block).flatten(1) if block_given?
  end
end
