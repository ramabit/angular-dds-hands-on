/**
 * Created by utnso on 13/11/14.
 */
got.controller('heroes_controller', function($scope, $http){

    var view = {
        heroes: [],
        casaHeroe: function(heroe){
            if(heroe.casa === 'Stark'){
                return 'primary-bg';
            }else if(heroe.casa === 'Greyjoy'){
                return 'secondary-bg';
            }else{
                return 'third-bg';
            }
        },
        poderoso: function(heroe){
            return heroe.poder > 50;
        },
        viveEnLannister: function(heroe){
            return heroe.casa === 'Lannister';
        }
    };

    $scope.view = view;

    var obtengoHeroes = function(response){
        view.heroes = response.data.heroes;
    }

    $http.get('/heroes.json').then(obtengoHeroes);

});