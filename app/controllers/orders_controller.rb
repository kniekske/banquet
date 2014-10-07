class OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.new(order_param)


		if @order.save
			redirect_to @order
		else
			render 'new'
		end
	end

	def show
		@order = Order.find(params[:id])
	end

	def edit
		@order = Order.find(params[:id])
	end

	def update
		@order = Order.find(params[:id])

		if @order.update(order_param)
			redirect_to @order
		else
			render 'edit'
		end
	end

	def destroy
		@order = Order.find(params[:id])
		@order.destroy

		redirect_to orders_path
	end

	private
	def order_param
		params.require(:order).permit(:title, :link)
	end
end
