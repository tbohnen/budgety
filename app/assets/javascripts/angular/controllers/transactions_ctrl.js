App.controller('TransactionsCtrl', [
  '$scope', 'Transactions', '$http','$dialog', function($scope, Transaction, $http, $dialog) {
    $scope.transactions = Transaction.query();
}]);


App.controller('AddTransactionsCtrl', function()
{
	function(){
$scope.opts = {
    backdrop: true,
    keyboard: true,
    backdropClick: true,
    //template:  t,
    templateUrl: 'transactions/new',
    controller: 'AddTransactionsCtrl'
  };

    $scope.openDialog = function(){
    var d = $dialog.dialog($scope.opts);
    d.open().then(function(result){
      if(result)
      {
        alert('dialog closed with result: ' + result);
      }
    });
  };
	}
});



// the dialog is injected in the specified controller
function AddTransactionsCtrl($scope, dialog, $http ){

    $scope.addTransaction = function() {   
    $http.post("/transactions", $scope.transaction).success(function(data, dialog)
    {    	
    	if (data == "true")
    	{
	    	alert('The transaction has been added.');
    		dialog.close();
    		
    	}
    });
};

}