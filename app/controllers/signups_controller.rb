class SignupsController < ApplicationController

    def create
        signup = Signup.create(camper_id: params[:camper_id], activity_id: params[:activity_id], time: params[:time])
        if signup.valid?
            render json: signup.activity, status: :created
        else
            render json: { errors: ["validation errors"] }, status: :unprocessable_entity
        end
    end
end
