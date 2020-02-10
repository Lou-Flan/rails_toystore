class ToysController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]

    def index
        @toys = Toy.all
    end

    def create
        @toy = Toy.create(toy_params)
        if @toy.errors.any?
            render "new" #render the new template
        else
            redirect_to toys_path #toys is the prefix for toys#index. use _path after prefixes to go to that location
        end

    end

    def new
        @toy = Toy.new
    end

    def show
    end

    def update
        if @toy.update(toy_params)
            redirect_to @toy
        else
            render "edit"
        end
    end

    def destroy
        @toy.destroy
        redirect_to toys_path
    end

    def edit #method uses same code as show, this is the edit page not the method to actually edit it
    end

  private

    def set_listing
        id = params[:id]
        @toy = Toy.find(id)
         # @listing = Listing.find(params[:id]) params show up in the server console
    end

    def toy_params
        params.require(:toy).permit(:name, :description, :user)
    end

  end

