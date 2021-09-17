
/**
 *  @name Veraport V2 - veraport20.js
 *  @author wizvera
 *  @date 2013.01.18 with Windows v2.5.2.1
**/

var VP_SystemLang = "KOR";  //"KOR", "ENG", "CHN", "JPN"
var VP_SiteName = "";

if (typeof ML_LCL != "undefined" && ML_LCL != '') VP_SystemLang = "ENG";
if (typeof _SITE_SystemLang != "undefined") VP_SystemLang = _SITE_SystemLang;
if (typeof _SITE_SiteName != "undefined") VP_SiteName = _SITE_SiteName;

var VP_platformInfo     = vp_getPlatformInfo();
var VP_browserInfo      = vp_getBrowserInfo();
var VP_platformSupport  = {
    WinMoz:true, Win64:true, MultiOS:true
};

/* default base */
//var VP_DOMAIN_URL	= document.location.protocol+"//"+"w1www.wooribank.com";
// <%@ page import="wbf.web.UrlUtil" %><%=wbf.web.UrlUtil.getWWWURL()%><%=wbf.web.UrlUtil.getDomainUrl()%>

var VP_DOMAIN_URL	= "https://www.wooribank.com";
var VP_DOMAIN_URL_SSL = "https://www.wooribank.com";
var VP_SPOT_URL =  "https://spot.wooribank.com/pot/";

if (document.location.host.indexOf("w1spot.wooribank.com") > 0) {
	VP_SPOT_URL =  "https://w1spot.wooribank.com/pot/";
}
/*
var VP_DOMAIN_URL	= "http://w1www.wooribank.com";
var VP_DOMAIN_URL_SSL = "https://w1www.wooribank.com";
var VP_SPOT_URL =  "https://w1spot.wooribank.com/pot";
*/
if (typeof _WWW_URL != "undefined") VP_DOMAIN_URL = _WWW_URL;
if (typeof _WWW_SSL_URL != "undefined") VP_DOMAIN_URL_SSL = _WWW_SSL_URL;
//if (typeof _DOMAIN_URL != "undefined") VP_SPOT_URL = _DOMAIN_URL;
var VP_SITE_URL     = document.location.protocol+"//"+document.location.host;
//var VP_SITE_URL     = "https://spib.wooribank.com";
var VP_BASE_URL     = VP_SITE_URL + "/js/com/wizvera/veraport";
var VP_HTML_URL     = VP_BASE_URL;
var VP_UPDATE_URL   = "";
var VP_DOWN_URL		= VP_DOMAIN_URL + "/download/veraport";
var VP_DOWN_URL_SSL	= VP_DOMAIN_URL_SSL + "/download/veraport";
var VP_CDN_URL		= VP_DOWN_URL;
//"http://dn.wizvera.com/svc/wooribank/veraport";

/* default config */
var VP_config = {
	version         : "2,8,5,1",
    mimeType        : "application/x-veraport20-plugin",
    CLSID           : "CLSID:477D5B9A-6479-44F8-9718-9340119B0308",

    //cabURL          : VP_DOWN_URL + "/veraport20.cab",
    cabURL          : VP_DOWN_URL_SSL + "/veraport20.cab",
    exeURL          : VP_CDN_URL + "/veraport20moz.exe",
    axInfoURL       : VP_BASE_URL + "/dist/wooribank_open_axinfo.dist",
    installPage		: VP_HTML_URL + "/install/install.html",
	//installPage     : VP_HTML_URL + "/install/install_must.html?P_name=Veraport",
    installType     : "", //NONE, TOP
    domainCookie    : false,
    isCreateObject  : true,
    isCabInstall    : false,

    logoSmall       : VP_BASE_URL + "/sitelogo/logo_small.gif",
    msgSmall        : VP_BASE_URL + "/sitelogo/msg_small.gif",
    logoLarge       : "", //VP_BASE_URL + "/sitelogo/logo_large.gif",
    msgLarge        : VP_BASE_URL + "/sitelogo/msg_large.gif",
    //msgInfo         : VP_BASE_URL + "/sitelogo/msg_info.html",
	msgInfo         : "",
    agreePageURL    : VP_BASE_URL + "/sitelogo/agreement.html",

    cliInfoSendURL  : VP_SPOT_URL + "Dream?withyou=CMCOM0282",
    logInfoSendURL  : VP_SPOT_URL + "Dream?withyou=CMCOM0283"
};

{ /* check isCreateObject, isCabInstall */
    var thisPage = window.location.href;
    if (thisPage.indexOf(VP_config.installPage)>=0) VP_config.isCabInstall = false;
    if (thisPage.indexOf("/info_pib.html")>=0) VP_config.isCabInstall = true;
	if (thisPage.indexOf("/info_biz.html")>=0) VP_config.isCabInstall = true;
    if (thisPage.indexOf("VP=install")>=0) {
        if (VP_browserInfo.MSIE) VP_config.isCreateObject = false;
        VP_config.isCabInstall = true;
    }
}

/* platform modify config */
if (VP_platformSupport.WinMoz && !VP_browserInfo.MSIE) {
    VP_config.axInfoURL = VP_BASE_URL + "/dist/wooribank_open_plinfo.dist";
}
if (!VP_browserInfo.MSIE) { //WinMoz
    VP_config.exeURL = VP_CDN_URL + "/veraport20moz.exe";
    VP_config.installPage = VP_HTML_URL + "/install/install_multi.html";
    if(VP_SystemLang == "ENG") VP_config.installPage = VP_HTML_URL + "/install/install_multi_eng.html";
} else {
	if(VP_SystemLang == "ENG") VP_config.installPage = VP_HTML_URL + "/install/install_eng.html";
}
if (VP_platformInfo.x64) { //Win64
    //VP_config.cabURL = VP_DOWN_URL + "/veraport20-x64.cab";
    VP_config.cabURL = VP_DOWN_URL_SSL + "/veraport20-x64.cab";
    VP_config.exeURL = VP_CDN_URL + "/veraport20-x64.exe";
}

//V2.5.2.3 over firefox
if (VP_platformInfo.Windows && VP_browserInfo.Firefox) VP_config.installCB = true;

/* Constant */
var VP_USE_COOKIE       = "Veraport20Use";
var VP_DEBUG_COOKIE     = "Veraport20Debug";
var VP_UPDATE_COOKIE    = "Veraport20Update";
var VP_INSTALL_COOKIE   = "Veraport20Install";

var VP_TYPE_SIMPLE      = "simple";
var VP_TYPE_MINI        = "mini";
var VP_TYPE_NORMAL      = "normal";
var VP_TYPE_FULL        = "full";
var VP_TYPE_MANAGE      = "manage";

