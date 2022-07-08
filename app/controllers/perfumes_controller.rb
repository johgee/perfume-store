class PerfumesController < ApplicationController
  def export
    @perfumes = Perfume.all

    respond_to do |format|
      format.csv { send_data @perfumes.to_csv, filename: "perfumes-#{Date.today}.csv" }
    end
  end

  def index
    perfumes = Perfume.all
    render json: perfumes.as_json
  end

  def create
    perfume = Perfume.new(
      image: params[:image],
      brand: params[:brand],
      name: params[:name],
      price: params[:price],
    )
    perfume.save
    render json: perfume.as_json
  end

  def show
    perfume = Perfume.find_by(id: params[:id])
    render json: perfume.as_json
  end

  def update
    # response = Cloudinary::Uploader.upload(params[:image_file], resource_type: :auto)
    # cloudinary_url = response["secure_url"]

    perfume = Perfume.with_deleted.find_by(id: params[:id])
    perfume.image = params[:image] || perfume.image
    # perfume.image = cloudinary_url || user.image_url
    perfume.brand = params[:brand] || perfume.brand
    perfume.name = params[:name] || perfume.name
    perfume.price = params[:price] || perfume.price
    perfume.deleted_at = params[:deleted_at] || perfume.deleted_at
    perfume.save
    render json: perfume.as_json
  end

  def destroy
    perfume = Perfume.find_by(id: params[:id])
    perfume.delete_comment = params[:delete_comment] || perfume.delete_comment
    perfume.save
    perfume.destroy
    render json: { message: "Perfume successfully destroyed." }
  end
end
