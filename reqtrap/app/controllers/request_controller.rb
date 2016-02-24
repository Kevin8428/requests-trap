class RequestController < ApplicationController
  def index
    render 'index'
  end

  def create
    render 'create'
  end

  def update
    render 'update'
  end

  def destroy
    render 'destroy'
  end

  def new
    render 'new'
  end

  def show
    render 'show'
  end

  def edit
    render 'edit'
  end

  def single
    render 'single'
  end
end