var VP_CONF_AXINFOURL   = "axinfourl";
var VP_CONF_TYPE        = "type";
var VP_CONF_LOGOURL     = "logourl";
var VP_CONF_MSGURL      = "msgurl";
var VP_CONF_WEBINFOURL  = "webinfourl";
var VP_CONF_INFOPAGEURL = "infopageurl";
var VP_CONF_LANGUAGE    = "language";
var VP_CONF_CISENDURL   = "clientinfosendurl";
var VP_CONF_ILSENDURL   = "installlogsendurl";
var VP_CONF_SILENCE     = "silence";
var VP_CONF_SENDVPINFO  = "sendvpinfo";
var VP_CONF_INSTALLGUIDE= "installguide";
var VP_CONF_SELECTOBJECT= "selectobject";
var VP_CONF_DOMAIN      = "domain";
var VP_CONF_INITXPOS    = "initxpos";
var VP_CONF_INITYPOS    = "initypos";
var VP_CONF_SELECTOBJECT_ALL = "all";
var VP_CONF_BROWSER     = "browser";
var VP_CONF_AXINFO      = "axinfo";
var VP_CONF_BLOCKCHECK  = "blockcheck";
var VP_CONF_CONFIRMUNLOAD = "confirmunload";

var VP_TRUE             = 1;
var VP_FALSE            = 0;
var VP_DELAY            = 200; //ms

/****************************************
***** modify site information begin *****
*****************************************/
var VP_TYPE_MUST        = VP_TYPE_FULL; //VP_TYPE_SIMPLE, VP_TYPE_MINI, VP_TYPE_NORMAL, VP_TYPE_FULL
var VP_TYPE_SELECT      = VP_TYPE_FULL;
var VP_SITE_ID          = VP_SiteName; //"wizvera";

if (VP_SITE_ID == "wizvera") {
    VP_config.cliInfoSendURL = "http://veraport.wizvera.com/wizvera/recv/recvClientInfo.jsp";
    VP_config.logInfoSendURL = "http://veraport.wizvera.com/wizvera/recv/recvInstallLog.jsp";
} else if (VP_SITE_ID == "verain") {
    VP_config.axInfoURL      = VP_BASE_URL + "/dist/axinfo.dist";
    VP_config.cliInfoSendURL = "";
    VP_config.logInfoSendURL = "";
}
if (typeof veraport_plugin_info != "undefined") {
	if( veraport_plugin_info.OBJECT_VERSION != null && veraport_plugin_info.OBJECT_VERSION != "")
	{
		VP_config.version = veraport_plugin_info.OBJECT_VERSION;
	}
}

var vp_AgreeSiteID      = document.location.host;
var vp_AgreeInstall     = VP_FALSE; //VP_TRUE; windows view opt default FALSE
var vp_AgreeDefUse      = VP_FALSE; //err check opt default FALSE

var _axInfoList			= null;		// getAxInfoList
/****************************************
***** modify site information end *****
*****************************************/

/* Initialize */
try {
    //vp_notUse();
    //vp_setDebug();
    //if (VP_browserInfo.MSIE && !VP_browserInfo.VeraIN) vp_notUse(); //IE is veraport off(VeraIN on)

    vp_checkBrowser();
    if (VP_platformInfo.Windows && VP_config.isCreateObject) {
        vp_createObject();
        vp_init();
        //vp_update();
    }
}
catch(err) {
   vp_alert("vp_Main[" + err.description  + "]");
}

/****************************************
**********   OPEN API begin    **********
*****************************************/

//[OPEN API] set axInfoUrl
function VP_setAxInfoUrl(axInfoUrl) {
    VP_config.axInfoURL = axInfoUrl;
    vp_setAxInfoUrl(VP_config.axInfoURL);
}

// [OPEN API] View Active-X Management
function VP_axManage() {
    VP_axInstall(VP_TYPE_MANAGE, false, '');
}

// [OPEN API] Required Install Active-X
function VP_axInstallMust() {
    VP_axInstall(VP_TYPE_MUST, true, '');
}

// [OPEN API] ALL Install Active-X
function VP_axInstallAll() {
    VP_axInstall(VP_TYPE_MUST, true, VP_CONF_SELECTOBJECT_ALL);
}

// [OPEN API] Select Install Active-X
function VP_axInstallSelect(objectName) {
    VP_axInstall(VP_TYPE_SELECT, true, objectName);
}

// [OPEN API] Install Active-X
function VP_axInstall(installType, goInstallPage, objectName) {
    if(VP_browserInfo.MSIE && typeof(this.document.Vp20Ctl) == "undefined") VP_config.installType = "NONE";
    if(!vp_checkVp20Install(goInstallPage)) return;
    vp_setSelectObject(objectName);
    vp_showVeraport(installType);
	vp_setForceInstall("");
    if (VP_platformInfo.Windows && !VP_browserInfo.MSIE) navigator.plugins.refresh(false);
}

//[OPEN API] Not Install Count Must
function VP_axCountMust() {
    return vp_getUninstalledCnt(0);
}

//[OPEN API] Not Install Count Opt
function VP_axCountOpt() {
    return vp_getUninstalledCnt(1);
}

//[OPEN API] set trustedSite
function VP_setTrustedSite(trustedSite) {
    //trustedSite = "*.wizvera.com,veraport.wizvera.com";
    if (!vp_isAvailable("VP_setTrustedSite", "2,0,0,22")) return;
    if (trustedSite == "") trustedSite = document.location.hostname;
    vp_setConfigure("trustedsite", trustedSite);
}

/***************************************
Previous version compatibility (bank.keb.co.kr)
/****************************************/
function VeraPortSetNbebank() {
    //VP_setAxInfoUrl("http://acs.keb.co.kr/dist/nbebank.dist");
}
function VeraPortShowAndInstall() {
    //alert("Warning delete function(VeraportShowAndInstall). used VP_axInstallMust()\n\tURL:" + location.pathname);
    //vp_showVeraport(VP_TYPE_NORMAL);
    VP_axInstall(VP_TYPE_MUST, false, '');
}
function VeraPortShow() {
    //alert("Warning delete function(VeraPortShow). used VP_axManage()\n\tURL:" + location.pathname);
    //vp_showVeraport(VP_TYPE_MANAGE);
    VP_axInstall(VP_TYPE_MANAGE, false, '');
}
function VP_isUse() {
	return vp_isUse();
}
function VeraPortInstallCheck() {
	return vp_checkVp20Install(false);
}
var VP_VeraPortInstallUrl = VP_config.installPage;
/*
function VeraPortSetYescard() {
    //VP_setAxInfoUrl("http://acs.keb.co.kr/dist/yescard.dist");
}
function VeraPortSetB2c() {
    //VP_setAxInfoUrl("http://acs.keb.co.kr/dist/b2c.dist");
}
function VeraPortShowAndInstallEn() {
}
function VeraPortShowEn() {
}
*/

