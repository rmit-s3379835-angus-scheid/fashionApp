class SubscribesController < ApplicationController

  def new
    @subscribe = Subscribe.new
  end

  def create
    @subscribe = Subscribe.new(subscribe_params)

    if @subscribe.save
      redirect_to root_path
    else
      render 'subscribes/new'
    end
  end

  private
  def subscribe_params
    params.require(:subscribe).permit(:email)
  end

end

