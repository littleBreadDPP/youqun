//DOM找到对应的元素并保存到对应的变量里
var pre =document.getElementsByClassName("pre")[0];
console.log(pre);
var next =document.getElementsByClassName("next")[0];
console.log(next);
var banner =document.getElementsByClassName("banner")[0];
console.log(banner);
var show =document.getElementById("show");
console.log(show);
var li =document.getElementsByTagName("li");
console.log(li);
var classes = ["b1","b2","b3","b4","b5","b6"];

//用定时器让轮播每隔4秒自动执行一次
//保存play函数
//设置定时器并自动调用play函数

//点击后让轮播切换到上一张

pre.onclick = function() {
    // 将classes的第一个取出来， 放在最后一个位置

    // 然后将classes给相应的class

}


//点击后让轮播切换到下一张

next.onclick = function() {
    // 将classes的最后一个取出来， 放在第一个位置

    // 然后将classes给相应的class
}