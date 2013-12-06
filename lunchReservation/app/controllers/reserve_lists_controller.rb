class ReserveListsController < ApplicationController
  # GET /reserve_lists
  # GET /reserve_lists.json
  def index
    @reserve_lists = ReserveList.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reserve_lists }
    end
  end

  # GET /reserve_lists/1
  # GET /reserve_lists/1.json
  def show
    @reserve_list = ReserveList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reserve_list }
    end
  end

  # GET /reserve_lists/new
  # GET /reserve_lists/new.json
  def new
    @reserve_list = ReserveList.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reserve_list }
    end
  end

  # GET /reserve_lists/1/edit
  def edit
    @reserve_list = ReserveList.find(params[:id])
  end

  # POST /reserve_lists
  # POST /reserve_lists.json
  def create
    @reserve_list = ReserveList.new(params[:reserve_list])

    respond_to do |format|
      if @reserve_list.save
        format.html { redirect_to @reserve_list, notice: 'Reserve list was successfully created.' }
        format.json { render json: @reserve_list, status: :created, location: @reserve_list }
      else
        format.html { render action: "new" }
        format.json { render json: @reserve_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reserve_lists/1
  # PUT /reserve_lists/1.json
  def update
    @reserve_list = ReserveList.find(params[:id])

    respond_to do |format|
      if @reserve_list.update_attributes(params[:reserve_list])
        format.html { redirect_to @reserve_list, notice: 'Reserve list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reserve_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserve_lists/1
  # DELETE /reserve_lists/1.json
  def destroy
    @reserve_list = ReserveList.find(params[:id])
    @reserve_list.destroy

    respond_to do |format|
      format.html { redirect_to reserve_lists_url }
      format.json { head :no_content }
    end
  end
end