/***************************************
Previous version compatibility (hanabank.com, scfirstbank.com)
/****************************************/
function SetAxInfoName(dist_name) {
    alert("Warning delete function(SetAxInfoName). used VP_axInstallSelect(objectName)\n\tURL:" + location.pathname);
    //VP_config.axInfoURL = VP_BASE_URL + "/down/dist/" + dist_name;
    //vp_setAxInfoUrl(VP_config.axInfoURL);
    VP_setAxInfoUrl(VP_BASE_URL + "/down/dist/" + dist_name);
}
function VeraportShowAndInstall() {
    //alert("Warning delete function(VeraportShowAndInstall). used VP_axInstallMust()\n\tURL:" + location.pathname);
    //vp_showVeraport(VP_TYPE_NORMAL);
    VP_axInstall(VP_TYPE_MUST, false, '');
}
function VeraportShow() {
    //alert("Warning delete function(VeraportShow). used VP_axManage()\n\tURL:" + location.pathname);
    //vp_showVeraport(VP_TYPE_MANAGE);
    VP_axInstall(VP_TYPE_MANAGE, false, '');
}
function VeraportSelectInstall(axname,viewtype) {
    //alert("Warning delete function(VeraportSelectInstall). used VP_axInstallSelect(objectName)\n\tURL:" + location.pathname);
    //vp_setSelectObject(axname);
    //vp_showVeraport(viewtype);
    VP_axInstall(viewtype, false, axname);
}
function VP_getInstallStatus(objectName) {
    //if(VP_browserInfo.MSIE && typeof(this.document.Vp20Ctl) == "undefined") VP_config.installType = "NONE";
    //if(!vp_checkVp20Install(true)) return;
    //if (_axInfoList == null) {
    vp_init();
    _axInfoList = vp_getAxInfoList();
    //}
    var axInfo = vp_getAxInfo(_axInfoList, objectName);
    if (axInfo == null) return null;
    if (axInfo.installStatus) return true;
    return false;
}
/****************************************
**********   OPEN API end      **********
*****************************************/

/* functions */
function vp_init() {
    //vp_setWindowPosition(-100, -100); //add v2,0,0,20
	vp_setDomain(VP_DOMAIN_URL); //add 2013.01.16
    vp_setAxInfoUrl(VP_config.axInfoURL);
    vp_setLogo(VP_config.logoLarge);
    vp_setMsg(VP_config.msgLarge);
    vp_setWebInfo(VP_config.msgInfo);
    vp_setType(VP_TYPE_MANAGE);
    vp_setLogSendUrl(VP_config.logInfoSendURL);
    vp_setClientInfoSendUrl(VP_config.cliInfoSendURL);
    vp_setSelectObject("");
    vp_setSendVpInfo(false);
    if (VP_SystemLang == "ENG") {
        vp_setConfigure("language", "eng");
    } else if (VP_SystemLang == "CHN") {
        vp_setConfigure("language", "eng");
    } else if (VP_SystemLang == "JPN") {
        vp_setConfigure("language", "eng");
    }

    //vp_setBrowser(); //v2.5.2.0
    //vp_setConfigure(VP_CONF_CONFIRMUNLOAD, "true"); //v2.5.2.0
    //vp_setConfigure(VP_CONF_LANGUAGE, "eng");
    //vp_setConfigure(VP_CONF_BLOCKCHECK,"yes");
    //vp_setConfigure("trustedsite","http://wooribank.com,http://www.wooribank.com");
	vp_setInstallGuide(VP_SPOT_URL+"Dream?withyou=CQSCT0062");
}
function vp_getUninstalledCnt(objType) {
    var obj = vp_getObject();
    if(obj == null) return -1;
    vp_loadInfo();
    var unInstallCnt = obj.GetUninstalledCnt(objType);
    //alert(installCnt + ":" + objType);
    return unInstallCnt;
}
function vp_isAvailable(fnName, inVersion) {
    var thisArray = VP_config.version.split(',');
    var inputArray = inVersion.split(',');
    for (var i=0; i<4; i++) {
        if (parseInt(thisArray[i], 10) > parseInt(inputArray[i], 10)) {
            return true;
        } else if (parseInt(thisArray[i], 10) < parseInt(inputArray[i], 10)) {
            vp_alert("vp_isAvailable[function:" + fnName + "is not support][version:" + inVersion + "]");
            return false;
        }
    }
    return true;
}
function vp_setWindowPosition(xPos, yPos) {
    if (!vp_isAvailable("vp_setRequireAgreement", "2,0,0,20")) return;
    vp_setConfigure(VP_CONF_INITXPOS,xPos);
    vp_setConfigure(VP_CONF_INITYPOS,yPos);
}
function vp_setRequireAgreement(agree,siteid,url,defuse) {
    if (!vp_isAvailable("vp_setRequireAgreement", "2,0,0,8")) return;
    var obj = vp_getObject();
    if(obj == null) return "null";
    return obj.SetRequireAgreement(agree,siteid,url,defuse); //windows view, no error check
}
function vp_notUpdateToDay(days)
{
    var today = new Date();
    var expiry = new Date(today.getTime() + days * 24 * 60 * 60 * 1000);
    document.cookie=VP_UPDATE_COOKIE+"=N; path=/; expires=" + expiry.toGMTString();
}
function vp_update() {
    var obj = vp_getObject();
    if(obj == null) return "null";

    //alert(document.cookie);
    if (vp_getCookie(VP_UPDATE_COOKIE) == "N")
        return;

    //alert(document.cookie);
    vp_notUpdateToDay(1);
    return obj.Update(VP_UPDATE_URL);
}
function vp_checkVp20Plugin() {
    var plugins = navigator.plugins;
    if(plugins == null || plugins.length == 0) return false;
    for(var i=0;i<plugins.length;i++) {
        //modify 2010.11.02
        if (typeof(plugins[i][0]) == "undefined") continue;
        if(VP_config.mimeType == plugins[i][0].type ) return true;
    }
    return false;
}
function vp_checkVp20Plugin_update_test() {
    var plugins = navigator.plugins;
    if(plugins == null || plugins.length == 0) return false;

    var myMimetype = navigator.mimeTypes[VP_config.mimeType];
    if(myMimetype == null || myMimetype == "undefined") return false;

    var pluginDesc = myMimetype.enabledPlugin.description;
    var idx = pluginDesc.lastIndexOf("(");
    var installVer = pluginDesc.substring(idx+1);
    installVer = installVer.substr(0,installVer.length-1);
    var updateVer = VP_config.version.replace(/,/gi,"");
    if( updateVer > installVer ) return false;
    return true;
}
function vp_checkVp20Install(goInstallPage) {
    if (!vp_isUse()) return false;
    try {
        if (!VP_browserInfo.MSIE) {
            var myMimetype = navigator.mimeTypes[VP_config.mimeType];
            //modify 2010.08.23
            if ( myMimetype && vp_checkVp20Plugin()) {
                //alert("installOK:" + myMimetype);
            }
            else {
                //alert("not install:" + myMimetype);
                if (goInstallPage) vp_goVp20InstallPage();
                return false;
            }
        }
        else {
            if( ((typeof(this.document.Vp20Ctl) == "undefined") || (this.document.Vp20Ctl == "undefined")
                ||(this.document.Vp20Ctl == null) || (this.document.Vp20Ctl.object == null) )) {
                if (goInstallPage) vp_goVp20InstallPage();
                return false;
            }
        }
    }
    catch(err) {
        vp_alert("vp_checkVp20Install[" + err.description + "]");
    }
    return true;
}
function vp_getDomain() {
    var thisDomain = document.location.hostname;
    try {
        var idx = thisDomain.indexOf(".");
        thisDomain = thisDomain.substring(idx+1);
    } catch(err) {
        alert("[Veraport]["+err.number+"]\n vp_getDomain[" + thisDomain + "][" + err.description + "]");
    }
    return thisDomain;
}
function vp_goVp20InstallPage(isReplase) {
    var thisDomain = vp_getDomain();
    if (VP_config.installPage.indexOf(thisDomain)<0) {
        if (vp_getCookie(VP_INSTALL_COOKIE) == "Y") {
            document.cookie=VP_INSTALL_COOKIE+"=N; path=/;";
            //alert("Not goInstallPage:" + VP_config.installPage + "\n" + thisDomain + "\n" + VP_config.installPage.indexOf(thisDomain));
            return;
        }
        document.cookie=VP_INSTALL_COOKIE+"=Y; path=/;";
    }

    var thisPage = window.location.href;
    if (thisPage.indexOf(VP_config.installPage) < 0 && VP_config.installType != "NONE") {
        var encodedThisPage = encodeURIComponent(thisPage);
        if (VP_config.installPage.indexOf('?') < 0) {
            parameter = "?url=" + encodedThisPage;
        } else {
            parameter = "&url=" + encodedThisPage;
        }

        if (VP_config.installType == "TOP") {
            if (isReplase != null && isReplase == true) {
                top.window.location.replace(VP_config.installPage + parameter);
            } else {
                top.window.location.href = VP_config.installPage + parameter;
            }
        } else {
            if (isReplase != null && isReplase == true) {
                window.location.replace(VP_config.installPage + parameter);
            } else {
            	window.location.href = VP_config.installPage + parameter;
            	//window.location.replace(VP_config.installPage + parameter);
            }
        }
    }
}
function vp_checkBrowser() {
    try {
        if (VP_platformInfo.Mobile) {
            vp_notUse();
        } else if (!VP_platformInfo.Windows) {
            if (!VP_platformSupport.MultiOS) vp_notUse();
        } else if (VP_platformInfo.x64) {
            if (!VP_platformSupport.Win64) vp_notUse();
        } else if(navigator.platform != "Win32") {
            vp_notUse();
        }

        if (!VP_browserInfo.MSIE) {
            if (!VP_platformSupport.WinMoz) vp_notUse();
            if (navigator.appName != 'Netscape' && navigator.appName != 'Opera') vp_notUse();
            //if (VP_browserInfo.ETC) vp_notUse();
        }
        else {
            if (VP_browserInfo.version < 5.0) vp_notUse();
            var os = window.navigator.appVersion;
            if(os.indexOf(" Windows 98") != -1 || os.indexOf(" Windows 95") != -1
                || os.indexOf(" Windows NT 4.0") != -1) vp_notUse();
        }

        if (!vp_isUse()) {
            var msg  = "Browser Information\t\t[" + VP_platformInfo.type + "," + VP_platformInfo.name + "][" + VP_browserInfo.name + "," + VP_browserInfo.version + "]\n\n";
                msg += "Navigator Information\n";
                msg += "navigator.platform\t\t[" + navigator.platform + "]\n";
                msg += "navigator.appName\t\t[" + navigator.appName + "]\n";
                msg += "navigator.appCodeName\t[" + navigator.appCodeName + "]\n";
                msg += "navigator.systemLanguage\t[" + navigator.systemLanguage + "]\n";
                msg += "navigator.javaEnabled()\t[" + navigator.javaEnabled() + "]\n";
                msg += "navigator.language\t\t[" + navigator.language + "]\n";
                msg += "navigator.cpuClass\t\t[" + navigator.cpuClass + "]\n";
                msg += "navigator.appVersion\t[" + navigator.appVersion + "]\n";
                msg += "navigator.userAgent\t\t[" + navigator.userAgent + "]\n";

            vp_alert(msg);
        }
    }
    catch(err) {
        vp_alert("vp_checkBrowser[" + err.description + "]");
        vp_notUse();
    }
}

