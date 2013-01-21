class PublicationController < ApplicationController


  def index 
    @publication = Publication.new
  end
  
  def search
    @publication = Publication.new
    @pubs = Publication.where("doi LIKE ?", "%#{params[:doi]}%").order("doi").page(params[:page])
  end

  def show

  end

  def new
    @publication = Publication.new 
  end

  def create
    @p = Publication.new
    @p.doi = params[:publication][:doi]
    @p.title = params[:publication][:title]
    @p.save
    @citation = Citation.new 
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
