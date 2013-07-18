class AppsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :set_app, only: [:show, :edit, :update, :destroy]
  before_action :set_job

  # GET /jobs/1/apps
  # GET /jobs/1/apps.json
  def index
    @apps = App.all
  end

  # GET /jobs/1/apps/1
  # GET /jobs/1/apps/1.json
  def show
  end

  # GET /jobs/1/apps/new
  def new
    @app = App.new
  end

  # GET /jobs/1/apps/1/edit
  def edit
  end

  # POST /jobs/1/apps
  # POST /jobs/1/apps.json
  def create
    @app = App.new(app_params)
    @app.applicant = current_user

    respond_to do |format|
      if @app.save
        format.html { redirect_to job_apps_path, notice: 'App was successfully created.' }
        format.json { render action: 'show', status: :created, location: @app }
      else
        format.html { render action: 'new' }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1/apps/1
  # PATCH/PUT /jobs/1/apps/1.json
  def update
    respond_to do |format|
      if @app.update(app_params)
        format.html { redirect_to job_apps_path, notice: 'App was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1/apps/1
  # DELETE /jobs/1/apps/1.json
  def destroy
    @app.destroy
    respond_to do |format|
      format.html { redirect_to job_apps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app
      @app = App.find(params[:id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:job_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_params
      params[:app]
    end
end
