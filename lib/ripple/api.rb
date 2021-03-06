require File.expand_path('../connection', __FILE__)
require File.expand_path('../request', __FILE__)

module Ripple
  # @private
  class API
    include Connection
    include Request
    
    # @private
    attr_accessor *Configuration::VALID_OPTIONS_KEYS

    # Creates a new API
    def initialize(options = {})
      options = Ripple.options.merge(options)
      Configuration::VALID_OPTIONS_KEYS.each do |key|
        send("#{key}=", options[key])
      end
    end
  end
end
