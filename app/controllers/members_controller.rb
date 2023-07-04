class MembersController < ApplicationController
  before_action :authenticate_admin!, except: [:new]
  before_action :set_member, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /members or /members.json
  def index
    @members = Member.all
  end

  # GET /members/1 or /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new member_params
  end

  # POST /members or /members.json
  def create
    @member = Member.new(member_params)

    respond_to do |format|
      if @member.save
        format.html { redirect_to home_path, notice: "Дякуємо, наші координатори звʼяжуться з вами" }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_params
      params.fetch(:member, {}).permit(:name, :email, :phone, :state, :city, :coordinator, :knit, :mettings)
    end
end
