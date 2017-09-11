class HeartsController < ApplicationController
  # POST /hearts
  def create
    @heart = Heart.new(post_params)

    if @heart.save
      redirect_to @heart.post, notice: 'Successfully hearted.'
    else
      render root_url, notice: 'Something went wrong while hearting the post.'
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:heart).permit(:post_id)
    end
end
