class GymsController < ApplicationController

    def index
        @gyms = Gym.all
    end

    def show #"/gyms/:id"
        @gym = Gym.find(params[:id])
    end

    def destroy
        @gym = Gym.find(params[:id])
        @gym.memberships.destroy_all
        @gym.destroy
        redirect_to gyms_path
    end
end
