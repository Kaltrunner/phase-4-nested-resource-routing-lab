class ItemsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :item_not_found_error

  def index
    items = Item.all
    render json: items, include: :user
  end

  def create
    itme = User.create!(params[:id])
    render json: user, include: :user
  end

  private
  def item_not_found_error
    render json: {error: "item not found"}, status: :not_found
  end

end
