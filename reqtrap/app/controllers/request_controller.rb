class RequestController < ApplicationController
  def index
    render 'index'

  end

  def create
    @test = Request.new
    render 'create'
  end

  def update
    render 'update'
  end

  def destroy
    render 'destroy'
  end

  def new
    @test = Request.new
    @test.req_date = Time.now
    @test.string = request.env["QUERY_STRING"]
    @test.remote_ip = request.remote_ip
    @test.request_method = request.env["REQUEST_METHOD"]
    @test.scheme = request.env["rack.url_scheme"]
    @test.query_string = request.env["QUERY_STRING"]
    @test.query_params = request.env["action_dispatch.request.query_parameters"]
    # @test.cookies = request.env["HTTP_COOKIE"]
    @test.headers = request.env["Content-Type"]




    @test.save
    @request = request.env.inspect
    @date = Time.now
    @remote_ip = request.remote_ip
    @http_host = request.env["HTTP_HOST"]
    @request_method = request.env["REQUEST_METHOD"]
    @scheme = request.env["rack.url_scheme"]
    @query_string = request.env["QUERY_STRING"]
    @query_params = request.env["action_dispatch.request.query_parameters"]
    @cookies = request.env["HTTP_COOKIE"]
    @headers = request.env["Content-Type"]
    render 'new'

  end

  def show
    @all = Request.all
    render 'show'
  end

  def edit
    render 'edit'
  end

  def single
    render 'single'
  end
end
