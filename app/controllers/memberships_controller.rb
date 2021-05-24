class MembershipsController < ApplicationController

    def show #"/memberships/:id"
        @membership = Membership.find(params[:id])
    end

    def new
        @membership = Membership.new
        @gyms = Gym.all
        @clients = Client.all
    end

    def create
        # byebug
        @membership = Membership.new(membership_params)

        if @membership.valid?
            @membership.save
            redirect_to @membership
        else
            redirect_to new_membership_path
        end
        
    end

    private

    def membership_params
        params.require(:membership).permit(:gym_id, :client_id, :charge)
    end

end
