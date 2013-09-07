class TransactionsController < ApplicationController

def index
end

def allTransactions
	render json: Transaction.all
end

def new
	render layout: false
end

def create
	#(params.permit(:paymentType,:paymentTo,:amount,:transactionDate)[:transaction])
    
	@transaction = getTransactionFromParams()
    if @transaction.save
    	render json: "true"
    else
      render json: "false"
    end
end

def getTransactionFromParams
	@transaction = Transaction.new
	@transaction.paymentType = params.permit(:paymentType)[:paymentType]
	@transaction.paymentTo = params.permit(:paymentTo)[:paymentTo]
	@transaction.amount = params.permit(:amount)[:amount]
	#@transaction.paymentDate = params.permit(:paymentDate)[:paymentDate]
	return @transaction
end


end
