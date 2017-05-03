class PhotosController < ApplicationController

def index
@list_of_photos = Photo.all
render("photos/index.html.erb")
end

def show
  @photo = Photo.find(params[:the_id])
  render("photos/show.html.erb")
end

def new_form
  render("photos/new_form.html.erb")
end

def create_row
  @photo = Photo.new
  @photo.caption = params[:the_caption]
  @photo.source = params[:the_source]
  @photo.save
  redirect_to("/photos")
end

def edit_form
  @photo = Photo.find(params[:la_id])
  render("photos/edit_form.html.erb")
end


def destroy_row
  @photo = Photo.find(params[:da_id])
  @photo.destroy
  redirect_to("/photos")
end



end
