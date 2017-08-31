class DepensesController < ApplicationController

    def index

	@depense = MDepense.all
	end


   def edit

	@depense= MDepense.find(params[:id])
	end


  def show
    @depense = MDepense.find(params[:id])
  end



	def new

	@depense=MDepense.new

	end


	def create
		@depense = MDepense.new(depense_params)

		if @depense.save
			redirect_to depense_path @depense
		else
		render 'new'
	    end

    end



  def update

	@depense = MDepense.find(params[:id])

	if @depense.update(depense_params)
		redirect_to @depense
	else
		render 'edit'
   end



  end





  def destroy

		@depense = MDepense.find(params[:id])
		@depense.destroy

		redirect_to depenses_path
	end



  private
  def depense_params
    params.require(:depense).permit(:title, :montant, :payer, :benef)
  end


end
