class RoomsController < ApplicationController
  def index
  end
  def new
    @room = Room.new
  end
  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end
  # ストロングパラメーター
  private

  def room_params
    # 配列[]に対しての保存を許可
    params.require(:room).permit(:name, user_ids: [])
  end
end
