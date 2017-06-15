
  class RoomsController < ActionController::Base

    def index
      @rooms = Room.all
    end

    def show
      @room = Room.find(params[:id])
    end

    def new
      @room = Room.new
    end

    def edit
      @room = Room.find(params[:id])
    end

    def create
      @room = Room.new(room_params)

      if @room.save
        flash[:success] = "Room is created successfully"
        render 'show'
      else
        flash[:danger] = @room.errors
        render 'new'
      end
      end
    end

    def update
      @room = Room.find(params[:id])
      respond_to do |format|
        if @room.update(room_params)
          flash[:success] = "Room is created successfully"
          render 'show'
          format.html { redirect_to @room, notice: 'Room was successfully updated.' }
          format.json { render :show, status: :ok, location: @room }
        else
          format.html { render :edit }
          format.json { render json: @room.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @room = Room.find(params[:id]).destroy
      redirect_to rooms_path
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:kind, :size, :price, :note)
    end
  end

