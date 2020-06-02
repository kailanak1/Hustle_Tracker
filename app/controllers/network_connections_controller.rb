class NetworkConnectionsController < ApplicationController
  before_action :set_network_connection, only: [:show, :update, :destroy]

  # GET /network_connections
  def index
    @network_connections = NetworkConnection.all

    render json: @network_connections
  end

  # GET /network_connections/1
  def show
    render json: @network_connection
  end

  # POST /network_connections
  def create
    @network_connection = NetworkConnection.new(network_connection_params)

    if @network_connection.save
      render json: @network_connection, status: :created, location: @network_connection
    else
      render json: @network_connection.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /network_connections/1
  def update
    if @network_connection.update(network_connection_params)
      render json: @network_connection
    else
      render json: @network_connection.errors, status: :unprocessable_entity
    end
  end

  # DELETE /network_connections/1
  def destroy
    @network_connection.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_network_connection
      @network_connection = NetworkConnection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def network_connection_params
      params.require(:network_connection).permit(:name, :company, :contact_type, :email, :user_id)
    end
end
