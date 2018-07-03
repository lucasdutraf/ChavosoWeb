class HairsController < ApplicationController
  
  def lenght=(new_lenght)
    @lenght = new_lenght
  end

  def lenght
    @lenght
  end

  def type
    @type
  end

  def type=(new_type)
    @type = new_type
  end

end