function vp_getCookie( name ) {
    try {
        var nameOfCookie = name + "=";
        var x = 0;
        while ( x <= document.cookie.length ) {
        var y = (x+nameOfCookie.length);
        if ( document.cookie.substring( x, y ) == nameOfCookie ) {
           if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
                endOfCookie = document.cookie.length;
           return unescape( document.cookie.substring( y, endOfCookie ) );
        }
           x = document.cookie.indexOf( " ", x ) + 1;
           if ( x == 0 ) break;
        }
    }
    catch(err) {
        vp_alert("vp_getCookie[" + err.description + "]");
    }
    return "";
}

function vp_isUse() {
    if (vp_getCookie(VP_USE_COOKIE) == "N") return false;
    return true;
}
function vp_setUse() {
    if (VP_config.domainCookie) {
        document.cookie=VP_USE_COOKIE+"=Y; path=/; domain=." + vp_getDomain();
    } else {
        document.cookie=VP_USE_COOKIE+"=Y; path=/;";
    }
}
function vp_notUse() {
    if (VP_config.domainCookie) {
        document.cookie=VP_USE_COOKIE+"=N; path=/; domain=." + vp_getDomain();
    } else {
        document.cookie=VP_USE_COOKIE+"=N; path=/;";
    }
}
function vp_setDebug() {
    if (VP_config.domainCookie) {
        document.cookie=VP_DEBUG_COOKIE+"=Y; path=/; domain=." + vp_getDomain();
    } else {
        document.cookie=VP_DEBUG_COOKIE+"=Y; path=/;";
    }
}
function vp_notDebug() {
    if (VP_config.domainCookie) {
        document.cookie=VP_DEBUG_COOKIE+"=N; path=/; domain=." + vp_getDomain();
    } else {
        document.cookie=VP_DEBUG_COOKIE+"=N; path=/;";
    }
}
function vp_notUseDays(days) {
    var today = new Date();
    var expiry = new Date(today.getTime() + days * 24 * 60 * 60 * 1000);
    if (VP_config.domainCookie) {
        document.cookie=VP_USE_COOKIE+"=N; path=/; expires=" + expiry.toGMTString() + "; domain=." + vp_getDomain();
    } else {
        document.cookie=VP_USE_COOKIE+"=N; path=/; expires=" + expiry.toGMTString();
    }
}
function vp_isDebug() {
    if (vp_getCookie(VP_DEBUG_COOKIE) == "Y") return true;
    return false;
}
function vp_alert(msg) {
    if (vp_isDebug())
        alert("[Veraport][]\n"+msg);
    else
        document.cookie="Veraport20Alert=" + msg + "; path=/;";
}
function vp_createObject() {
    var objstr = "";
    if (!vp_isUse()) return;
    //add 2011.1.4 wizvera
    if (document.getElementById("Vp20Ctl") != null) return;
    if (!VP_browserInfo.MSIE) {
        //add 2010.08.23
        var myMimetype = navigator.mimeTypes[VP_config.mimeType];
        if ( myMimetype ) {
            objstr += '<embed ID="Vp20Ctl" width="0" height="0" ';
            objstr += 'codeBaseURL="' +  VP_config.cabURL + '#version=' + VP_config.version + '" ';
            objstr += 'type="' + VP_config.mimeType + '" />';
        }
    }
    else {
        //objstr += '<object id="Vp20Ctl" width="1" height="1" classid="';
        objstr += '<object id="Vp20Ctl" width="1" height="1" style="visibility:hidden;"  classid="';
        objstr += VP_config.CLSID;
        objstr += '" codebase="';
        if (VP_config.isCabInstall) objstr += VP_config.cabURL; ////modify 2012.07.30
        objstr += '#version=';
        objstr += VP_config.version;
        objstr += '"></object>';
    }
    //vp_alert(objstr);
    document.write(objstr);

    //add 2010.05.25 wizvera
    try {
        if(VP_browserInfo.MSIE && typeof(this.document.Vp20Ctl) == "undefined") {
            var debugMsg = "[" + typeof(this.document.Vp20Ctl) + "]";
            var el  = document.createElement("div");
            el.innerHTML = objstr;
            if (document.body != null) document.body.appendChild(el);
            if(typeof(this.document.Vp20Ctl) == "undefined") VP_config.installType = "NONE";
            debugMsg += "[" + typeof(this.document.Vp20Ctl) + "]";
            vp_alert("createObject:" +  debugMsg);
        }
    } catch(err) {
        VP_config.installType = "NONE";
        vp_alert("vp_createObject:[" + err.description + "]");
    }
}
function vp_getObject() {
    if(!vp_checkVp20Install(false)) return null;
    return document.getElementById("Vp20Ctl");
}
function vp_getLastError() {
    var obj = vp_getObject();
    if(obj == null) return "null";
    return obj.GetLastErrorMsg();
}
function vp_getConfigureAll() {
    var obj = vp_getObject();
    if(obj == null) return "null";
    return obj.GetConfigureAll();
}
function vp_getConfigureJson() {
    var obj = vp_getObject();
    if(obj == null) return "null";
    return obj.GetConfigureJson();
}
function vp_showVeraport(type) {

    vp_setDomain(VP_DOMAIN_URL); //add 2013.01.16
    vp_setAxInfoUrl(VP_config.axInfoURL);
    vp_setLogSendUrl(VP_config.logInfoSendURL);
    vp_setClientInfoSendUrl(VP_config.cliInfoSendURL);
    vp_setRequireAgreement(vp_AgreeInstall,vp_AgreeSiteID,VP_config.agreePageURL,vp_AgreeDefUse); //add v2,0,0,8

    var flag = 1;
    if(type ==  VP_TYPE_MANAGE || type ==  VP_TYPE_FULL) {
        vp_setLogo(VP_config.logoLarge);
        vp_setMsg(VP_config.msgLarge);
        vp_setWebInfo(VP_config.msgInfo);
        if (type == VP_TYPE_MANAGE && typeof(VP_config.msgLargeM) != "undefined" && typeof(VP_config.msgInfoM) != "undefined" ) {
            vp_setMsg(VP_config.msgLargeM);
            vp_setWebInfo(VP_config.msgInfoM);
        }
        if(type ==  VP_TYPE_MANAGE) flag = 0;
        //if( VP_platformInfo.Windows && VP_browserInfo.Firefox ) flag = 0;
    } else {
        vp_setLogo(VP_config.logoSmall);
        vp_setMsg(VP_config.msgSmall);
    }
    vp_setConfigure("type",type);
    
    //V2.5.2.3 firefox
    if (type!= VP_TYPE_MANAGE && vp_isInstallCB()) {
        vp_show(0);
		//alert("vp_completeCB");
        setTimeout("vp_completeCB()", 500);
    } else {
        vp_show(flag);
    }
}
function vp_isInstallCB() {
    if (VP_config.installCB==true && typeof(vp_getObject().IsRunning)!="undefined") return true;
    return false;
}
function vp_completeCB(){
    if (vp_getObject().IsRunning(1) == 0) {
        navigator.plugins.refresh(true);
        if (typeof VP_axInstallCB === "function") VP_axInstallCB();
    } else {
        setTimeout("vp_completeCB()", 500);
    }
}
function vp_setWebInfo(url) {
    vp_setConfigure(VP_CONF_WEBINFOURL,url);
}
function vp_setDomain(domain) {
    //if (!vp_isAvailable("vp_setDomain", "2,0,0,7")) return;
    vp_setConfigure(VP_CONF_DOMAIN,domain);
}
function vp_setBrowser() {
	var name = VP_browserInfo.name;
	var version = VP_browserInfo.version;
	if (VP_browserInfo.MSIE) name = "IE";
	vp_setConfigure(VP_CONF_BROWSER, browser_name+"/"+browser_version); //v2.5.2.0
}
function vp_setLanguage(lang) {
    if (lang == "KOR" || lang == "kor") {
        vp_setConfigure(VP_CONF_LANGUAGE, "kor");
    } else if (lang == "ENG" || lang == "eng") {
        vp_setConfigure(VP_CONF_LANGUAGE, "eng");
    } else if (lang == "CHN" || lang == "chn") {
        vp_setConfigure(VP_CONF_LANGUAGE, "eng");
    } else if (lang == "JPN" || lang == "jpn") {
        vp_setConfigure(VP_CONF_LANGUAGE, "eng");
    }
}
function vp_setMsg(url) {
    vp_setConfigure(VP_CONF_MSGURL,url);
}
function vp_setLogo(url) {
    vp_setConfigure(VP_CONF_LOGOURL,url);
}
function vp_setClientInfoSendUrl(url) {
    vp_setConfigure(VP_CONF_CISENDURL,url);
}
function vp_setLogSendUrl(url) {
    vp_setConfigure(VP_CONF_ILSENDURL,url);
}
function vp_setAxInfoUrl(url){
    VP_config.axInfoURL = url;
    vp_setConfigure(VP_CONF_AXINFOURL, url);
}
function vp_setType(type) {
    vp_setConfigure(VP_CONF_TYPE,type);
}
function vp_setInstallGuide(url) {
    vp_setConfigure(VP_CONF_INSTALLGUIDE,url);
}
function vp_delay(gap){
    if (gap < 0) return;
    var then,now;
    then=new Date().getTime();
    now=then;
    while((now-then)<gap) {
        now=new Date().getTime();
    }
}
function vp_show(flag) {
    var obj = vp_getObject();
    if(obj == null) return;
    vp_loadInfo();
    //obj.ShowType(flag);
    var res = obj.ShowType(flag);
    try {
        if(res == 0) { // fail
            var code = obj.GetLastErrorCode(); //add v2,0,0,8
            if(code == 58) vp_notUse();
        }
        else {
            vp_delay(VP_DELAY);
        }
    } catch(err) {
        vp_alert("vp_show:deplay[" + err.description + "]");
    }
}
function vp_setConfigure(key,value) {
    var obj = vp_getObject();
    if(obj == null) return;
    obj.SetConfigure(key,value);
}
function vp_uninstallAll() {
    var obj = vp_getObject();
    if(obj == null) return;
    obj.UninstallAll();
}
function vp_loadInfo() {
    var obj = vp_getObject();
    if(obj == null) return "null";
    var ret = obj.LoadInfo("");
    return ret;
}
function vp_setSendVpInfo(flag) {
    vp_setConfigure(VP_CONF_SENDVPINFO,flag);
}
function vp_SetSendVpInfo(flag) {
    vp_setSendVpInfo(flag);
}
function vp_setSelectObject(name) {
    vp_setConfigure(VP_CONF_SELECTOBJECT,name);
}
function vp_setForceInstall(name) {
	vp_setConfigure("forceinstall",name);
}
function vp_getDistInfo() {
    var retDistInfo = {version: "", createDate: "", allowDomains: ""};
    try {
        var obj = vp_getObject();
        if(obj == null) return null;
        vp_loadInfo();
        var distinfo = eval(obj.GetDistributeInfo());

        retDistInfo.version = (distinfo[0].version == 0) ? "1.0" : "2.0";
        if(distinfo[0].verstring != null && distinfo[0].verstring != "undefined")
            retDistInfo.version = distinfo[0].verstring;

        retDistInfo.createDate = distinfo[0].createdate;
        if(distinfo[0].allowdomains != null && distinfo[0].allowdomains != "undefined")
            retDistInfo.allowDomains =distinfo[0].allowdomains;
        return retDistInfo;
    }
    catch(err) {
        alert("[Veraport]["+err.number+"]\n vp_getDistInfo[" + err.description + "]");
    }
    return null;
}
function vp_getAxInfoList() {
    try {
        var obj = vp_getObject();
        if(obj == null) return null;
        vp_loadInfo();
        return eval(obj.GetAxInfo());
    }
    catch(err) {
        //alert("[Veraport]["+err.number+"]\n vp_getAxInfoList[" + err + "]");
    }
    return null;
}
function vp_getAxInfo(axInfoList, objectName) {
    if (axInfoList == null) return null;
    var retAxInfo = {objectName: "", displayName: "", objectVersion: "", systemType: "",
                     installStatus: false, installType: "", downloadURL: "", backupURL: "",
                     objectCLSID: "", updateStatus: false, localVersion: "", description: "",
                     installStatusEnable: false, block:false, killbit:false, allowrun:true, forceInstall:false, allowrunDomains:""};
    try {
        //alert("objectInfoList: " + objectInfoList);
        for(var i=0;i<axInfoList.length;i++) {
            //alert(objectInfoList[i].objectname);
            if (objectName == axInfoList[i].objectname) {
                retAxInfo.objectName = axInfoList[i].objectname;
                retAxInfo.displayName = axInfoList[i].displayname;
                retAxInfo.objectVersion = axInfoList[i].objectversion;
                retAxInfo.systemType = axInfoList[i].systemtype;
                retAxInfo.installStatus = (axInfoList[i].installstate == 0) ? false : true;
                try{
                    if (VP_browserInfo.MSIE && !VP_platformInfo.x64) {
                        retAxInfo.block = (axInfoList[i].block == "true") ? true : false;
                        retAxInfo.killbit = (axInfoList[i].killbit == "true") ? true : false;
                        retAxInfo.allowrun = (axInfoList[i].allowrun == "false") ? false : true;
                        retAxInfo.allowrunDomains   = axInfoList[i].allowrundomains;
                    }
                    retAxInfo.forceInstall = (axInfoList[i].forceinstall == "true") ? true : false;
                }catch(e){};
                if (retAxInfo.installStatus && !retAxInfo.block && !retAxInfo.killbit && !retAxInfo.forceInstall) retAxInfo.installStatusEnable = true;
                
                if (typeof axInfoList[i].updatestate  != "undefined") retAxInfo.updateStatus = axInfoList[i].updatestate;
                if (typeof axInfoList[i].localversion != "undefined") retAxInfo.localVersion = axInfoList[i].localversion;
                if (typeof axInfoList[i].objectclsid  != "undefined") retAxInfo.objectCLSID  = axInfoList[i].objectclsid;
                if (typeof axInfoList[i].objectclsid  != "undefined") retAxInfo.description  = axInfoList[i].description;

                retAxInfo.installType = (axInfoList[i].objecttype == 0) ? "must" : "option";
                retAxInfo.downloadURL = axInfoList[i].downloadurl;
                retAxInfo.backupURL = axInfoList[i].backupurl;
                return retAxInfo;
            }
        }
    }
    catch(err) {
        alert("vp_getAxInfo[" + err.description + "]");
    }
    return null;
}
function vp_isAxInfoStatus(axInfoList, objectName) {
    var axInfo = vp_getAxInfo(axInfoList, objectName);
    if (axInfo == null) return true;
    return axInfo.installStatus;
}
function vp_getAgreementInfo() {
    var obj = vp_getObject();
    if(obj == null) return "" ;
    try {
        var result = "-------------------------\n";
        var info = eval(obj.GetAgreementInfo());
        for(key in info[0]) {
            result += key;
            result += " : ";
            result += info[0][key];
            result += "\n";
            if(key == "baselocation") result += "-------------------------\n";
        }
        return result;
    }
    catch(err) {
        vp_alert("vp_getAgreementInfo[" + err.description + "]");
    }

}
function _selectInstall(name) {
    var config = eval(vp_getConfigureJson());
    //alert(vp_getConfigureJson());
    var curr = "";
    for(var i=0;i<config.length;i++) {
        if(config[i].key == 'type') {
            curr = config[i].value;
            break;
        }
    }
    var old = curr;
    if(curr == "")
        return;

    if(curr == VP_TYPE_MANAGE)
        vp_setConfigure('type',VP_TYPE_FULL);

    vp_setSelectObject(name);
    vp_show(1);

    vp_setConfigure('type',old);
}


