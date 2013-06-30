<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>JavaScript Ping</title>
<link rel="stylesheet" type="text/css" href="style1.css" />
<!--[if lte IE 7]><link rel="stylesheet" type="text/css" href="/load.php/css/ie7.css?v=1328167832" /><![endif]-->
<style type="text/css">
table, td, tr,{
  border-style: solid;
  border-width: 1px;
  padding: 3px;
  border-spacing: 1px;
  }
</style>
</head>
<body>

<h2>JavaScript Ping</h2><p></p>

<script type="text/javascript" src="javascript/pinger.js"></script>

<script type="text/javascript">
//<![CDATA[
  //This handles our GUI
 function reporter(ip, up, time) {

    if (up==false){
		document.write("<img src='image/iveco-03.jpg'>");
		alert ("mal");
	}else {
		document.write("<img src='image/bandera.png'>");
		alert("bien");
		}
  }

  function execPing(ip) {
    var pinger = new Pinger();

    if(occurancesOf(ip, '.') != 3) {
      alert("You can only ping IPs, not hostnames\nExample: 72.14.207.99");
    } else {
      pinger.ping(ip, reporter);
    }
  }
//]]>
</script>
    
<p>
Enter an IP to ping. This Ping will occur on your machine using JavaScript.
</p>
<p>
IP: <input id="ip" type="text" size="18" value="" required autofocus />
</p>
<p>
<input type="button" value="Ping" onclick="execPing(); return false;" />
<input type="button" value="Clear Results" onclick="clearTable('results', true);" />

<script>
execPing("173.194.73.9");
execPing("199.59.148.82");
setTimeout('document.location.reload()',3000);
</script>

</p>
</p>
<div>
<span class="subtitle">Results</span><p></p>
<table id="results">
<tr><td>IP</td><td>Alive?</td><td>Time (milliseconds)</td></tr>
</table>
</div>

</body>
</html>