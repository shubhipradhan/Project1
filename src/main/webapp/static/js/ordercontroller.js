

var cartapp=angular
                 .module("addToCartApp",[]);
                 
cart.controller("addToCartCtrl",function($scope,$http){
                	 
	$scope.retrieveCart=function(cartId){
		$scope.cartId=cartId;
		$scope.refreshCartItems(cartId);
	};
	
	$scope.GrandTotalOfItems=function(){
		var grandtotal=0;
		
		for(var i =0;i.$scope.cart.item.length;i++){
			grandtotal=$scope.cart.items[i].itemTotal;
		}
		
		return grandtotal;
	};
	
	$scope.refreshCartItem=function(){
		$http.get('http://localhost:8080/AkiraFRONTEND/'+$scope.cartId).success(function(data){
		$scope.cart=data;	

	});
    };
    
    $scope.removeItemFromCart=function(itemId){
    	alert('remove called')
    	$http.put(''+itemId).success(function(data){
    		$scope.refreshCartItem();
    	});
    };
    
    $scope.addItemFromCart=function(itemId){
    	alert('add called')
    	$http.put(''+itemId).success(function(data){
    		$scope.refreshCartItem();
    	});
    };
});
      