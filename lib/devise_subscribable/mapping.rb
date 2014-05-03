module DeviseSubscribable
  module Mapping
    def self.included(base)
      base.alias_method_chain :default_controllers, :subscribable
    end

    private
    def default_controllers_with_subscribable(options)
      options[:controllers] ||= {}
      default_controllers_without_subscribable(options)
    end
  end
end
