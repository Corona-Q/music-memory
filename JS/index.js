//切换布局
$scope.switchLayout = function(){
    ...
    $scope.startBaiYeWindow();
    //启动动画0.5s后，控制布局显示/隐藏
    $timeout(function () {
             if ($scope.show) {
                  $scope.show = false;
              } else {
                    ....
              }
     }, 500);
 }
//启动动画
        $scope.startBaiYeWindow = function () {
            var animator = document.getElementById('baiyeWindow');
            var animatorFadeInOut = document.getElementById('fadeInOut');
            animator.addEventListener('animationend', function () {
                animator.className = '';
                animatorFadeInOut.className = 'content';
            });
            $timeout(function () {
                animator.className = 'baiyeWindow';
                animatorFadeInOut.className = 'content fade-animation';
            }, 0);
        };