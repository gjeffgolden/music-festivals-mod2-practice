class FestivalsController < ApplicationController

    def index
        @festivals = Festival.all
        render json: @festivals, include: :venue
    end

    def show
        @festival = Festival.find params[:id]
        render json: @festival, include: :venue
    end

    def create
        @festival = Festival.create name: params[:name], venue_id: params[:venue_id]
        render json: @festival
    end

    def update
        @festival = Festival.find params[:id] 
        @festival.update name: params[:name], venue_id: params[:venue_id]
        render json: @festival
    end

    def destroy
        @festival = Festival.find params[:id]
        @festival.destroy
    end


end
