class SearchController < ApplicationController     
 
respond_to :js, :html

  def index
  	
   
   @category1 = Search.all

   
       
  end

  def new

  @search = Search.new

  
  end

  def show
  	@search = Search.find(params[:id])
  end

  def create

    # @i = Search.maximum("id")
           
    
    @categorys = Search.all
    
    @search =Search.new(search_params)

    
    @search.save
    flash.notice = "Created successfully"
    redirect_to search_index_path   
     
  end
  

  def edit

     @search = Search.find(params[:id])   
     
    
  end

  def update
    
    @categorys = Search.all
    

    @search = Search.find(params[:id])   
    
    @search.update_attributes(search_params) 
   
    
    flash.notice = "Updated Successfully"
    redirect_to search_index_path


  end

  def delete
    
    @search = Search.find(params[:search_id])

    
  end

  def destroy

    @search = Search.find(params[:id])
    @search.destroy

    flash.notice = "Deleted successfully"
    
  end


  private
  
  def search_params
  	params.require(:search).permit(:id,:empname,:empdept)
  end


 
# end







end
