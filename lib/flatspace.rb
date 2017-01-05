require 'sinatra'

module Flatspace

  # # # # # #
  # Flatspace Ruby app helpers
  # @homepage: https://github.com/fugroup/flatspace
  # @author:   Vidar <vidar@fugroup.net>, Fugroup Ltd.
  # @license:  MIT, contributions are welcome.
  # # # # # #

  class << self; attr_accessor :mode, :debug; end
  @mode = ENV['RACK_ENV'] || 'development'

end

require_relative 'flatspace/request'
