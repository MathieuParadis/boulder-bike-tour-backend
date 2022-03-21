class SloganContestsController < ApplicationController
  before_action :set_slogan_contest, only: [:show, :update, :destroy]

  # GET /slogan_contests
  def index
    @slogan_contests = SloganContest.all

    render json: @slogan_contests
  end

  # GET /slogan_contests/1
  def show
    render json: @slogan_contest
  end

  # POST /slogan_contests
  def create
    @slogan_contest = SloganContest.new(slogan_contest_params)

    if @slogan_contest.save
      render json: @slogan_contest, status: :created, location: @slogan_contest
    else
      render json: @slogan_contest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /slogan_contests/1
  def update
    if @slogan_contest.update(slogan_contest_params)
      render json: @slogan_contest
    else
      render json: @slogan_contest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /slogan_contests/1
  def destroy
    @slogan_contest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slogan_contest
      @slogan_contest = SloganContest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def slogan_contest_params
      params.fetch(:slogan_contest, {})
      params.require(:slogan_contest).permit(:first_name, :last_name, :email, :slogan)

    end
end
