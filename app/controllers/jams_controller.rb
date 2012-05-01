class JamsController < ApplicationController
  
  def index
    @jams = Jam.all
  end
  
  def new
  end
  
  def create
    Jam.create :name => params[:title], :artist => params[:artist]
    redirect_to "http://localhost:3000/choons"
  end
  
  def show
    @jam = Jam.find_by_name(params[:name])
  end
  
  def destroy
    @jam = Jam.find_by_name(params[:name])
    @jam.destroy
    redirect_to "http://localhost:3000/choons"
  end
  
  def edit
    @jam = Jam.find_by_name(params[:name])    
  end
  
  def update
    @jam = Jam.find_by_name(params[:name])
    @jam.name = params[:title]
    @jam.artist = params[:artist]
    @jam.save
    redirect_to "http://localhost:3000/choons"
  end
  
end