//check browser and system info
function vp_getBrowserInfo() {
    var browserInfo = {
        MSIE:false, Navigator:false, Firefox:false, Chrome:false, Safari:false, Opera:false, ChromePlus:false, VeraIN:false, ETC:false,
        name: "unknown", version: "-1"
    };

    try {
        var index = -1;
        var tmp = "";
        if(navigator.appName == "Microsoft Internet Explorer") {
            browserInfo.MSIE = true;
            browserInfo.name = "MSIE";
            index = navigator.userAgent.indexOf(browserInfo.name)+browserInfo.name.length+1;
            tmp = navigator.userAgent.substring(index);
            index = tmp.indexOf(";");
            if (index < 0) index = tmp.indexOf(")");
            browserInfo.version = tmp.substring(0, index);
			//alert(browserInfo.version);
        }
        else if (navigator.userAgent.match(/Trident/i)) {
            browserInfo.MSIE = true;
            browserInfo.name = "MSIE";
            index = navigator.userAgent.lastIndexOf("rv:")+"rv:".length;
            tmp = navigator.userAgent.substring(index);
            index = tmp.indexOf(")");
            if (index < 0) index = tmp.indexOf(" ");
            browserInfo.version = tmp.substring(0, index);
        }        
        else if (navigator.userAgent.match(/Navigator/i)) { //Firefox
            browserInfo.Navigator = true;
            browserInfo.name = "Navigator";
            index = navigator.userAgent.lastIndexOf(browserInfo.name)+browserInfo.name.length+1;
            tmp = navigator.userAgent.substring(index);
            browserInfo.version = tmp;
            index = tmp.indexOf(" ");
            if (index > 0) browserInfo.version = tmp.substring(0, index);
        }
        else if (navigator.userAgent.match(/Firefox/i)) {
            browserInfo.Firefox = true;
            browserInfo.name = "Firefox";
            index = navigator.userAgent.lastIndexOf(browserInfo.name)+browserInfo.name.length+1;
            tmp = navigator.userAgent.substring(index);
            browserInfo.version = tmp;
            index = tmp.indexOf(" ");
            if (index > 0) browserInfo.version = tmp.substring(0, index);
        }
        else if (navigator.userAgent.match(/Chrome/i)) { //Safari
            browserInfo.Chrome = true;
            browserInfo.name = "Chrome";
            if (navigator.userAgent.match(/ChromePlus/i)) {
                browserInfo.ChromePlus = true;
                browserInfo.name = "ChromePlus";
            }
            index = navigator.userAgent.lastIndexOf(browserInfo.name)+browserInfo.name.length+1;
            tmp = navigator.userAgent.substring(index);
            browserInfo.version = tmp;
            index = tmp.indexOf(" ");
            if (index > 0) browserInfo.version = tmp.substring(0, index);
        }
        else if (navigator.userAgent.match(/Safari/i)) {
            browserInfo.Safari = true;
            browserInfo.name = "Safari";
            //index = navigator.userAgent.lastIndexOf(browserInfo.name)+browserInfo.name.length+1;
            index = navigator.userAgent.lastIndexOf("Version")+"Version".length+1;
            tmp = navigator.userAgent.substring(index);
            browserInfo.version = tmp;
            index = tmp.indexOf(" ");
            if (index > 0) browserInfo.version = tmp.substring(0, index);
        }
        else if (navigator.userAgent.match(/Opera/i)) {
            browserInfo.Opera = true;
            browserInfo.name = navigator.appName;
            index = navigator.userAgent.lastIndexOf("Version")+"Version".length+1;
            tmp = navigator.userAgent.substring(index);
            browserInfo.version = tmp;
            index = tmp.indexOf(" ");
            if (index > 0) browserInfo.version = tmp.substring(0, index);
        }
        else {
            browserInfo.ETC = true;
            browserInfo.name = navigator.appName;
            browserInfo.version = "NOT_OK";
        }
    }
    catch(err) {
        alert("[Veraport]["+err.number+"]\n vp_getBrowserInfo[" + err.description + "]");
    }

    //VeraIN Check: Mozilla+VeraIN
    try {
        var value1 = vp_getCookie("Verain");
        var value2 = vp_getCookie("Verain2Web");
        if(value1 != "" || value2 != "") browserInfo.VeraIN = true; //VeraIN
    } catch(err) {
        alert("[Veraport]["+err.number+"]\n vp_getBrowserInfo[" + err.description + "][" + document.cookie + "]");
    }
    return browserInfo;
}
function vp_getPlatformInfo() {
    var platformInfo = {
        Windows:false, Linux:false, Ubuntu:false, Fedora:false, Mac:false, iOS:false, Android:false,
        Mobile:false, x64:false,
        type: "unknown", name: "unknown"
    };
    platformInfo.name = navigator.platform;
    if (navigator.appVersion.match("WOW64")) platformInfo.name = "WOW64";

    if (platformInfo.name.match(/Win32/i) || platformInfo.name.match(/WOW64/i)) {
        platformInfo.Windows = true;
        platformInfo.type = "Windows";
        if (navigator.appVersion.match(/Win64/i)) {
            platformInfo.x64 = true;
            platformInfo.type = "Windows64";
        }
    } else if (platformInfo.name.match("Win64")) {
        platformInfo.Windows = true;
        platformInfo.x64 = true;
        platformInfo.type = "Windows64";
    } else if (platformInfo.name.match("Linux armv")) {
        platformInfo.Mobile = true;
        platformInfo.Android = true;
        platformInfo.type = "Android";
    } else if (platformInfo.name.match(/Linux/i)) {
        platformInfo.Linux = true;
        platformInfo.type = "Linux";
        if (platformInfo.name.match(/x86_64/i)) {
            platformInfo.x64 = true;
            platformInfo.type = "Linux64";
        } else if (navigator.userAgent.match(/x86_64/i)) { //Opera
            platformInfo.x64 = true;
            platformInfo.type = "Linux64";
        }
        if (navigator.userAgent.match(/Fedora/i)) {
            platformInfo.Fedora = true;
            platformInfo.type = "Fedora";
            if (platformInfo.x64) platformInfo.type = "Fedora64";
        } else if (navigator.userAgent.match(/Ubuntu/i)) {
            platformInfo.Ubuntu = true;
            platformInfo.type = "Ubuntu";
            if (platformInfo.x64) platformInfo.type = "Ubuntu64";
        } else if (navigator.userAgent.match(/Linux i686/i)) {
            // Linux Chrome 2 Button
        }
    } else if (platformInfo.name.match(/MacIntel/i)) {
        platformInfo.Mac = true;
        platformInfo.type = "Mac";
    } else if (platformInfo.name == "iPad"
            || platformInfo.name == "iPhone"
            || platformInfo.name == "iPod"
            || platformInfo.name == "iOS") {
        platformInfo.Mobile = true;
        platformInfo.iOS = true;
        platformInfo.type = "iOS";
    }

    if( (navigator.userAgent.match(/iPhone/i))  ||
        (navigator.userAgent.match(/iPod/i))    ||
        (navigator.userAgent.match(/iPad/i))    ||
        (navigator.userAgent.match(/Android/i))) {
        platformInfo.Mobile = true;
    }
    if( (navigator.userAgent.match(/Windows Phone/i)) ||
        (navigator.userAgent.match(/Windows CE/i))    ||
        (navigator.userAgent.match(/Symbian/i))       ||
        (navigator.userAgent.match(/BlackBerry/i))) {
        platformInfo.Mobile = true;
    }

    //modify/remove system type
    if (navigator.userAgent.match("Android") && navigator.userAgent.match("Opera Mini")) {
        platformInfo.Mobile = true;
        platformInfo.Android = true;
        platformInfo.type = "Android";
    }
    return platformInfo;
}

