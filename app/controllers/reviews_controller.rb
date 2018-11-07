class ReviewsController < ApplicationController

 def index
      @reviews = Review.all
      end

      def show
        @review = Review.find(params[:id])
      end

      def new
        @review = Review.new
      end

      def create
        Review.create(task_params)
        redirect_to review_path
      end

      def edit
      end

      def update
        @review.update(task_params)
        redirect_to review_path(@review)
      end

      def destroy
        @review.destroy
        redirect_to review_path
      end

      private

      def review_params
        params.require(:review).permit(:content, :rating, :references, :restaurant_id)
      end

      def find_review
        @review = Review.find(params[:id])
      end

end
