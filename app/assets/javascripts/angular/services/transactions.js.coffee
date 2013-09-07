App.factory 'Transactions', ['$resource', ($resource) ->
	$resource '/transactions/allTransactions'
]