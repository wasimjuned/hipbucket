class BucketsController < ApplicationController
  def new
    @bucket = Bucket.new
  end

  def create
    @bucket = Bucket.new params[:bucket]
    if @bucket.save
      redirect_to @bucket
    else
      render :action => :new
    end
  end

  def update
    @bucket = Bucket.find_by_participation_hash params[:id]
    if :success
    else
    end
  end

  def show
    @bucket = Bucket.find_by_participation_hash params[:id]
    @admin = (params[:key] == @bucket.admin_hash)
  end
end
