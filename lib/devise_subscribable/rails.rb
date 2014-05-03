module DeviseSubscribable
  class Engine < ::Rails::Engine

    # extend mapping with after_initialize becuase is not reloaded
    config.after_initialize do
      Devise::Mapping.send :include, DeviseSubscribable::Mapping
    end
  end
end
