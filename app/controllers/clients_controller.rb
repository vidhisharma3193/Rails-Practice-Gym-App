class ClientsController < ApplicationController

    def index
        @clients = Client.all
    end

    def show
        @client = Client.find(params[:id])
    end

    def destroy
        @client = Client.find(params[:id])
        @client.memberships.destroy_all
        @client.destroy
        redirect_to clients_path
    end
end
