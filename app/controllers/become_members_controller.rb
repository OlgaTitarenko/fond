class BecomeMembersController < ApplicationController
  before_action :set_become_member, only: %i[ show edit update destroy ]

  # GET /become_members or /become_members.json
  def index
    @become_members = BecomeMember.all
  end

  # GET /become_members/1 or /become_members/1.json
  def show
  end

  # GET /become_members/new
  def new
    @become_member = BecomeMember.new 
    # @address = BecomeMember.new become_member_params
  end

  # GET /become_members/1/edit
  def edit
  end

  # POST /become_members or /become_members.json
  def create
    @become_member = BecomeMember.new(become_member_params)

    respond_to do |format|
      if @become_member.save
        format.html { redirect_to become_member_url(@become_member), notice: "Become member was successfully created." }
        format.json { render :show, status: :created, location: @become_member }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @become_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /become_members/1 or /become_members/1.json
  def update
    respond_to do |format|
      if @become_member.update(become_member_params)
        format.html { redirect_to become_member_url(@become_member), notice: "Become member was successfully updated." }
        format.json { render :show, status: :ok, location: @become_member }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @become_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /become_members/1 or /become_members/1.json
  def destroy
    @become_member.destroy

    respond_to do |format|
      format.html { redirect_to become_members_url, notice: "Become member was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_become_member
      @become_member = BecomeMember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def become_member_params
      params.require(:become_member).permit(:name, :email, :phone, :state, :city, :coordinator, :knitt, :meetings, :other)
    end
end
