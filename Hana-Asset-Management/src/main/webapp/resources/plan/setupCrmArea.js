	function setupCrmArea() {
		
		var gHostName = document.location.hostname;
		
		
		$('*').on('click', function() {
	
			// *tag_div_id : 추출할 영역별 div id **/
			var tag_div_id = "";
	
			// * _BT_TRK : 호출할 이미지 target url **/
			var _BT_TRK = strSelfUrl+"Dream?withyou=CMCOM0409"
	
			// * _BT_DEBUG_ : debug "on" 으로 값을 변경시 url을 alert 으로 출력 **/
			var _BT_DEBUG_ = "off"
	
			// *영역별 div id 추출 **/
	
			tag_div_id = $(this).parents("[name=crmArea]").attr("id");
	
			if (tag_div_id == undefined) {
	
				return true;
			}
	
			if (tag_div_id != null && tag_div_id != "") {
	
				var _BT_ret = _BT_TRK + "&crmArea=" + tag_div_id;
				var img = new Image();
	
				img.src = _BT_ret;
				img.onload = function() {
					return;
				};
				
				if (typeof (_BT_DEBUG_) != "undefined" && _BT_DEBUG_ == "on")
					alert(_BT_ret);
	
				return _BT_ret;
			}
		});
	
	}