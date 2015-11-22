

window.onload = ready;

function ready()
{
	var menu = "<ul>";
	
	menu += "<li><a href=\"http://shannon.intel.com/backup/LocalInformation.htm\" class=\"leftlinks\">Local Information</a></li>";
	menu += "<li><a href=\"http://shannon.intel.com/backup/NewHireIndex.htm\" class=\"leftlinks\">New Hire Information</a></li>";
	menu += "<li><a href=\"http://shannon.intel.com/backup/SiteServices.htm\" class=\"leftlinks\">Site Information</a></li>";
	menu += "<li><a class=\"leftlinks\" href=\"http://moss.amr.ith.intel.com/sites/ECG/ESDO/ShannonSandS/default.aspx\">Sports & Social Club</a></li>";
	menu += "<li><a href=\"http://shannon.intel.com/backup/Health&Safety.htm\" class=\"leftlinks\">Health & Safety</a></li>";
	menu += "<li><a href=\"https://employeecontent.intel.com/entrypage/default.aspx?nodeid=3c7c5e7a-f501-486e-aca9-e4247887c758\" class=\"leftlinks\">Training</a></li>";
	menu += "<li><a href=\"http://sie2web.ir.intel.com/sie2websw/phpBB/index.php\" class=\"leftlinks\">Shannon Forums</a></li>";
	menu += "<li><a class=\"leftlinks\" href=\"CID_SW.htm\">CID Software</a></li>";
	menu += "<li><a class=\"leftlinks\" href=\"Siliconmain.htm\">CID Silicon</a></li>";
	menu += "<li><a href=\"http://moss.ger.ith.intel.com/sites/sbit/default.aspx\" class=\"leftlinks\">SBIT</a></li>";
	menu += "<li><a href=\"http://shannon.intel.com/backup/shannonCommunications.htm\" class=\"leftlinks\">Shannon Comms</a></li>";
	menu += "<li><a href=\"http://shannon.intel.com/backup/UsefulLinks.htm\" class=\"leftlinks\">Useful Links</a></li>";
	menu += "<li><a class=\"leftlinks\" href=\"fitness centre home.htm\">Shannon Fitness Centre</a></li>";

	
	menu += "</ul>";
	
	document.getElementById( 'MiddleColumnLinks' ).innerHTML =  menu;

}