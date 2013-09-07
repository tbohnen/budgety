window.App = angular.module("Budgety", ["ngResource","ui.bootstrap"])
.config(["$routeProvider", ($routeProvider) ->
  $routeProvider.when("/transactions",
    templateUrl: "transactions"
    controller: 'TransactionsCtrl')
  $routeProvider.when("/transactions/add",
    templateUrl: "transactions/add"
    controller: 'TransactionsCtrl')
    .otherwise(redirectTo: "/transactions")
])
