class ExpensesGroupsController < ApplicationController
  before_action :set_expenses_group, only: %i[ show edit update destroy ]

  # GET /expenses_groups or /expenses_groups.json
  def index
    @expenses_groups = ExpensesGroup.all
  end

  # GET /expenses_groups/1 or /expenses_groups/1.json
  def show
  end

  # GET /expenses_groups/new
  def new
    @expenses_group = ExpensesGroup.new
  end

  # GET /expenses_groups/1/edit
  def edit
  end

  # POST /expenses_groups or /expenses_groups.json
  def create
    @expenses_group = ExpensesGroup.new(expenses_group_params)

    respond_to do |format|
      if @expenses_group.save
        format.html { redirect_to expenses_group_url(@expenses_group), notice: "Expenses group was successfully created." }
        format.json { render :show, status: :created, location: @expenses_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @expenses_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses_groups/1 or /expenses_groups/1.json
  def update
    respond_to do |format|
      if @expenses_group.update(expenses_group_params)
        format.html { redirect_to expenses_group_url(@expenses_group), notice: "Expenses group was successfully updated." }
        format.json { render :show, status: :ok, location: @expenses_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @expenses_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses_groups/1 or /expenses_groups/1.json
  def destroy
    @expenses_group.destroy

    respond_to do |format|
      format.html { redirect_to expenses_groups_url, notice: "Expenses group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expenses_group
      @expenses_group = ExpensesGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expenses_group_params
      params.require(:expenses_group).permit(:expense_id, :group_id)
    end
end
