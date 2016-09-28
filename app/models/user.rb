class User < ActiveRecord::Base
    def create_user!(user_params)
        user_params[:sessions_token]=SecureRandom.base64
        User.create!(user_params)
    end
end