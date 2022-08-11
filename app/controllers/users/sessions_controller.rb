class Users::SessionsController < Devise::SessionsController
    respond_to :json
    prepend_before_action :verify_signed_out_user, only: :destroy
  
    private
  
    def respond_with(_resource, _opts = {})
      render json: {
        message: 'You are logged in.',
        user: current_user
      }, status: :ok
    end
  
    def respond_to_on_destroy
      log_out_success && return if current_user
  
      log_out_failure
    end
  
    def log_out_success
      render json: { message: 'You are logged out.' }, status: :ok
    end
  
    def log_out_failure
      render json: { message: 'Hmm nothing happened.' }, status: :unauthorized
    end

    

    private
    def verify_signed_out_user
      if all_signed_out?
        set_flash_message! :notice, :already_signed_out
  
        respond_to_on_destroy
      end
    end

    def all_signed_out?
      users = Devise.mappings.keys.map { |s| warden.user(scope: s, run_callbacks: false) }
  
      users.all?(&:blank?)
    end
  end