/*
var vp_X64Platform      = VP_platformSupport.Win64;
var vp_MozilaPlugin     = VP_platformSupport.WinMoz;

var vp_Version          = VP_config.version;
var vp_MozialVersion    = VP_config.version;
var vp_mimeType         = VP_config.mimeType;
var vp_CLSID            = VP_config.CLSID;

var vp_AxInfoUrl        = VP_config.axInfoURL;
var vp_CabUrl           = VP_config.cabURL;
var vp_ExeUrl           = VP_config.exeURL;
var vp_InstallPage      = VP_config.installPage;
var vp_installType      = VP_config.installType;
var vp_domainCookie     = VP_config.domainCookie;

var vp_LogoS            = VP_config.logoSmall;
var vp_LogoL            = VP_config.logoLarge;
var vp_MsgS             = VP_config.msgSmall;
var vp_MsgL             = VP_config.msgLarge;
var vp_Html             = VP_config.msgInfo;
var vp_AgreePageURL     = VP_config.agreePageURL;

var vp_ClientInfoSendUrl= VP_config.cliInfoSendURL;
var vp_LogSendUrl       = VP_config.logInfoSendURL;

function vp_isMozila() { return !VP_browserInfo.MSIE; };
function vp_getMozilaInfo() {return [VP_browserInfo.name, VP_browserInfo.version]; };
*/
/*
function GetTD(value) { }
function UpdateDistributeInfo(target) { return; };
function GetAgreementInfo() { return vp_getAgreementInfo(); };
function UpdateInstallState(target) { return; };
*/

