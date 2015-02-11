class HostGroupController < ApplicationController
  before_action :set_high_score, only: [:show, :edit, :update, :destroy]

  def index
    @host_groups = HostGroup.all
  end

  def show
  end

  def new
    @host_group = HostGroup.new
  end

  # GET /host_groups/1/edit
  def edit
  end

  # POST /host_groups
  # POST /host_gorups.json
  def create
    @host_group = HostGroup.new(host_group_params)

    respond_to do |format|
      if @host_group.save
        format.html { redirect_to @host_group, notice: 'Host Group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @host_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @host_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /host_groups/1
  # PATCH/PUT /host_groups/1.json
  def update
    respond_to do |format|
      if @host_group.update(host_group_params)
        format.html { redirect_to @host_group, notice: 'Host Group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @host_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /host_groups/1
  # DELETE /host_groups/1.json
  def destroy
    @host_group.destroy
    respond_to do |format|
      format.html { redirect_to host_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_high_score
      @host_group = HostGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def host_group_params
      params.require(:host_group).permit(:groupname, :emailaddress)
    end
end
