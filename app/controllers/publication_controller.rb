class PublicationController < ApplicationController


  def index 
    @publication = Publication.new
  end

  def show

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
