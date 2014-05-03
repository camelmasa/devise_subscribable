module ActionDispatch::Routing
  class Mapper

  protected
    def devise_subscribe(mapping, controllers)
      resource :subscribe, :only => [:unsubscribe] do
        get :update, :controller => controllers[:subscribes],
            :path => mapping.path_names[:unsubscribe], :as => :unsubscribe
      end
    end
  end
end
