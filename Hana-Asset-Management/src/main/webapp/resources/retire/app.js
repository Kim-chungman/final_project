$('header .btn_menu').click(function(){
    $('nav').show();
});

$('nav .title img').click(function(){
    $('nav').hide();
});

$('header .btn_search').click(function(){
    $('header .search').show();
});

$('nav .gnb > li > a').click(function(){
    $('nav .lnb').hide();
    $(this).next('.lnb').show();
});

$('header .search').click(function(){
    $('header .search').hide();
});

$('header .search div').click(function(e){
    e.stopPropagation();
});

$('.btn_share').click(function(){
    $('.share').show();
    
    shareTitle 	= $(this).find("input[name='shareTitle']").val();
    shareURL 	= $(this).find("input[name='shareURL']").val();
    imgURL 		= $(this).find("input[name='shareImgURL']").val();
});

function shareShow(e){
    $('.share').show();
    
    shareTitle 	= $(e).find("input[name='shareTitle']").val();
    shareURL 	= $(e).find("input[name='shareURL']").val();
    imgURL 		= $(e).find("input[name='shareImgURL']").val();
}


$('.share, .share .wrap span a, .share .wrap p img').click(function(){
    $('.share').hide();
});

$('.share .wrap').click(function(e){
    e.stopPropagation();
});

var shareTitle 	= "";
var shareURL 	= "";
var imgURL 		= "";

function shareSubmit(sns){
	
	if(sns != "" || shareURL != "" || shareTitle != ""){
		cosmosfarm_share(sns, shareURL, shareTitle, imgURL);
	}else{
		alert('공유 할수 없습니다.');
	}
}