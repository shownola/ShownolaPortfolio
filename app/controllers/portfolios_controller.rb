class PortfoliosController < ApplicationController
  before_action :set_portfolio_item,  only: [:edit, :update, :show, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :node], user: {except: [:destroy, :new, :create, :edit, :update, :sort]}, site_admin: :all
  
  def index
    @portfolio_items = Portfolio.by_position
  end
  
  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end
    
    render body: nil  #can also use head :ok
  end
  
  def node
    @node_portfolio_items = Portfolio.node
  end
  
  def new
    @portfolio_item = Portfolio.new
   
  end
  
  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def edit
  end
  
  def update
    
     respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def show
    @seo_keywords = @portfolio_item.body
  end
  
  def destroy
    
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio Item was successfully destroyed.' }
    end
  end
  
  private
  
  def portfolio_params
    params.require(:portfolio).permit(:title, 
                                      :subtitle, 
                                      :body,
                                      :main_image, 
                                      :thumb_image,
                                      technologies_attributes: [:id, :name, :_destroy])
  end
  
  def set_portfolio_item
     @portfolio_item = Portfolio.find(params[:id])
  end
  
end
