class VenuesController < ApplicationController

    def index
        @venues = Venue.all
        render json: @venues, include: :festivals
    end

    def show
        @venue = Venue.find(params[:id])
        render json: @venue, include: :festivals
    end

    def create
        @venue = Venue.create name: params[:name], location: params[:location], image: params[:image]
        render json: @venue
    end

    def update
        @venue = Venue.find params[:id]
        @venue.update name: params[:name], location: params[:location], image: params[:image]
        render json: @venue
    end

    def destroy
        @venue = Venue.find params[:id]
        @venue.destroy
        render json: "#{@venue} deleted."
    end

end
