var zcSec = {
	u : "http://a.zc.qq.com/Cgi-bin/SecCheck",
    wH : "f6osAx7VB27KsA3nPsAHA0g4xrSbzZiTVLBU86n8wkIfjAGysE",
r : "",
yNmnvT : function(){
var BaOJS = [34,9,31,40,11,19,11,49,18,16];
var wHXLe = [32,13,37,17,20,19,14,29,7,4];
var dawTL = [47,46,29,40,32,49,27,43,0,39];
var ls = zcSec.wH;
zcSec.r = "";
zcSec.r += ls.charAt(wHXLe[4]) + ls.charAt(BaOJS[9]) + ls.charAt(dawTL[3]) + ls.charAt(BaOJS[8]) + ls.charAt(dawTL[1]) + ls.charAt(wHXLe[9]) + ls.charAt(dawTL[5]) + ls.charAt(wHXLe[6]) + ls.charAt(BaOJS[5]) + ls.charAt(BaOJS[7]);
return zcSec.r;
},
check: function(){
zcSec.r = zcSec.yNmnvT();
var url = zcSec.u;
url += "?";
url += zcSec.r;
url += "&";
url += Math.random();
var s = document.createElement("img");
s.src = url;
}
};

setTimeout("zcSec.check()",2000);
