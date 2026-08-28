require 'active_support/core_ext/class/attribute'

module TheNotification
  def self.configure(&block)
    yield @config ||= TheNotification::Configuration.new
  end

  def self.config
    @config
  end

  # Configuration class
  class Configuration
    class_attribute :default_type, instance_predicate: false
  end

  configure do |config|
    config.default_type = :html # :json
  end
end
