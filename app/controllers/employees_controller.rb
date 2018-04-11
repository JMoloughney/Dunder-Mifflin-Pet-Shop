class EmployeesController < ApplicationController
  def index
  end

  def new
    @dogs = Dog.all
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.save
    if @employee.valid?
      redirect_to @employee
    else
      redirect_to new_employee_path(@employee)
    end

  end

  def edit
    @dogs = Dog.all
    @employee = Employee.find(params[:id])
  end

  def update

    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    if @employee.valid?
      redirect_to @employee
    else
      render :new
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def destroy
  end



  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id )
  end
end
