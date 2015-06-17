class PhotosController < ApplicationController
	

  def index  
    @photos = Photo.all
  end

  def show
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def edit
  	@photo = Photo.find(params[:id])
  end

  def create
    @photo = Photo.new(photo_params)
   if @photo.save
        redirect_to photos_path
      else
        render :action => "new"
      end
    end
    
  def update
    @photo.update(photo_params)
  end

  def destroy
      @photo = Photo.find(params[:id])
      if @photo.delete
        redirect_to photos_path
      end
    end

  private
 
    def photo_params
      params.require(:photo).permit(:name, :details, :image)
    end

end
