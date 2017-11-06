
var screen3 = window.matchMedia('(min-width:0px) and (max-width:767px)');
function ShowHead() {
    var caidan = document.getElementById('headerCaidan'); /*PC端导航栏*/
    var zhidie = document.getElementById('daohanglanPhone');/*手机导航栏折叠菜单*/
    var oHeight = document.documentElement.clientHeight;/*得到页面可视区域高度*/
    if (screen3.matches) {
        /*使得手机端折叠菜单打开pc端折叠菜单*/
        if (caidan.style.display == 'block') {
            document.getElementById('Closeit').style.display = 'block';
            caidan.style.display = 'none';
        } else {
            document.getElementById('Closeit').style.display = 'none';
            caidan.style.display = 'block';
            caidan.style.height = oHeight + 'px';
        }
    } else {
        /*nonthing*/
    }
}

window.onload = function () {
    /**匹配屏幕查询**/
    /*轮播图的大小*/
    var widthLunbo;
    var wWidth = document.documentElement.clientWidth;
    var screen1 = window.matchMedia('(min-width:1300px)');
    var screen2 = window.matchMedia('(min-width: 768px) and (max-width: 1299px)');
    var screen3 = window.matchMedia('(min-width: 0px) and (max-width: 767px)');
    if (screen1.matches) {
        widthLunbo = 1200;
        document.getElementById('headerCaidan').style.display = 'block';
        document.getElementById('headerCaidan').style.height = '60px';
        document.getElementById('daohanglanPhone').style.display = 'none';
        document.getElementById('daohanglanPhone').style.visibility = false;
    } else if (screen2.matches) {
        widthLunbo = 750;
        document.getElementById('headerCaidan').style.display = 'block';
        document.getElementById('headerCaidan').style.height = '60px';
        document.getElementById('daohanglanPhone').style.display = 'none';
        document.getElementById('daohanglanPhone').style.visibility = false;
    } else if (screen3.matches) {
        widthLunbo = 350;
        document.getElementById('headerCaidan').style.display = 'none';
        document.getElementById('daohanglanPhone').style.display = 'block';
        document.getElementById('daohanglanPhone').style.visibility = true;
        var list = document.getElementById('ilist');
    }
    /*监视页面窗口大小变化*/
    window.onresize = function () {
        var wWidth = document.documentElement.clientWidth;
        var screen1 = window.matchMedia('(min-width:1300px)');
        var screen2 = window.matchMedia('(min-width: 768px) and (max-width: 1299px)');
        var screen3 = window.matchMedia('(min-width: 0px) and (max-width: 767px)');
        if (screen1.matches) {
            widthLunbo = 1200;
            document.getElementById('headerCaidan').style.display = 'block';
            document.getElementById('headerCaidan').style.height = '60px';
            document.getElementById('daohanglanPhone').style.display = 'none';
            document.getElementById('daohanglanPhone').style.visibility = false;
        } else if (screen2.matches) {
            widthLunbo = 750;
            document.getElementById('headerCaidan').style.display = 'block';
            document.getElementById('headerCaidan').style.height = '60px';
            document.getElementById('daohanglanPhone').style.display = 'none';
            document.getElementById('daohanglanPhone').style.visibility = false;
        } else if (screen3.matches) {
            widthLunbo = wWidth;
            document.getElementById('headerCaidan').style.display = 'none';
            document.getElementById('daohanglanPhone').style.display = 'block';
            document.getElementById('daohanglanPhone').style.visibility = true;
        }
    }

}