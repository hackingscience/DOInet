class PublicationController < ApplicationController


  def index 

  end

  def show
    render :text => "my id is #{params[:id]}"
  end

  def new
    render :text => "New form for DOI"
  end

  def create
    render :text => "Creating a New DOI"
  end

  def edit
    render :text => "Edit form for DOI #{params[:id]}"
  end

  def update
    render :text => "Updating a DOI #{params[:id]}"
  end

  def delete
    render :text => "Deleting a DOI #{params[:id]}"
  end

end
