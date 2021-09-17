function showErrMsgTopArea(resultArea, msgCode, msg , isScroll)
{

	 
	if(msg.indexOf("error-area-TopLayer")<0)
	{
		if(jQuery("#error-area-TopLayer_container").length > 0)
		{			 
			msg = jQuery("#error-area-TopLayer_container").html();
		}
	}
	$('#' + resultArea).wbUI('loadErrorArea', msg);   
	if(!isScroll || isScroll) $('#container > .error-wrap' ).wbUI('scroll');
}
 
function closeErrorArea()
{
	
	$("#error-area-TopLayer").parents(".pop-wrap").remove();
	$("#error-area-TopLayer").remove();
}
function clearErrMsgTopArea(isPopup)
{
	var html = '';
	var resultArea='content';
	if(isPopup)
	{
		 resultArea='pop-content';
	}
	$('#' + resultArea ).wbUI('loadErrorArea', html);   
}
function setPopupCookie(   checkName, cookieName,  notOpenToday) {
    //noOpenToday가 0이아니면  쿠키설정
    if( notOpenToday != 0 ){
    	//체크박스가 체크되었을때만 쿠키저장.
    	 
    	if($("#" + checkName).attr("checked")){
    		setOpenCookie( cookieName , "checked" ,notOpenToday );
    		 
    	}
    	else
    	{
    		 
    		setOpenCookie( cookieName , "checked" ,-1 );
    	}
    	
    	 
    } 
}
function closeOpenPopupWin(isLayer, popupId) {
    //noOpenToday가 0이아니면  쿠키설정
		if("T"==isLayer) $("#" + popupId).remove();
    	else window.close();
    
}	
function setOpenCookie( name, value, expiredays )
{
	 var today = new Date();
	 today.setDate( today.getDate() + expiredays );	
	 document.cookie = name + "=" + escape( value ) + "; domain=.wooribank.com; path=/; expires=" + today.toGMTString() + ";";
	  
}
function reLocationPushPop(popupId, top, left, width, height){
	
	 $("#" + popupId).css({'position':'absolute','z-index':0,'top':top+'px','left':left+'px','height':height+'px','width':width+6+'px'});
}
function controlBtn(kubun, filterStr, msg)
{ 
	if(kubun=='DISABLE')
	{
		jQuery(filterStr).attr("disabled","disabled");	
	}
	else if(kubun=='REMOVE')
	{
		 
		jQuery(filterStr).remove();	
	}
	else if(kubun=='ALERT')
	{
		jQuery(filterStr).removeAttr("onclick");	
		jQuery(filterStr).click( function(event) {
			event.preventDefault(); 
			alert(msg);
			
			}
		);
	}		
}
function openHelp(page)
{
	var url = 'help?page=' + page ;
	 
	var width = 500;
	var height = 600;
	jsOpenWindow(url , "help_win" ,   width , height, '1', '1');			
}
function openPopup(url, id, top, left, height, width)
{
 
	window.open(url , "win_" + id , "top=" + top + ",left=" + left + ",width=" + width + ",height="  + height);
    	
}
function closeLayer(id)
{
  	jQuery("#" + id).css("display", "none");
}
function openLayer(id)
{
  	jQuery("#" + id).css("display", "inline");
}
 
