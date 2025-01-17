 class Api::ReviewsController < ApplicationController

    def index 
        reviews = Review.all
        render json: reviews
    end 

    def show 
        review = Review.find(params[:id])
        render json: review 
    end

    def create 
        review = Review.create!(create_params)
        render json: review.location, status: :created
    end

    def destroy
        review = find_params
        review.destroy 
        head :no_content 
    end 
    def update 
        review = Review.find_by(id: params[:id])
        review.update(create_params)
        render json: review
    end

    private 

    def create_params
        params.require(:review).permit(:rating, :comments, :location_id, :user_id)

    end

    def find_params 
        Review.find(params[:id])
    end

end
