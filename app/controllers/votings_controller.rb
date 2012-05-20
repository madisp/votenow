class VotingsController < ApplicationController
  require 'rqrcode'
  before_filter :fill_data

  def show
    render :action => 'show2'
  end

  def vote
  end

  def confirm
    @choice = params[:choice].to_i
  end

  def admin
    render :action => 'admin', :layout => 'admin'
  end
  
  protected
    def fill_data
      @id = params[:id].to_i
      @link = "http://goo.gl/oGWes"
      @qr = RQRCode::QRCode.new @link
      @votes = [14,7,3,34]
      @labels = ('A'..'Z').to_a
      @question = "Millises keeles on Ott Leplandi eurolaul \"Kuula\" parim?".html_safe
      @answers = ['inglise', 'vene', 'hispaania', 'eesti']
      @open_vote = @id % 2 == 0
    end
end