/**
 *  @updateInfo
 *   1. update 2009.10.15 V2,0,0,4
 *    - site: scfirstbank
 *   2. update 2009.11.20 V2,0,0,5
 *    - add allowDomain
 *    - site: hanbank
 *   3. update 2009.11.30 V2,0,0,5
 *    - add function VP_axManage(),VP_axInstallMust(),VP_axInstallSelect(),VP_axInstall()
 *   4. update 2009.12.?  V2,0,0,6
 *   5. update 2009.12.05  V2,0,0,7
 *    - remove mod_updater.dll, veraport20updater.exe
 *    - add updater.exe
 *    - modify VP_UPDATE_URL : "http://update.wizvera.com/veraport20/v1.0/updateinfo.xml"
 *   6. update 2009.12.28  V2,0,0,7
 *    - add mozilla maual setup (VP_config.exeURL4Moz)
 *   7. update 2009.12.28  V2,0,0,8
 *    - add SetRequireAgreement()
 *    - add GetAgreementInfo()
 *   8. update 2010.01.20  V2,0,0,9
 *    - veraport20.dll, veraport20main.exe
 *      (mozilla plugin find bug fix)
 *   8. update 2010.02.24  V2,0,0,11
 *    - veraport20.dll, veraport20main.exe
 *      add SelectObejct option "all"
 *      change file copy order in cab (cause for SCSK)
 *   9. update 2010.03.09  V2,0,0,13
 *    - veraport20.dll, veraport20main.exe
 *  10. update 2010.03.11  V2,0,0,13
 *    - add Veraport Updater function (vp_notUpdateToday())
 *    - modify vp_Update() : check Update Cookie
 *  11. update 2010.04.01  JS
 *    - add set VP_config.axInfoURL function (VP_setAxInfoUrl())
 *  12. update 2010.04.20  V2,0,0,16
 *    - modify cab install(not inf install bug patch)
 *    - modify install bug patch
 *  13. update 2010.04.29  V2,0,0,18
 *    - modify cab install(IssacWeb, Report Express)
 *  14. update 2010.05.26  JS
 *    - add VP_config.installType option("", "NONE", "TOP")
 *    - mod vp_createObject(), vp_goVp20InstallPage()
 *  15. update 2010.08.03  V2,0,0,19
 *    - modify cab install(Adobe_Flash)
 *    - modify exe install parameter(install.exe /opthin)
 *  16. update 2010.08.10  V2,0,0,20
 *    - vp_showVeraport:  change the window position
 *    - add function vp_setWindowPosition
 *  17. update 2010.08.18  JS
 *    - add function: VP_axCountMust(), VP_axCountOpt(), vp_getUninstalledCnt(objType)
 *  18. update 2010.08.23  JS
 *    - add function: vp_checkVp20Plugin
 *    - mod function: vp_checkVp20Install(), vp_createObject()
 *  19. update 2010.09.29  V2,0,0,21
 *    - add systemType for WOW64
 *  20. update 2010.10.04  V2,0,0,22
 *    - add function VP_setTrustedSite
 *  21. update 2010.10.25  V2,0,0,24(23)
 *    - fix mozilla plug-in bug
 *  22. update 2010.10.28  V2,0,0,25
 *    - fix mozilla system check bug
 *    - fix veraport20unloader.exe bug
 *  23. update 2010.11.01  V2,0,0,26
 *    - fix win7 cab install(Fasoo.com WebDRM)
 *  24. update 2011.01.04  JS
 *    - mod function: vp_createObject(): Avoid creating duplicate objects
 *  25. update 2011.01.28  JS
 *    - kebbank compatibility function
 *  26. update 2011.02.15  V2,0,0,27
 *    - fix flash,gauce install bug fix
 *  27. update 2011.03.10  JS
 *    - add vp_isMultiBrowser() function
 *  28. update 2011.03.16  V2,0,0,28
 *    - fix mfc42.exe install
 *  29. update 2011.04.15  V2,0,0,30
 *    - fix select install UAC
 *  30. update 2011.04.22  V2,5,0,2 JS
 *    - support Windows Win64
 *  31. update 2011.05.12  V2,5,0,3
 *    - support SSL
 *  32. update 2011.05.30  V2,5,0,4
 *    - fix plug-in mine type compare
 *  33. update 2011.07.11  V2,5,0,5
 *    - fix cab install
 *  34. update 2011.07.22  JS
 *    - add VP_config.domainCookie, vp_getDomain(), modify vp_goVp20InstallPage()
 *  35. update 2011.08.25  JS support multiOS
 *    - add VP_platformInfo,VP_browserInfo, VP_platformSupport, ...
 *    - del vp_X64Platform, vp_MozilaPlugin, vp_Version, ...
 *    - del vp_isMozila(), vp_getMozilaInfo()
 *    - del GetTD(), UpdateDistributeInfo(), GetAgreementInfo(), UpdateInstallState() ...
 *  36. update 2012.04.27  V2,5,1,1
 *    - fix veraport.dll sign check
 *  37. modify 2012.05.18  JS
 *    - mod function: vp_goVp20InstallPage() to vp_goVp20InstallPage(isReplase)
 *  38. modify 2012.07.30  JS
 *    - add VP_config.isCreateObject, VP_config.isCabInstall
 *    - mod function: vp_createObject()
 *  39. modify 2012.12.05  JS
 *    - add VP_DOMAIN_URL(setDomain, allowDomain)
 *  40. modify 2012.12.18  JS
 *    - kebbank compatibility function
 *  41. modify 2013.01.09  JS
 *    - mod function: vp_showVeraport(): vp_setDomain(VP_DOMAIN_URL)
 *  42. update 2013.01.18  V2,5,2,0
 *  43. modify 2013.01.18  JS
 *    - add function: vp_setBrowser(): vp_setLanguage(lang);
 *    
**/
