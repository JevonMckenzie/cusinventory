class ReportsController < ApplicationController
  
 before_action :initialize_search, only: :index


  def index
  	  @reports = Order.all
  
    @members = Member.all
    @items = Item.all
    @active = Order.active?
    @expired = Order.expired?
    # Use cookie to store filter and search data until user clears it
   # handle_search_name
    handle_filters
  end

  def clear
    clear_session(:search_name, :filter_name, :filter)
    redirect_to reports_path
  end

  def show
  
  end

  private

  def initialize_search
    @reports = Order.all
   
    session[:search_name] ||= params[:search_name]
    session[:filter] = params[:filter]
    params[:filter_option] = nil if params[:filter_option] == ""
    session[:filter_option] = params[:filter_option]
  end

 # def handle_search_name
 #   if session[:search_name]
 #     @reports = Report.where("name LIKE ?", "%#{session[:search_name].titleize}%")
 #     @orders = @orders.where(section: @report.pluck(:order))
 #   else
 #     @reports = Report.all
 #   end
 # end

  def handle_filters
    if session[:filter_option] && session[:filter] == "station"
      @reports = @reports.where(position: session[:filter_option])
      @orders = @orders.where(section: @orders.pluck(:order))
    elsif session[:filter_option] && session[:filter] == "section"
      @reports = @reports.where(section: session[:filter_option])
    end
  end


end

