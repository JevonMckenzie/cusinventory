class OrdersController < ApplicationController
  #before_action :authenticate_user!
  before_action :set_order, only: [:show, :edit, :update, :destroy]
   before_action :initialize_search, only: :index
    # before_action :admin_required, except: [:deployed_by_section]
    # before_action :authenticate_user!

  def index
    @orders = Order.all
    @members = Member.all
    @items = Item.all
    @active = Order.active?
    @expired = Order.expired?

    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def old
    @inactive = Order.inactive?
  end

  def deployed
       if current_user.cmisuser != "YES"
         redirect_to deployed_section_path
       else
    @orders = Order.all
    @members = Member.all
    @items = Item.all
    @active = Order.active?
    @expired = Order.expired?
   end
  end

    def corozal_cargo
  
    @orders = Order.all
    @members = Member.all
    @items = Item.all
    @active = Order.active?
    @expired = Order.expired?
   end


    def deployed_by_section
        @orders = Order.all
    @members = Member.all
    @items = Item.all
    @active = Order.active?
    @expired = Order.expired?
    # Use cookie to store filter and search data until user clears it
   # handle_search_name
    handle_filters
  end

  def station
    @orders = Order.all
    @members = Member.all
    @items = Item.all
    @active = Order.active?
    @expired = Order.expired?
  end

  def inventory
    @orders = Order.all
  end

  def renew
    @current_user = current_user
    @order = Order.find_by_id(params[:id])
    Order.renew(params[:id])
    redirect_to :root
    flash[:notice] = "Renewed for 7 days from now. Enjoy!"

    begin
      OrderMailer.delay.renew_order(@order, @current_user).deliver
    rescue Exception => e
    end
  end

  def returnedby
  end

  def disable
    @current_user = current_user
    #Order.update_attribute(:returnedby, @current_user)
    #@returnedby = Order.current_user
    borrowed_qty = Order.find_by_id(params[:id]).quantity.to_i
    @borrowed_item = Order.find_by_id(params[:id]).item
    @borrowed_item.increment!(:remaining_quantity, borrowed_qty)
    @current_user = current_user
    @order = Order.find_by_id(params[:id])
    @order.update_attribute(:returnedby, @current_user.email)
    Order.disable(params[:id])
    redirect_to :root
    flash[:notice] = "Item marked as returned. Thank you!"

    begin
      OrderMailer.delay.return_order(@order, @current_user).deliver
    rescue Exception => e
    end
  end

  def new
    @order = Order.new
    @member = Member.all
  end

  def create
    if Item.find_by_id(params[:order][:item_id]).remaining_quantity >= params[:order][:quantity].to_i
      params[:order][:status] = true
      @order = Order.new(order_params)
      @order.section = @order.member.name
      @order.depcategory = @order.item.category

      if @order.save
        @current_user = current_user
        @borrowed_item = Item.find_by_id(params[:order][:item_id])
        @borrowed_item.decrement!(:remaining_quantity, params[:order][:quantity].to_i)
        redirect_to :root, notice: 'Order was successfully created.'
        begin
          OrderMailer.delay.create_order(@order, @current_user).deliver
        rescue Exception => e
        end
      else
        render :new
      end
    else
      flash[:alert] = 'The quantity you entered is not currently available'
      redirect_to :back
    end
  end

  def destroy
    borrowed_qty = @order.quantity.to_i
    @borrowed_item = @order.item
    @borrowed_item.increment!(:remaining_quantity, borrowed_qty)
    @current_user = current_user
    @order.destroy

    redirect_to orders_url, notice: 'Order was successfully destroyed.'
    begin
      OrderMailer.delay.cancel_order(@order, @current_user).deliver
    rescue Exception => e
    end
  end



  def clear
    clear_session(:search_name, :filter_name, :filter)
    redirect_to orders_path
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

  def show
    @order = Order.find(params[:id])
  end





  private


    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:requisitionnumber, :quantity, :expire_at, :deployedby, :status, :item_id, :member_id, :section)
    end



    def initialize_search
    @orders = Order.all
    session[:search_name] ||= params[:search_name]
    session[:filter] = params[:filter]
    params[:filter_option] = nil if params[:filter_option] == ""
    session[:filter_option] = params[:filter_option]
  end

  def handle_search_name
    if session[:search_name]
      @orders = Order.where("name LIKE ?", "%#{session[:search_name].titleize}%")
     # @orders = @orders.where(section: @order.pluck(:order))
    else
      @reports = Order.all
    end
  end

  def handle_filters
    if session[:filter_option] && session[:filter] == "station"
      @orders = @orders.where(position: session[:filter_option])
    #  @orders = @orders.where(section: @orders.pluck(:order))
    elsif session[:filter_option] && session[:filter] == "section"
      @orders = @orders.where(section: session[:filter_option])
    end
  end






end
