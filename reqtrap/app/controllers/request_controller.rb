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
    @request = request.env.inspect
    @date = Time.now
    # @remote_ip = request.env["HTTP_ACCEPT"]
    @remote_ip = request.remote_ip
    @http_host = request.env["HTTP_HOST"]

    render 'new'

    # - request date
    # - remote ip
    # - request-method
    # - scheme
    # - query-string
    # - query-params
    # - cookies
    # - headers





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
