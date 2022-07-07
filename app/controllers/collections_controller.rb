class CollectionsController < ApplicationController

  def index
    collections = Collection.all
    render json: collections
  end

  def show
    collection = Collection.find(params[:id])
    render json: collection
  end

  def create
    collection = Collection.new(
      name: params[:name],
      description: params[:description]
    )
    collection.save
    render json: collection
  end

  def update
    collection = Collection.find(params[:id])
    collection.name = params[:name] || collection.name
    collection.description = params[:description] || collection.description
    render json: collection
  end

  def destroy
    collection = Collection.find(params[:id])
    collection.delete
    render json: {message: "'#{collection.name}' successfully deleted!"}
  end

end
