class RandomSymbolsController < ApplicationController
  def index
    # ruby_symbols = RubySymbol.all
    # @random_item = ruby_symbols.order('RANDOM()').limit(1).first

    @random_item = RubySymbol.all.sample

  end
end



