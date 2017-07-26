/**
 * 
 */
$(document).ready(function(){
	var Product = {
			'p3':['/static/img/product/wade/1.jpg','/static/img/product/wade/2.jpg','/static/img/product/wade/3.jpg','/static/img/product/wade/4.jpg','/static/img/product/wade/5.jpg'],
			'p4':['/static/img/product/stussy/1.jpg','/static/img/product/stussy/2.jpg','/static/img/product/stussy/3.jpg','/static/img/product/stussy/4.jpg','/static/img/product/stussy/5.jpg'],
			'p5':['/static/img/product/madness/1.jpg','/static/img/product/madness/2.jpg','/static/img/product/madness/3.jpg','/static/img/product/madness/4.jpg','/static/img/product/madness/5.jpg'],
			'p6':['/static/img/product/NEFF DAILY WILD/1.jpg','/static/img/product/NEFF DAILY WILD/2.jpg','/static/img/product/NEFF DAILY WILD/3.jpg','/static/img/product/NEFF DAILY WILD/4.jpg','/static/img/product/NEFF DAILY WILD/5.jpg'],
			'p7':['/static/img/product/Lightning Bear kids/1.jpg','/static/img/product/Lightning Bear kids/2.jpg','/static/img/product/Lightning Bear kids/3.jpg','/static/img/product/Lightning Bear kids/4.jpg','/static/img/product/Lightning Bear kids/5.jpg'],
			'p8':['/static/img/product/5cm/1.jpg','/static/img/product/5cm/2.jpg','/static/img/product/5cm/3.jpg','/static/img/product/5cm/4.jpg','/static/img/product/5cm/5.jpg'],
			'p9':['/static/img/product/5cm_1/1.jpg','/static/img/product/5cm_1/2.jpg','/static/img/product/5cm_1/3.jpg','/static/img/product/5cm_1/4.jpg','/static/img/product/5cm_1/5.jpg'],
			'p10':['/static/img/product/BLACKJACK/1.jpg','/static/img/product/BLACKJACK/2.jpg','/static/img/product/BLACKJACK/3.jpg','/static/img/product/BLACKJACK/4.jpg','/static/img/product/BLACKJACK/5.jpg'],
			'p11':['/static/img/product/Alpinestars/1.jpg','/static/img/product/Alpinestars/2.jpg','/static/img/product/Alpinestars/3.jpg','/static/img/product/Alpinestars/4.jpg','/static/img/product/Alpinestars/5.jpg'],
			'p12':['/static/img/product/hipanda/1.jpg','/static/img/product/hipanda/2.jpg','/static/img/product/hipanda/3.jpg','/static/img/product/hipanda/4.jpg','/static/img/product/hipanda/5.jpg'],
			'p13':['/static/img/product/oasso/1.jpg','/static/img/product/oasso/2.jpg','/static/img/product/oasso/3.jpg','/static/img/product/oasso/4.jpg','/static/img/product/oasso/5.jpg'],
			'p14':['/static/img/product/oasso_1/1.jpg','/static/img/product/oasso_1/2.jpg','/static/img/product/oasso_1/3.jpg','/static/img/product/oasso_1/4.jpg','/static/img/product/oasso_1/5.jpg'],
			'p15':['/static/img/product/INTOUCH/1.jpg','/static/img/product/INTOUCH/2.jpg','/static/img/product/INTOUCH/3.jpg','/static/img/product/INTOUCH/4.jpg','/static/img/product/INTOUCH/5.jpg']
	};
	
	function getP(i){
		return Product[i];
	}
	
	var url = window.location.href;
	var a = url.split('?')[1];
	var aa = 'p'+a.split('=')[1];
	
	var array = getP(aa);
	
	$('.img1').attr('src','/E-shop'+array[1]);
	$('.img2').attr('src','/E-shop'+array[2]);
	$('.img3').attr('src','/E-shop'+array[3]);
	$('.img4').attr('src','/E-shop'+array[4]);
	$('.img5').attr('src','/E-shop'+array[5]);

})
