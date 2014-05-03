module DeviseSubscribable
  autoload :Mapping, 'devise_subscribable/mapping'
end

require 'devise'
require 'devise_subscribable/routes'
require 'devise_subscribable/rails'

module Devise
  # TODO: Add instance accessors
end

Devise.add_module :subscribable, :controller => :subscribes,
                  :model => 'devise_subscribable/model',
                  :route => {:subscribe => []}
