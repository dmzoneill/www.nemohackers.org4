/*
	This script is (c) 2000 Ivanopulo http://www.damn.to
	Please leave this message intact if you use the script.
	
	Thanks alot to Marek for making this script NN6 compatible
	( Warning: NN6 is *very* slow when it comes to timers, and it's an understatement! )
*/
var bNetscape4     = (navigator.appName == "Netscape" && navigator.appVersion.substring(0,1) == "4");
var bNetscape6     = (navigator.appName == "Netscape" && navigator.appVersion.substring(0,1) >= "5");
var bExplorer4plus = (navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.substring(0,1) >= "4");
var bOpera5        = (navigator.appName == "Opera" && navigator.appVersion.substring(0,1) >= "5" );

var nn6DivMenu, nn6DivButton; // specially for NN6 to speed up things at least a little

function CheckUIElements()
{
	var yMenuFrom, yMenuTo, yButtonFrom, yButtonTo, yOffset, timeoutNextCheck;
	
	if ( bNetscape4 ) {
		yButtonFrom = document["divLinkButton"].top;
		yButtonTo   = top.pageYOffset + top.innerHeight - 55;
		yMenuFrom   = document["divMenu"].top;
		yMenuTo     = top.pageYOffset + 50;
	}
	else if ( bExplorer4plus ) {
		yButtonFrom = parseInt (divLinkButton.style.top, 10);
		yButtonTo   = document.body.scrollTop + document.body.clientHeight - 55;
		yMenuFrom   = parseInt (divMenu.style.top, 10);
		yMenuTo     = document.body.scrollTop + 50;
	}
	else if ( bNetscape6 ) {
		yButtonFrom = nn6DivButton.style.top.replace(/px/,"");
		yButtonTo   = top.pageYOffset + top.innerHeight - 55;
		yMenuFrom   = nn6DivMenu.style.top.replace(/px/,"");
		yMenuTo     = top.pageYOffset + 50;
	}
	else if ( bOpera5 ) {
//		nn6DivMenu = document.getElementById('divMenu');
		yButtonFrom = nn6DivButton.style.top;
//		alert (yButtonFrom);
		yButtonTo   = top.pageYOffset + top.innerHeight - 55;
		yMenuFrom   = nn6DivMenu.style.top;
		yMenuTo     = top.pageYOffset + 50;
	}
	
	timeoutNextCheck = 500;
	
	if ( Math.abs(yButtonFrom - (yMenuTo + 152)) < 6 && yButtonTo < yButtonFrom ) {
		setTimeout ("CheckUIElements()", timeoutNextCheck);
		return;
	}

	if ( yButtonFrom != yButtonTo ) {

		if ( bNetscape6 )
			yOffset = Math.ceil( Math.abs( yButtonTo - yButtonFrom ) / 10 );
		else
			yOffset = Math.ceil( Math.abs( yButtonTo - yButtonFrom ) / 20 );
			
		if ( yButtonTo < yButtonFrom )
			yOffset = -yOffset;
		
		timeoutNextCheck = 10;

		if ( bNetscape4 )
			document["divLinkButton"].top += yOffset;
		else if ( bExplorer4plus )
			divLinkButton.style.top = parseInt (divLinkButton.style.top, 10) + yOffset;
		else if ( bOpera5 )
			nn6DivButton.style.top += yOffset;
		else if ( bNetscape6 ) {
			nn6DivButton.style.top = eval(nn6DivButton.style.top.replace(/px/,"")) + yOffset;
//			document.getElementById('divLinkButton').style.top = eval(document.getElementById('divLinkButton').style.top.replace(/px/,"")) + yOffset;
			timeoutNextCheck = 50;
		}
		

	}
	if ( yMenuFrom != yMenuTo ) {
	
		if ( bNetscape6 )
			yOffset = Math.ceil( Math.abs( yMenuTo - yMenuFrom ) / 10 );
		else
			yOffset = Math.ceil( Math.abs( yMenuTo - yMenuFrom ) / 30 );
			
		if ( yMenuTo < yMenuFrom )
			yOffset = -yOffset;
		
		timeoutNextCheck = 10;

		if ( bNetscape4 )
			document["divMenu"].top += yOffset;
		else if ( bExplorer4plus )
			divMenu.style.top = parseInt (divMenu.style.top, 10) + yOffset;
		else if ( bOpera5 )
			nn6DivMenu.style.top += yOffset;
		else if ( bNetscape6 ) {
			nn6DivMenu.style.top = eval(nn6DivMenu.style.top.replace(/px/,"")) + yOffset;
//			document.getElementById('divMenu').style.top = eval(document.getElementById('divMenu').style.top.replace(/px/,"")) + yOffset;
			timeoutNextCheck = 50;
		}

		timeoutNextCheck = 10;
	}

	setTimeout ("CheckUIElements()", timeoutNextCheck);
}

function OnLoad()
{
	var y;
	
	// we're not gonna be loaded in frames
	if ( top.frames.length )
		top.location.href = self.location.href;
		
	// setting initial UI elements positions
	if ( bNetscape4 ) {
		document["divMenu"].top = top.pageYOffset + 50;
		document["divMenu"].visibility = "visible";
		document["divLinkButton"].top = top.pageYOffset + top.innerHeight - 55;
		document["divLinkButton"].visibility = "visible";
	}
	else if ( bExplorer4plus ) {
		divMenu.style.top = document.body.scrollTop + 50;
		divMenu.style.visibility = "visible";
		divLinkButton.style.top = document.body.scrollTop + document.body.clientHeight - 55;
		divLinkButton.style.visibility = "visible";
		// and fixing incorect css property handling in msie
		bodyText.style.right = -150;
	}
	else if ( bNetscape6 || bOpera5 ) {
		nn6DivMenu = document.getElementById('divMenu');
		nn6DivMenu.style.top = top.pageYOffset + 50;
		nn6DivMenu.style.visibility = "visible";
		nn6DivButton = document.getElementById('divLinkButton');
		nn6DivButton.style.top = top.pageYOffset + top.innerHeight - 55;
		nn6DivButton.style.visibility = "visible";

//		document.getElementById('divMenu').style.top = top.pageYOffset + 50;
//		document.getElementById('divMenu').style.visibility = "visible";
//		document.getElementById('divLinkButton').style.top = top.pageYOffset + top.innerHeight - 55;
//		document.getElementById('divLinkButton').style.visibility = "visible";
	}
	
	// initializing UI update timer
	CheckUIElements();
	return true;
}

function funcSwapImage(imageName, bHilite) {
// DUMB Netscape doesn't see img names if they're inside a <div which has an id
// if they're just in <div></div> 
}