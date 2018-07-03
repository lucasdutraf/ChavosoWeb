class HairsController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  def index
    @hairs = Hair.all
  end

  def lenght=(new_lenght)
    write_attribute(:lenght, new_lenght)
  end

  def lenght
    @lenght
  end

  def type
    @type
  end

  def type=(new_type)
    write_attribute(:type, new_type)
  end

  def new
    @hair = Hair.new
  end

  def update
    respond_to do |format|
      if @hair.update(hair_params)
        format.html { redirect_to @hair, notice: 'UHUUUU' }
        format.json { render :show, status: :ok, location: @hair }
      else
        format.html { render :edit }
        format.json { render json: @hair.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @hair = Hair.new(hair_params)
    respond_to do |format|
      if @hair.save
        format.html { redirect_to @hair, notice: 'DEU CERTO' }
        format.json { render :show, status: :created, location: @hair }
      else
        format.html { render :new }
        format.json { render json: @hair.errors, status: :unprocessable_entity }
      end
    end
  end

  # def set_hair
  #   @hair = Hair.find(params[:id])
  # end

  def destroy
    @hair.destroy
    respond_to do |format|
      format.html { redirect_to hairs_url, notice: 'hairs was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def hair_params
    params.permit(:lenght, :type)
  end

end
