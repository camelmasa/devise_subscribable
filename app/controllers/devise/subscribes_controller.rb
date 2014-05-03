class Devise::SubscribesController < DeviseController

  # GET /resource/subscribe/unsubscribe?unsubscribe_token=abcdef
  def update
    unless params[:unsubscribe_token] && self.resource = resource_class.find_by_unsubscribe_token(params[:unsubscribe_token])
      set_flash_message(:alert, :unsubscribe_token_invalid)
      return redirect_to after_sign_out_path_for(resource_name)
    end
    resource.update_column :subscribe, false
  end
end

