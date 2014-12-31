class ProxyVotesController < ApplicationController
  before_action :set_proxy_vote, only: [:show, :edit, :update, :destroy]

  # GET /proxy_votes
  # GET /proxy_votes.json
  def index
    @total_vote_count = ProxyVote.update_total_vote_count
    @proxy_votes = ProxyVote.all
  end

  # GET /proxy_votes/1
  # GET /proxy_votes/1.json
  def show
  end

  # GET /proxy_votes/new
  def new
    @proxy_vote = ProxyVote.new
  end

  # GET /proxy_votes/1/edit
  def edit
  end

  # POST /proxy_votes
  # POST /proxy_votes.json
  def create
    @proxy_vote = ProxyVote.new(proxy_vote_params)

    respond_to do |format|
      if @proxy_vote.save
        format.html { redirect_to @proxy_vote, notice: 'Proxy vote was successfully created.' }
        format.json { render :show, status: :created, location: @proxy_vote }
      else
        format.html { render :new }
        format.json { render json: @proxy_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proxy_votes/1
  # PATCH/PUT /proxy_votes/1.json
  def update
    respond_to do |format|
      if @proxy_vote.update(proxy_vote_params)
        format.html { redirect_to @proxy_vote, notice: 'Proxy vote was successfully updated.' }
        format.json { render :show, status: :ok, location: @proxy_vote }
      else
        format.html { render :edit }
        format.json { render json: @proxy_vote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proxy_votes/1
  # DELETE /proxy_votes/1.json
  def destroy
    @proxy_vote.destroy
    respond_to do |format|
      format.html { redirect_to proxy_votes_url, notice: 'Proxy vote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proxy_vote
      @proxy_vote = ProxyVote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proxy_vote_params
      params.require(:proxy_vote).permit(:year, :count, :building_id)
    end
end
