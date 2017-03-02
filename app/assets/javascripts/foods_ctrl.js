(function() {
    "use strict";

   angular.module("app").controller("foodsCtrl", function($scope, $http) {
 
     $scope.setup = function() {
       $http.get("/api/v2/foods.json").then(function(response) {
         $scope.foods = response.data;
       });

    }

     $scope.addFood = function(ingredient, spice, measurement ) {
       var food = { ingredient: ingredient,spice: spice, measurement: measurement
         };
       $http.post("/api/v2/foods.json", food).then(function(response) {
         $scope.foods.push(response.data);
        });

     }    
  
      // $scope.toggleBio = function(person) {
      //   person.bioVisible = !person.bioVisible;

  window.$scope = $scope;

  });
})();