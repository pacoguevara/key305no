module Api
	module V1
		class UsersController < ApplicationController
			respond_to :json

      def create
        clean_params params
        respond_with User.create(user_params)
      end

      def clean_params params
        if params[:role] == 'patient'
          params[:clinic_id] = current_user.clinic_id
          params[:password] = SecureRandom.hex(4)
        end
      end

      def user_params
        params.permit(:first_name, :last_name, :email,
        :phone, :address, :role, :clinic_id, :password)
      end

    end
  end
end
