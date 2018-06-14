/*
* @Author: Jason
* @Date:   2018-04-03 09:57:53
* @Last Modified by:   Jason
* @Last Modified time: 2018-04-03 10:45:57
*/
window.addEventListener('scroll', function() {
	var top = 0;
	if (document.documentElement&&document.documentElement.scrollTop) {
		top = document.documentElement.scrollTop;
	} else if (document.body) {
		top = document.body.scrollTop;
	}
	var header = document.getElementsByClassName('header')[0]
	var opacity;
	if (top < 100) {
		opacity = top * 0.007
	} else {
		opacity = 0.7;
	}
	header.style.background = 'rgba(0, 0, 0,' + opacity + ')' 
	header.style.filter = 'alpha(opacity=' + opacity * 100 + ')' 
	console.log(header.style.background);
})