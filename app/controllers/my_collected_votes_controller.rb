class MyCollectedVotesController < ApplicationController
  before_action :set_my_collected_vote, only: [:show, :edit, :update, :destroy]

  # GET /my_collected_votes
  # GET /my_collected_votes.json
  def index
    @my_collected_votes = MyCollectedVote.all
  end

  # GET /my_collected_votes/1
  # GET /my_collected_votes/1.json
  def show
  end

  # GET /my_collected_votes/new
  def new
    @my_collected_vote = MyCollectedVote.new
  end

  # GET /my_collected_votes/1/edit
  def edit
  end

  # POST /my_collected_votes
  # POST /my_collected_votes.json
  def create
    @my_collected_vote = MyCollectedVote.new(my_collected_vote_params)

    respond_to do |format|
      if @my_collected_vote.save
        format.html { redirect_to @my_collected_vote, notice: 'My collected vote was successfully created.' }
        format.json { render :show, status: :created, location: @my_collected_vote }
      else
        format.html { render :new }
        format.json { render json: @my_collected_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_collected_votes/1
  # PATCH/PUT /my_collected_votes/1.json
  def update
    respond_to do |format|
      if @my_collected_vote.update(my_collected_vote_params)
        format.html { redirect_to @my_collected_vote, notice: 'My collected vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_collected_vote }
      else
        format.html { render :edit }
        format.json { render json: @my_collected_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_collected_votes/1
  # DELETE /my_collected_votes/1.json
  def destroy
    @my_collected_vote.destroy
    respond_to do |format|
      format.html { redirect_to my_collected_votes_url, notice: 'My collected vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_collected_vote
      @my_collected_vote = MyCollectedVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_collected_vote_params
      params.require(:my_collected_vote).permit(:votes_collected, :building_id, :user_id, :year)
    end
end
