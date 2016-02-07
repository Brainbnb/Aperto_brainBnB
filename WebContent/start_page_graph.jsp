<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="org.aperto.brainbnb.dto.User"
	import="java.util.ArrayList" 
	import="org.aperto.brainbnb.dto.Project"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aperto | BrainBnB</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/start_page_graph.css"
	type="text/css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"> </script>
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">


<script
	src='//assets.codepen.io/assets/common/stopExecutionOnTimeout.js?t=1'></script>
<script
	src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script
	src='http://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js'></script>


<script
	src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://code.highcharts.com/stock/highstock.js'></script>
<script src='https://code.highcharts.com/modules/exporting.js'></script>
<script src='https://datejs.googlecode.com/files/date.js'></script>
<script>
$(function () {
    var data = getData();
    var actionChart = displayHighChart(data);
    console.log(actionChart);
    var minDateValue = new Date('2015-03-02');
    var maxDateValue = new Date('2015-03-03');
    actionChart.xAxis[0].setExtremes(minDateValue, maxDateValue);
});
var displayHighChart = function (data) {
    var actionChart = new Highcharts.Chart({
        chart: {
            renderTo: 'container',
            type: 'column',
            zoomType: 'x'
        },
        xAxis: {
            type: 'datetime',
            minRange: 1 * 1 * 5 * 60 * 1000
        },
        yAxis: {
            min: 0,
            stackLabels: {
                enabled: false,
                style: {
                    fontWeight: 'bold',
                }
            }
        },
        legend: {
            align: 'right',
            x: -30,
            verticalAlign: 'top',
            y: 25,
            floating: true,
            borderColor: '#CCC',
            borderWidth: 1,
            shadow: false,
            enabled: false
        },
        tooltip: {
            formatter: function () {
                var date = new Date(this.x);
                var dateInString = date.toString('MMM dd yyyy');
                return '<b>' + dateInString + '</b><br/>' + this.series.name + ': ' + this.y + '<br/>' + 'Total: ' + this.point.stackTotal;
            }
        },
        plotOptions: {
            column: {
                stacking: 'normal',
                dataLabels: {
                    enabled: false,
                    style: { textShadow: '0 0 3px black' }
                }
            }
        },
        series: data.ActualSeries,
        navigator: {
            enabled: true,
            series: { data: data.NavigationSeries }
        }
    });
    return actionChart;
};
var getData = function () {
    var data = [
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmCodeLookup&FromMenu=True',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmCorTemplatesLookup&FromMenu=True',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmGLAccountSummaryLookup&FromMenu=True',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425294000000,
            'count': 5
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425297600000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425301200000,
            'count': 4
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425304800000,
            'count': 6
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425308400000,
            'count': 3
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425312000000,
            'count': 18
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425315600000,
            'count': 10
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425319200000,
            'count': 7
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425322800000,
            'count': 6
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425326400000,
            'count': 6
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425376800000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425384000000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425387600000,
            'count': 5
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425391200000,
            'count': 3
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425394800000,
            'count': 6
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425398400000,
            'count': 10
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425402000000,
            'count': 20
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425405600000,
            'count': 15
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425409200000,
            'count': 14
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425412800000,
            'count': 18
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425416400000,
            'count': 10
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425463200000,
            'count': 13
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425466800000,
            'count': 26
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425470400000,
            'count': 20
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425474000000,
            'count': 30
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425477600000,
            'count': 16
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425481200000,
            'count': 35
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425484800000,
            'count': 19
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425488400000,
            'count': 25
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425492000000,
            'count': 24
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425495600000,
            'count': 19
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425499200000,
            'count': 16
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425549600000,
            'count': 5
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425553200000,
            'count': 4
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425556800000,
            'count': 17
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425560400000,
            'count': 19
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmIdbInternalDashboardMaintenance&FromMenu=True',
            'time': 1425564000000,
            'count': 7
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmMemberAccountLookup&FromMenu=True',
            'time': 1425204000000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmMemberAccountLookup&FromMenu=True',
            'time': 1425250800000,
            'count': 7
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmMemberAccountLookup&FromMenu=True',
            'time': 1425258000000,
            'count': 3
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmMemberAccountLookup&FromMenu=True',
            'time': 1425261600000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmMemberAccountLookup&FromMenu=True',
            'time': 1425268800000,
            'count': 3
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmMemberAccountLookup&FromMenu=True',
            'time': 1425272400000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmMemberAccountLookup&FromMenu=True',
            'time': 1425279600000,
            'count': 6
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmMemberAccountLookup&FromMenu=True',
            'time': 1425283200000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425250800000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425283200000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425286800000,
            'count': 5
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425290400000,
            'count': 4
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425301200000,
            'count': 4
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425333600000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425337200000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425369600000,
            'count': 3
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425384000000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425387600000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425488400000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmOrganizationLookup&FromMenu=True',
            'time': 1425506400000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmPersonLookup&FromMenu=True',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmPersonLookup&FromMenu=True',
            'time': 1425481200000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': '~/wfmDefault.aspx?FormID=wfmUsersLookup&FromMenu=True',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425279600000,
            'count': 8
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425283200000,
            'count': 4
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425286800000,
            'count': 10
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425290400000,
            'count': 21
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425294000000,
            'count': 4
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425301200000,
            'count': 8
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425304800000,
            'count': 15
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425308400000,
            'count': 3
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425312000000,
            'count': 11
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425315600000,
            'count': 25
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425319200000,
            'count': 7
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425322800000,
            'count': 11
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425326400000,
            'count': 7
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425333600000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425337200000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425340800000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425369600000,
            'count': 1
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425373200000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425376800000,
            'count': 3
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425384000000,
            'count': 3
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425387600000,
            'count': 15
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425391200000,
            'count': 4
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425394800000,
            'count': 11
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425398400000,
            'count': 10
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425402000000,
            'count': 29
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425405600000,
            'count': 30
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425409200000,
            'count': 17
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425412800000,
            'count': 23
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425416400000,
            'count': 11
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425463200000,
            'count': 21
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425466800000,
            'count': 37
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425470400000,
            'count': 26
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425474000000,
            'count': 42
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425477600000,
            'count': 19
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425481200000,
            'count': 41
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425484800000,
            'count': 23
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425488400000,
            'count': 30
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425492000000,
            'count': 29
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425495600000,
            'count': 29
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425499200000,
            'count': 33
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425506400000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425549600000,
            'count': 5
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425553200000,
            'count': 8
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425556800000,
            'count': 24
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425560400000,
            'count': 25
        },
        {
            'name': 'Application Menu',
            'action': 'Access Trace',
            'time': 1425564000000,
            'count': 8
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425204000000,
            'count': 4
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425207600000,
            'count': 5
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425250800000,
            'count': 16
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425258000000,
            'count': 2
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425290400000,
            'count': 4
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425294000000,
            'count': 32
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425297600000,
            'count': 33
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425301200000,
            'count': 42
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425304800000,
            'count': 15
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425308400000,
            'count': 42
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425312000000,
            'count': 3
        },
        {
            'name': 'Application Menu',
            'action': 'Dashboard',
            'time': 1425402000000,
            'count': 4
        },
        {
            'name': 'Application Menu',
            'action': 'My Basket',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Code Lookup',
            'action': 'Open',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Code Lookup',
            'action': 'Open',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Code Lookup',
            'action': 'Open',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Code Lookup',
            'action': 'Open',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Code Lookup',
            'action': 'Reset',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Code Lookup',
            'action': 'Search',
            'time': 1425286800000,
            'count': 4
        },
        {
            'name': 'Code Lookup',
            'action': 'Search',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Code Lookup',
            'action': 'Search',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Code Lookup',
            'action': 'Search',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Code Maintenance',
            'action': 'New',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Code Maintenance',
            'action': 'New',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Code Maintenance',
            'action': 'Open',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Code Maintenance',
            'action': 'Save',
            'time': 1425286800000,
            'count': 2
        },
        {
            'name': 'Code Value Maintenance',
            'action': 'Save',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Code Value Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Code Value Maintenance',
            'action': 'Save',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Communication Template Search',
            'action': 'New',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Communication Template Search',
            'action': 'Open',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Communication Template Search',
            'action': 'Search',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Department Lookup',
            'action': 'Export To Excel',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Department Lookup',
            'action': 'New',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Department Lookup',
            'action': 'Open',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Department Lookup',
            'action': 'Search',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Internal Dashboard',
            'action': 'Open',
            'time': 1425463200000,
            'count': 1
        },
        {
            'name': 'Internal Dashboard',
            'action': 'Open',
            'time': 1425553200000,
            'count': 1
        },
        {
            'name': 'Login Page',
            'action': 'Redirected',
            'time': 1425488400000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'dgrResult',
            'time': 1425394800000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'dgrResult',
            'time': 1425402000000,
            'count': 5
        },
        {
            'name': 'Member Account Lookup',
            'action': 'dgrResult',
            'time': 1425405600000,
            'count': 2
        },
        {
            'name': 'Member Account Lookup',
            'action': 'dgrResult',
            'time': 1425481200000,
            'count': 3
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open',
            'time': 1425290400000,
            'count': 3
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open',
            'time': 1425308400000,
            'count': 5
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open',
            'time': 1425387600000,
            'count': 2
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open',
            'time': 1425394800000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open',
            'time': 1425402000000,
            'count': 7
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open',
            'time': 1425405600000,
            'count': 9
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open Person Overview',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open Person Overview',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open Person Overview',
            'time': 1425394800000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open Person Overview',
            'time': 1425402000000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Open Person Overview',
            'time': 1425405600000,
            'count': 2
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Search',
            'time': 1425290400000,
            'count': 3
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Search',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Search',
            'time': 1425308400000,
            'count': 7
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Search',
            'time': 1425315600000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Search',
            'time': 1425387600000,
            'count': 2
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Search',
            'time': 1425394800000,
            'count': 2
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Search',
            'time': 1425402000000,
            'count': 4
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Search',
            'time': 1425405600000,
            'count': 7
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Search',
            'time': 1425481200000,
            'count': 4
        },
        {
            'name': 'Member Account Lookup',
            'action': 'Search',
            'time': 1425484800000,
            'count': 1
        },
        {
            'name': 'Member Account Lookup',
            'action': 'StoreSearch',
            'time': 1425387600000,
            'count': 1
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'btnIstrSSNAndFullName',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'btnIstrSSNAndFullName',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'btnIstrSSNAndFullName',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'btnPersonId',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'Correspondence',
            'time': 1425405600000,
            'count': 1
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'Export to Excel',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'grvMemberEmploymentHistory',
            'time': 1425308400000,
            'count': 2
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'New',
            'time': 1425301200000,
            'count': 5
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'New',
            'time': 1425405600000,
            'count': 5
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'Next',
            'time': 1425308400000,
            'count': 4
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'Open',
            'time': 1425301200000,
            'count': 5
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'Open',
            'time': 1425308400000,
            'count': 8
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'Open',
            'time': 1425387600000,
            'count': 1
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'Open',
            'time': 1425402000000,
            'count': 1
        },
        {
            'name': 'Member Account Maintenance',
            'action': 'Open',
            'time': 1425405600000,
            'count': 2
        },
        {
            'name': 'Member Account Wages By Year Maintenance',
            'action': 'Open',
            'time': 1425308400000,
            'count': 2
        },
        {
            'name': 'Member Account Wages By Year Maintenance',
            'action': 'Save',
            'time': 1425308400000,
            'count': 2
        },
        {
            'name': 'Member Beneficiary Maintenance',
            'action': 'Refresh',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Member Beneficiary Maintenance',
            'action': 'Refresh',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Member Beneficiary Maintenance',
            'action': 'Save',
            'time': 1425297600000,
            'count': 3
        },
        {
            'name': 'Member Beneficiary Maintenance',
            'action': 'Save',
            'time': 1425312000000,
            'count': 1
        },
        {
            'name': 'Member Employment History Maintenance',
            'action': 'Refresh',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Member Employment History Maintenance',
            'action': 'Save',
            'time': 1425301200000,
            'count': 5
        },
        {
            'name': 'Member Employment History Maintenance',
            'action': 'Save',
            'time': 1425405600000,
            'count': 6
        },
        {
            'name': 'Merge SSN Maintenance',
            'action': 'Refresh',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Message Lookup',
            'action': 'dgrResult',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Message Lookup',
            'action': 'ExportExcel',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Message Lookup',
            'action': 'New',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Message Lookup',
            'action': 'New',
            'time': 1425322800000,
            'count': 1
        },
        {
            'name': 'Message Lookup',
            'action': 'Open',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Message Lookup',
            'action': 'Search',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Message Lookup',
            'action': 'Search',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Message Lookup',
            'action': 'Search',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Message Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Message Maintenance',
            'action': 'Save',
            'time': 1425322800000,
            'count': 1
        },
        {
            'name': 'Move Members Lookup',
            'action': 'Move Accounts',
            'time': 1425492000000,
            'count': 3
        },
        {
            'name': 'Move Members Lookup',
            'action': 'Move Accounts',
            'time': 1425495600000,
            'count': 4
        },
        {
            'name': 'Move Members Lookup',
            'action': 'Move Accounts',
            'time': 1425556800000,
            'count': 1
        },
        {
            'name': 'Move Members Lookup',
            'action': 'Move Accounts',
            'time': 1425560400000,
            'count': 1
        },
        {
            'name': 'Move Members Lookup',
            'action': 'Search',
            'time': 1425492000000,
            'count': 3
        },
        {
            'name': 'Move Members Lookup',
            'action': 'Search',
            'time': 1425495600000,
            'count': 4
        },
        {
            'name': 'Move Members Lookup',
            'action': 'Search',
            'time': 1425556800000,
            'count': 2
        },
        {
            'name': 'Move Members Lookup',
            'action': 'Search',
            'time': 1425560400000,
            'count': 1
        },
        {
            'name': 'Move Members Maintenance',
            'action': 'btnSelectMemberAccounts',
            'time': 1425492000000,
            'count': 1
        },
        {
            'name': 'Move Members Maintenance',
            'action': 'btnSelectMemberAccounts',
            'time': 1425495600000,
            'count': 4
        },
        {
            'name': 'Move Members Maintenance',
            'action': 'btnSelectMemberAccounts',
            'time': 1425556800000,
            'count': 1
        },
        {
            'name': 'Move Members Maintenance',
            'action': 'btnSelectMemberAccounts',
            'time': 1425560400000,
            'count': 1
        },
        {
            'name': 'Move Members Maintenance',
            'action': 'Move Member Accounts',
            'time': 1425495600000,
            'count': 1
        },
        {
            'name': 'Notes Maintenance',
            'action': 'btnIstrSsnFullName',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Notes Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Notes Maintenance',
            'action': 'Save',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Notes Maintenance',
            'action': 'Save',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Notes Maintenance',
            'action': 'Save',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Notes Maintenance',
            'action': 'Save',
            'time': 1425463200000,
            'count': 6
        },
        {
            'name': 'Notes Maintenance',
            'action': 'Save',
            'time': 1425466800000,
            'count': 4
        },
        {
            'name': 'Notes Maintenance',
            'action': 'Save',
            'time': 1425556800000,
            'count': 1
        },
        {
            'name': 'Notes Maintenance',
            'action': 'Save',
            'time': 1425560400000,
            'count': 1
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Refresh',
            'time': 1425250800000,
            'count': 1
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Refresh',
            'time': 1425470400000,
            'count': 2
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425315600000,
            'count': 8
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425405600000,
            'count': 2
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425409200000,
            'count': 2
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425463200000,
            'count': 2
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425466800000,
            'count': 2
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425470400000,
            'count': 1
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425474000000,
            'count': 26
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425477600000,
            'count': 21
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425481200000,
            'count': 17
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425484800000,
            'count': 10
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425488400000,
            'count': 8
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425492000000,
            'count': 2
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425495600000,
            'count': 12
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425499200000,
            'count': 11
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425553200000,
            'count': 4
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425560400000,
            'count': 4
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Save',
            'time': 1425564000000,
            'count': 7
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Validate Postal Code',
            'time': 1425477600000,
            'count': 2
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Validate Postal Code',
            'time': 1425488400000,
            'count': 1
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Validate Postal Code',
            'time': 1425495600000,
            'count': 1
        },
        {
            'name': 'Organization Address Maintenance',
            'action': 'Validate Postal Code',
            'time': 1425564000000,
            'count': 4
        },
        {
            'name': 'Organization Contact Lookup',
            'action': 'Open',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Contact Lookup',
            'action': 'Open',
            'time': 1425384000000,
            'count': 1
        },
        {
            'name': 'Organization Contact Lookup',
            'action': 'Open',
            'time': 1425387600000,
            'count': 2
        },
        {
            'name': 'Organization Contact Lookup',
            'action': 'Search',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Contact Lookup',
            'action': 'Search',
            'time': 1425326400000,
            'count': 1
        },
        {
            'name': 'Organization Contact Lookup',
            'action': 'Search',
            'time': 1425384000000,
            'count': 1
        },
        {
            'name': 'Organization Contact Lookup',
            'action': 'Search',
            'time': 1425387600000,
            'count': 1
        },
        {
            'name': 'Organization Contact Lookup',
            'action': 'Search',
            'time': 1425391200000,
            'count': 1
        },
        {
            'name': 'Organization Contact Lookup',
            'action': 'Search',
            'time': 1425394800000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'btnAgencyId',
            'time': 1425488400000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'btnLinkButton',
            'time': 1425488400000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Next',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Refresh',
            'time': 1425402000000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Refresh',
            'time': 1425560400000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425286800000,
            'count': 3
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 11
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425304800000,
            'count': 2
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425312000000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425315600000,
            'count': 9
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425319200000,
            'count': 13
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425387600000,
            'count': 3
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425391200000,
            'count': 4
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425402000000,
            'count': 20
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425405600000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425409200000,
            'count': 2
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425412800000,
            'count': 4
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425416400000,
            'count': 4
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425488400000,
            'count': 5
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425492000000,
            'count': 17
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425499200000,
            'count': 1
        },
        {
            'name': 'Organization Contact Maintenance',
            'action': 'Save',
            'time': 1425560400000,
            'count': 8
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'btnLoadCBAMaint',
            'time': 1425207600000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'btnLoadCBAMaint',
            'time': 1425250800000,
            'count': 3
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'btnLoadCBAMaint',
            'time': 1425279600000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'btnLoadCBAMaint',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'btnLoadCBAMaint',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'btnLoadCBAMaint',
            'time': 1425337200000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'btnLoadCBAMaint',
            'time': 1425373200000,
            'count': 3
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'btnLoadCBAMaint',
            'time': 1425376800000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'btnLoadCBAMaint',
            'time': 1425474000000,
            'count': 5
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'btnLoadCBAMaint',
            'time': 1425481200000,
            'count': 4
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Correspondence',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Refresh',
            'time': 1425294000000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Refresh',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Refresh',
            'time': 1425308400000,
            'count': 3
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Refresh',
            'time': 1425315600000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Save',
            'time': 1425279600000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Save',
            'time': 1425308400000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Save',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Save',
            'time': 1425474000000,
            'count': 3
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Save',
            'time': 1425484800000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA History Maintenance',
            'action': 'Save',
            'time': 1425488400000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Delete',
            'time': 1425283200000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Delete',
            'time': 1425286800000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Delete',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'istrDownload',
            'time': 1425250800000,
            'count': 3
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'istrDownload',
            'time': 1425283200000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'istrDownload',
            'time': 1425286800000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'istrDownload',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'istrDownload',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'istrDownload',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'istrDownload',
            'time': 1425304800000,
            'count': 5
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Refresh',
            'time': 1425250800000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Refresh',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Refresh',
            'time': 1425481200000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Save',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Save',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Save',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Save',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Save',
            'time': 1425315600000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Save',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Save',
            'time': 1425481200000,
            'count': 11
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Upload',
            'time': 1425283200000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Upload',
            'time': 1425286800000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Upload',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Upload',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Upload',
            'time': 1425304800000,
            'count': 5
        },
        {
            'name': 'Organization Location CBA Maintenance',
            'action': 'Upload',
            'time': 1425481200000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'dgrResult',
            'time': 1425204000000,
            'count': 2
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open',
            'time': 1425204000000,
            'count': 3
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open',
            'time': 1425207600000,
            'count': 5
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open',
            'time': 1425250800000,
            'count': 5
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open',
            'time': 1425283200000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open',
            'time': 1425466800000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open',
            'time': 1425556800000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open Organization',
            'time': 1425204000000,
            'count': 4
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open Organization',
            'time': 1425207600000,
            'count': 2
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open Organization',
            'time': 1425279600000,
            'count': 2
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open Organization',
            'time': 1425297600000,
            'count': 2
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open Organization',
            'time': 1425304800000,
            'count': 2
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open Organization',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open Organization',
            'time': 1425326400000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Open Organization',
            'time': 1425466800000,
            'count': 3
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425204000000,
            'count': 4
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425207600000,
            'count': 6
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425250800000,
            'count': 5
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425279600000,
            'count': 2
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425283200000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425297600000,
            'count': 2
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425304800000,
            'count': 7
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425308400000,
            'count': 2
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425322800000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425326400000,
            'count': 1
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425466800000,
            'count': 3
        },
        {
            'name': 'Organization Location Lookup',
            'action': 'Search',
            'time': 1425556800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'btnLinkButton',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'btnLinkButton',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'btnLinkButton',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425250800000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425258000000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425279600000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425294000000,
            'count': 6
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425297600000,
            'count': 5
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425304800000,
            'count': 3
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425308400000,
            'count': 4
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425315600000,
            'count': 3
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425373200000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425398400000,
            'count': 3
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425402000000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425405600000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425409200000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425474000000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425484800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'New',
            'time': 1425488400000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Next',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425204000000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425207600000,
            'count': 4
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425250800000,
            'count': 4
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425279600000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425283200000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425290400000,
            'count': 7
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425294000000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425304800000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425312000000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425315600000,
            'count': 3
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425337200000,
            'count': 3
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425373200000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425376800000,
            'count': 4
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425398400000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425474000000,
            'count': 6
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Open',
            'time': 1425481200000,
            'count': 7
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Prev',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Refresh',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Refresh',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Save',
            'time': 1425258000000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Save',
            'time': 1425286800000,
            'count': 3
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 7
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Save',
            'time': 1425304800000,
            'count': 5
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Save',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Save',
            'time': 1425312000000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Save',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Save',
            'time': 1425499200000,
            'count': 13
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Set as primary',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Set as primary',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Set as primary',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Set as primary',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Set as primary',
            'time': 1425499200000,
            'count': 3
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Update',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Update',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Update',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Update',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Update',
            'time': 1425466800000,
            'count': 7
        },
        {
            'name': 'Organization Location Maintenance',
            'action': 'Update',
            'time': 1425499200000,
            'count': 3
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425279600000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425290400000,
            'count': 5
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425398400000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425402000000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425405600000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425412800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425481200000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425492000000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425495600000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425499200000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425556800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'dgrResult',
            'time': 1425560400000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Export To Excel',
            'time': 1425315600000,
            'count': 7
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425286800000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425301200000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425398400000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425463200000,
            'count': 9
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425466800000,
            'count': 7
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425484800000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425492000000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425495600000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425499200000,
            'count': 10
        },
        {
            'name': 'Organization Lookup',
            'action': 'New',
            'time': 1425560400000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425250800000,
            'count': 8
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425258000000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425279600000,
            'count': 10
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425283200000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425290400000,
            'count': 3
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425294000000,
            'count': 16
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425297600000,
            'count': 8
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425301200000,
            'count': 8
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425304800000,
            'count': 5
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425308400000,
            'count': 9
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425312000000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425315600000,
            'count': 11
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425319200000,
            'count': 5
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425333600000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425337200000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425340800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425369600000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425376800000,
            'count': 3
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425384000000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425387600000,
            'count': 7
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425391200000,
            'count': 5
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425394800000,
            'count': 3
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425398400000,
            'count': 19
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425402000000,
            'count': 18
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425405600000,
            'count': 19
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425409200000,
            'count': 18
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425412800000,
            'count': 21
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425416400000,
            'count': 11
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425463200000,
            'count': 25
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425466800000,
            'count': 21
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425470400000,
            'count': 30
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425474000000,
            'count': 17
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425477600000,
            'count': 32
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425481200000,
            'count': 43
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425484800000,
            'count': 18
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425488400000,
            'count': 24
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425492000000,
            'count': 25
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425495600000,
            'count': 40
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425499200000,
            'count': 38
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425553200000,
            'count': 3
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425556800000,
            'count': 9
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425560400000,
            'count': 12
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open',
            'time': 1425564000000,
            'count': 7
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425279600000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425326400000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425387600000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425409200000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425412800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425470400000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425474000000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425481200000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425488400000,
            'count': 3
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425492000000,
            'count': 3
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425499200000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425556800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425560400000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'Open Overview',
            'time': 1425564000000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Reset',
            'time': 1425250800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Reset',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Reset',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Reset',
            'time': 1425466800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425207600000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425250800000,
            'count': 10
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425258000000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425279600000,
            'count': 6
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425283200000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425290400000,
            'count': 7
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425294000000,
            'count': 18
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425297600000,
            'count': 10
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425301200000,
            'count': 13
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425304800000,
            'count': 9
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425308400000,
            'count': 11
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425312000000,
            'count': 5
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425315600000,
            'count': 15
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425319200000,
            'count': 7
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425322800000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425326400000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425333600000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425337200000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425340800000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425369600000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425373200000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425376800000,
            'count': 3
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425384000000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425387600000,
            'count': 6
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425391200000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425394800000,
            'count': 2
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425398400000,
            'count': 15
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425402000000,
            'count': 24
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425405600000,
            'count': 20
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425409200000,
            'count': 18
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425412800000,
            'count': 19
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425416400000,
            'count': 11
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425463200000,
            'count': 19
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425466800000,
            'count': 21
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425470400000,
            'count': 30
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425474000000,
            'count': 34
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425477600000,
            'count': 23
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425481200000,
            'count': 36
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425484800000,
            'count': 14
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425488400000,
            'count': 22
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425492000000,
            'count': 23
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425495600000,
            'count': 38
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425499200000,
            'count': 30
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425553200000,
            'count': 4
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425556800000,
            'count': 17
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425560400000,
            'count': 22
        },
        {
            'name': 'Organization Lookup',
            'action': 'Search',
            'time': 1425564000000,
            'count': 8
        },
        {
            'name': 'Organization Lookup',
            'action': 'StoreSearch',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Organization Lookup',
            'action': 'StoreSearch',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Correspondence',
            'time': 1425258000000,
            'count': 13
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Correspondence',
            'time': 1425297600000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Correspondence',
            'time': 1425301200000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Create Subsidiary Org',
            'time': 1425340800000,
            'count': 3
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Create Subsidiary Org',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Create Subsidiary Org',
            'time': 1425463200000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Create Subsidiary Org',
            'time': 1425492000000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Create Subsidiary Org',
            'time': 1425499200000,
            'count': 11
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Create Subsidiary Org',
            'time': 1425556800000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Create Subsidiary Org',
            'time': 1425560400000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Create Subsidiary Org',
            'time': 1425564000000,
            'count': 7
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Delete',
            'time': 1425412800000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Delete',
            'time': 1425463200000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Delete',
            'time': 1425474000000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Delete',
            'time': 1425477600000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Delete',
            'time': 1425481200000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Delete',
            'time': 1425499200000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Delete',
            'time': 1425560400000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Merge',
            'time': 1425470400000,
            'count': 3
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Merge',
            'time': 1425474000000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Merge',
            'time': 1425481200000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425258000000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425286800000,
            'count': 6
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425290400000,
            'count': 10
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425301200000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425312000000,
            'count': 3
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425315600000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425373200000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425387600000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425391200000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425398400000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425405600000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425409200000,
            'count': 10
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425412800000,
            'count': 20
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425416400000,
            'count': 6
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425463200000,
            'count': 3
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425466800000,
            'count': 8
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425470400000,
            'count': 9
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425474000000,
            'count': 6
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425477600000,
            'count': 14
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425481200000,
            'count': 10
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425484800000,
            'count': 3
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425488400000,
            'count': 8
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425492000000,
            'count': 9
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425495600000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425499200000,
            'count': 13
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425553200000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425560400000,
            'count': 7
        },
        {
            'name': 'Organization Maintenance',
            'action': 'New',
            'time': 1425564000000,
            'count': 3
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425204000000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425207600000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425250800000,
            'count': 6
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425279600000,
            'count': 8
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425283200000,
            'count': 3
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425290400000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425294000000,
            'count': 11
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425297600000,
            'count': 6
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425301200000,
            'count': 9
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425304800000,
            'count': 11
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425308400000,
            'count': 15
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425312000000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425315600000,
            'count': 24
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425319200000,
            'count': 7
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425337200000,
            'count': 7
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425340800000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425373200000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425376800000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425384000000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425387600000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425391200000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425398400000,
            'count': 10
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425402000000,
            'count': 15
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425405600000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425409200000,
            'count': 8
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425412800000,
            'count': 7
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425416400000,
            'count': 9
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425463200000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425466800000,
            'count': 14
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425470400000,
            'count': 16
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425474000000,
            'count': 18
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425477600000,
            'count': 8
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425481200000,
            'count': 11
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425484800000,
            'count': 11
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425488400000,
            'count': 23
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425492000000,
            'count': 12
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425495600000,
            'count': 13
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425499200000,
            'count': 19
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425553200000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open ',
            'time': 1425556800000,
            'count': 7
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425560400000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open',
            'time': 1425564000000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open Overview',
            'time': 1425315600000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open Overview',
            'time': 1425463200000,
            'count': 6
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open Overview',
            'time': 1425466800000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open Overview',
            'time': 1425470400000,
            'count': 8
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open Overview',
            'time': 1425474000000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open Overview',
            'time': 1425481200000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open Overview',
            'time': 1425488400000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Open Overview',
            'time': 1425492000000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Refresh',
            'time': 1425279600000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Refresh',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Refresh',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Refresh',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Refresh',
            'time': 1425492000000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Refresh',
            'time': 1425499200000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425258000000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425286800000,
            'count': 3
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 8
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425304800000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425308400000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425312000000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425405600000,
            'count': 5
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425409200000,
            'count': 12
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425412800000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425463200000,
            'count': 3
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425466800000,
            'count': 9
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425470400000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425474000000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425477600000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425481200000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425484800000,
            'count': 4
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425492000000,
            'count': 13
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425495600000,
            'count': 12
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425499200000,
            'count': 6
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425553200000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425556800000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Save',
            'time': 1425560400000,
            'count': 3
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Set as primary',
            'time': 1425286800000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Set as primary',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Set as primary',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Set as primary',
            'time': 1425564000000,
            'count': 1
        },
        {
            'name': 'Organization Maintenance',
            'action': 'Split',
            'time': 1425463200000,
            'count': 1
        },
        {
            'name': 'Organization Merge Maintenance',
            'action': 'Post',
            'time': 1425474000000,
            'count': 1
        },
        {
            'name': 'Organization Merge Maintenance',
            'action': 'Save',
            'time': 1425470400000,
            'count': 7
        },
        {
            'name': 'Organization Merge Maintenance',
            'action': 'Save',
            'time': 1425474000000,
            'count': 4
        },
        {
            'name': 'Organization Merge Maintenance',
            'action': 'Save',
            'time': 1425481200000,
            'count': 3
        },
        {
            'name': 'Organization Notes Maintenance',
            'action': 'Next',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Organization Notes Maintenance',
            'action': 'Save',
            'time': 1425286800000,
            'count': 2
        },
        {
            'name': 'Organization Notes Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Organization Notes Maintenance',
            'action': 'Save',
            'time': 1425301200000,
            'count': 7
        },
        {
            'name': 'Organization Notes Maintenance',
            'action': 'Save',
            'time': 1425373200000,
            'count': 2
        },
        {
            'name': 'Organization Notes Maintenance',
            'action': 'Save',
            'time': 1425412800000,
            'count': 4
        },
        {
            'name': 'Organization Notes Maintenance',
            'action': 'Save',
            'time': 1425466800000,
            'count': 2
        },
        {
            'name': 'Organization Notes Maintenance',
            'action': 'Save',
            'time': 1425470400000,
            'count': 2
        },
        {
            'name': 'Organization Notes Maintenance',
            'action': 'Save',
            'time': 1425499200000,
            'count': 1
        },
        {
            'name': 'Organization Overview',
            'action': 'btnAgencyId',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425283200000,
            'count': 6
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425308400000,
            'count': 3
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425315600000,
            'count': 3
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425373200000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425387600000,
            'count': 3
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425402000000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425416400000,
            'count': 4
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425463200000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425466800000,
            'count': 18
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425470400000,
            'count': 9
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425488400000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425492000000,
            'count': 4
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425495600000,
            'count': 8
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Add Row',
            'time': 1425556800000,
            'count': 5
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Delete',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Delete',
            'time': 1425315600000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Delete',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Delete',
            'time': 1425376800000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Delete',
            'time': 1425384000000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Delete',
            'time': 1425387600000,
            'count': 4
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Delete',
            'time': 1425402000000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Delete',
            'time': 1425556800000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425279600000,
            'count': 7
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425283200000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425308400000,
            'count': 3
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425315600000,
            'count': 3
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425319200000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425376800000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425387600000,
            'count': 6
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425416400000,
            'count': 12
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425466800000,
            'count': 4
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425470400000,
            'count': 4
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425474000000,
            'count': 7
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425481200000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425488400000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425492000000,
            'count': 5
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425495600000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Refresh',
            'time': 1425556800000,
            'count': 3
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425279600000,
            'count': 10
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425283200000,
            'count': 7
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 6
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425297600000,
            'count': 3
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425308400000,
            'count': 21
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425315600000,
            'count': 11
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425319200000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425373200000,
            'count': 3
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425376800000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425387600000,
            'count': 8
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425402000000,
            'count': 5
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425409200000,
            'count': 1
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425412800000,
            'count': 10
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425416400000,
            'count': 26
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425463200000,
            'count': 8
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425466800000,
            'count': 39
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425470400000,
            'count': 16
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425477600000,
            'count': 4
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425481200000,
            'count': 7
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425484800000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425488400000,
            'count': 25
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425492000000,
            'count': 28
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425495600000,
            'count': 22
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425499200000,
            'count': 2
        },
        {
            'name': 'Organization Payperiod Maintenance',
            'action': 'Save',
            'time': 1425556800000,
            'count': 11
        },
        {
            'name': 'Organization Split / Subsidiary Maintenance',
            'action': 'btnAgencyId',
            'time': 1425470400000,
            'count': 5
        },
        {
            'name': 'Organization Split / Subsidiary Maintenance',
            'action': 'btnAgencyId',
            'time': 1425499200000,
            'count': 4
        },
        {
            'name': 'Organization Split / Subsidiary Maintenance',
            'action': 'btnAgencyId',
            'time': 1425564000000,
            'count': 2
        },
        {
            'name': 'Organization Split / Subsidiary Maintenance',
            'action': 'Save',
            'time': 1425463200000,
            'count': 1
        },
        {
            'name': 'Organization Split / Subsidiary Maintenance',
            'action': 'Save',
            'time': 1425492000000,
            'count': 6
        },
        {
            'name': 'Organization Split / Subsidiary Maintenance',
            'action': 'Save',
            'time': 1425499200000,
            'count': 9
        },
        {
            'name': 'Organization Split / Subsidiary Maintenance',
            'action': 'Save',
            'time': 1425560400000,
            'count': 4
        },
        {
            'name': 'Organization Split / Subsidiary Maintenance',
            'action': 'Save',
            'time': 1425564000000,
            'count': 7
        },
        {
            'name': 'Page Header',
            'action': 'btnDocStar',
            'time': 1425279600000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'btnDocStar',
            'time': 1425283200000,
            'count': 2
        },
        {
            'name': 'Page Header',
            'action': 'btnDocStar',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'btnDocStar',
            'time': 1425294000000,
            'count': 3
        },
        {
            'name': 'Page Header',
            'action': 'btnDocStar',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Page Header',
            'action': 'btnDocStar',
            'time': 1425312000000,
            'count': 2
        },
        {
            'name': 'Page Header',
            'action': 'btnDocStar',
            'time': 1425319200000,
            'count': 11
        },
        {
            'name': 'Page Header',
            'action': 'btnDocStar',
            'time': 1425499200000,
            'count': 3
        },
        {
            'name': 'Page Header',
            'action': 'btnDocStar',
            'time': 1425553200000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'btnGenerate',
            'time': 1425258000000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'btnGenerate',
            'time': 1425268800000,
            'count': 3
        },
        {
            'name': 'Page Header',
            'action': 'btnGenerate',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Page Header',
            'action': 'btnGenerate',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'btnHelp',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'btnMPPrint',
            'time': 1425301200000,
            'count': 3
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425204000000,
            'count': 7
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425207600000,
            'count': 11
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425250800000,
            'count': 8
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425279600000,
            'count': 14
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425283200000,
            'count': 3
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425286800000,
            'count': 12
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425290400000,
            'count': 39
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425294000000,
            'count': 34
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425297600000,
            'count': 12
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425301200000,
            'count': 57
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425304800000,
            'count': 9
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425308400000,
            'count': 28
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425312000000,
            'count': 20
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425315600000,
            'count': 33
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425319200000,
            'count': 6
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425322800000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425337200000,
            'count': 6
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425340800000,
            'count': 4
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425373200000,
            'count': 11
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425376800000,
            'count': 3
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425384000000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425387600000,
            'count': 11
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425391200000,
            'count': 7
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425394800000,
            'count': 5
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425398400000,
            'count': 26
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425402000000,
            'count': 28
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425405600000,
            'count': 19
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425409200000,
            'count': 6
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425412800000,
            'count': 26
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425416400000,
            'count': 5
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425463200000,
            'count': 44
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425466800000,
            'count': 39
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425470400000,
            'count': 29
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425474000000,
            'count': 17
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425477600000,
            'count': 17
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425481200000,
            'count': 28
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425484800000,
            'count': 13
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425488400000,
            'count': 19
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425492000000,
            'count': 20
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425495600000,
            'count': 38
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425499200000,
            'count': 62
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425553200000,
            'count': 4
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425556800000,
            'count': 17
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425560400000,
            'count': 24
        },
        {
            'name': 'Page Header',
            'action': 'btnReturn',
            'time': 1425564000000,
            'count': 12
        },
        {
            'name': 'Page Header',
            'action': 'btnSave',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'lbtnEdit',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'lbtnGenerate',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'lbtnGenerate',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'lbtnGenerate',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'lbtnShowInESS',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Page Header',
            'action': 'lbtnShowInMWP',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Payroll Summary Lookup',
            'action': 'New',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Payroll Summary Lookup',
            'action': 'Search',
            'time': 1425290400000,
            'count': 3
        },
        {
            'name': 'Payroll Summary Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Next',
            'time': 1425250800000,
            'count': 1
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425250800000,
            'count': 2
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425294000000,
            'count': 3
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425301200000,
            'count': 16
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425304800000,
            'count': 3
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425308400000,
            'count': 11
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425326400000,
            'count': 8
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425402000000,
            'count': 1
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425412800000,
            'count': 1
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425466800000,
            'count': 5
        },
        {
            'name': 'Person Address Maintenance',
            'action': 'Save',
            'time': 1425499200000,
            'count': 4
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Correspondence',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Correspondence',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Correspondence',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Correspondence',
            'time': 1425315600000,
            'count': 1
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Refresh',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Save',
            'time': 1425294000000,
            'count': 3
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Save',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Save',
            'time': 1425322800000,
            'count': 1
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Save',
            'time': 1425402000000,
            'count': 2
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Save',
            'time': 1425412800000,
            'count': 2
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Save',
            'time': 1425466800000,
            'count': 5
        },
        {
            'name': 'Person Contact Maintenance',
            'action': 'Save',
            'time': 1425481200000,
            'count': 6
        },
        {
            'name': 'Person Lookup',
            'action': 'dgrResult',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'dgrResult',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Person Lookup',
            'action': 'dgrResult',
            'time': 1425312000000,
            'count': 4
        },
        {
            'name': 'Person Lookup',
            'action': 'dgrResult',
            'time': 1425394800000,
            'count': 2
        },
        {
            'name': 'Person Lookup',
            'action': 'dgrResult',
            'time': 1425405600000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'dgrResult',
            'time': 1425481200000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'dgrResult',
            'time': 1425556800000,
            'count': 9
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425290400000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425294000000,
            'count': 4
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425394800000,
            'count': 5
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425398400000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425402000000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425405600000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425412800000,
            'count': 2
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425463200000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425466800000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'New',
            'time': 1425481200000,
            'count': 5
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425204000000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425250800000,
            'count': 2
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425258000000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425290400000,
            'count': 13
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425294000000,
            'count': 4
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425297600000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425301200000,
            'count': 7
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425304800000,
            'count': 2
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425308400000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425312000000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425315600000,
            'count': 4
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425322800000,
            'count': 5
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425326400000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425387600000,
            'count': 2
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425394800000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425402000000,
            'count': 5
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425405600000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425412800000,
            'count': 7
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425463200000,
            'count': 13
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425466800000,
            'count': 9
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425470400000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425474000000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425481200000,
            'count': 6
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425484800000,
            'count': 4
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425488400000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425495600000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425499200000,
            'count': 6
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425556800000,
            'count': 15
        },
        {
            'name': 'Person Lookup',
            'action': 'Open',
            'time': 1425560400000,
            'count': 4
        },
        {
            'name': 'Person Lookup',
            'action': 'Open Overview',
            'time': 1425204000000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open Overview',
            'time': 1425294000000,
            'count': 2
        },
        {
            'name': 'Person Lookup',
            'action': 'Open Overview',
            'time': 1425308400000,
            'count': 6
        },
        {
            'name': 'Person Lookup',
            'action': 'Open Overview',
            'time': 1425312000000,
            'count': 11
        },
        {
            'name': 'Person Lookup',
            'action': 'Open Overview',
            'time': 1425315600000,
            'count': 9
        },
        {
            'name': 'Person Lookup',
            'action': 'Open Overview',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open Overview',
            'time': 1425322800000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Open Overview',
            'time': 1425481200000,
            'count': 2
        },
        {
            'name': 'Person Lookup',
            'action': 'Open Overview',
            'time': 1425488400000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Reset',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Reset',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425204000000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425250800000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425258000000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425290400000,
            'count': 11
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425294000000,
            'count': 6
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425297600000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425301200000,
            'count': 9
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425304800000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425308400000,
            'count': 8
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425312000000,
            'count': 11
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425315600000,
            'count': 9
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425322800000,
            'count': 5
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425326400000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425387600000,
            'count': 2
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425394800000,
            'count': 4
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425398400000,
            'count': 2
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425402000000,
            'count': 6
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425405600000,
            'count': 4
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425412800000,
            'count': 4
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425463200000,
            'count': 12
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425466800000,
            'count': 9
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425470400000,
            'count': 1
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425474000000,
            'count': 7
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425481200000,
            'count': 7
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425484800000,
            'count': 5
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425488400000,
            'count': 29
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425492000000,
            'count': 5
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425495600000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425499200000,
            'count': 5
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425556800000,
            'count': 13
        },
        {
            'name': 'Person Lookup',
            'action': 'Search',
            'time': 1425560400000,
            'count': 3
        },
        {
            'name': 'Person Lookup',
            'action': 'StoreSearch',
            'time': 1425387600000,
            'count': 2
        },
        {
            'name': 'Person Maintenance',
            'action': 'btnPersonId',
            'time': 1425294000000,
            'count': 2
        },
        {
            'name': 'Person Maintenance',
            'action': 'Correspondence',
            'time': 1425258000000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Delete',
            'time': 1425250800000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Delete',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Export To Excel',
            'time': 1425294000000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'grvBusPersonContact',
            'time': 1425466800000,
            'count': 3
        },
        {
            'name': 'Person Maintenance',
            'action': 'Merge SSN',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Merge SSN',
            'time': 1425484800000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425250800000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425290400000,
            'count': 6
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425294000000,
            'count': 4
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425297600000,
            'count': 6
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425301200000,
            'count': 4
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425315600000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425319200000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425322800000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425326400000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425402000000,
            'count': 4
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425412800000,
            'count': 4
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425463200000,
            'count': 7
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425466800000,
            'count': 15
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425481200000,
            'count': 3
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425484800000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425499200000,
            'count': 4
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425556800000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'New',
            'time': 1425560400000,
            'count': 2
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425204000000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425250800000,
            'count': 2
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425290400000,
            'count': 6
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425294000000,
            'count': 6
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425297600000,
            'count': 4
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425301200000,
            'count': 7
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425304800000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425315600000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425402000000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425412800000,
            'count': 5
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425463200000,
            'count': 7
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425481200000,
            'count': 2
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425484800000,
            'count': 4
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425556800000,
            'count': 2
        },
        {
            'name': 'Person Maintenance',
            'action': 'Open',
            'time': 1425560400000,
            'count': 5
        },
        {
            'name': 'Person Maintenance',
            'action': 'Refresh',
            'time': 1425290400000,
            'count': 2
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 5
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425294000000,
            'count': 13
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425297600000,
            'count': 3
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425304800000,
            'count': 3
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425312000000,
            'count': 2
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425315600000,
            'count': 2
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425322800000,
            'count': 5
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425394800000,
            'count': 3
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425398400000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425402000000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425405600000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425412800000,
            'count': 2
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425463200000,
            'count': 1
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425466800000,
            'count': 7
        },
        {
            'name': 'Person Maintenance',
            'action': 'Save',
            'time': 1425481200000,
            'count': 11
        },
        {
            'name': 'Person Overview',
            'action': 'btnSsn',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Person Overview',
            'action': 'btnSsn',
            'time': 1425312000000,
            'count': 9
        },
        {
            'name': 'Person Overview',
            'action': 'btnSsn',
            'time': 1425315600000,
            'count': 6
        },
        {
            'name': 'Person Overview',
            'action': 'btnSsn',
            'time': 1425463200000,
            'count': 1
        },
        {
            'name': 'Person Overview',
            'action': 'Open',
            'time': 1425312000000,
            'count': 7
        },
        {
            'name': 'Person Overview',
            'action': 'Open',
            'time': 1425315600000,
            'count': 1
        },
        {
            'name': 'Person Quick Search',
            'action': 'Search',
            'time': 1425553200000,
            'count': 1
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Adv Reset',
            'time': 1425499200000,
            'count': 1
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Adv Reset',
            'time': 1425549600000,
            'count': 1
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Adv Reset',
            'time': 1425553200000,
            'count': 1
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Adv Search',
            'time': 1425495600000,
            'count': 3
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Adv Search',
            'time': 1425499200000,
            'count': 19
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Adv Search',
            'time': 1425549600000,
            'count': 20
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Adv Search',
            'time': 1425553200000,
            'count': 27
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Adv Search',
            'time': 1425556800000,
            'count': 2
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'New',
            'time': 1425294000000,
            'count': 3
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'New',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'New',
            'time': 1425301200000,
            'count': 3
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'New',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'New',
            'time': 1425499200000,
            'count': 1
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Open',
            'time': 1425297600000,
            'count': 4
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Open',
            'time': 1425301200000,
            'count': 17
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Open',
            'time': 1425308400000,
            'count': 7
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Open',
            'time': 1425474000000,
            'count': 1
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Open',
            'time': 1425553200000,
            'count': 1
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Search',
            'time': 1425294000000,
            'count': 4
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Search',
            'time': 1425297600000,
            'count': 6
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Search',
            'time': 1425301200000,
            'count': 12
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Search',
            'time': 1425308400000,
            'count': 8
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Search',
            'time': 1425466800000,
            'count': 2
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Search',
            'time': 1425474000000,
            'count': 2
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Search',
            'time': 1425495600000,
            'count': 2
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Search',
            'time': 1425553200000,
            'count': 6
        },
        {
            'name': 'Problem Information Record Lookup',
            'action': 'Search',
            'time': 1425560400000,
            'count': 1
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Delete',
            'time': 1425301200000,
            'count': 5
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Next',
            'time': 1425297600000,
            'count': 3
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Next',
            'time': 1425301200000,
            'count': 37
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Next',
            'time': 1425308400000,
            'count': 3
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Prev',
            'time': 1425297600000,
            'count': 2
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Prev',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Save',
            'time': 1425294000000,
            'count': 4
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Save',
            'time': 1425297600000,
            'count': 3
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Save',
            'time': 1425301200000,
            'count': 31
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Save',
            'time': 1425308400000,
            'count': 3
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Upload',
            'time': 1425294000000,
            'count': 3
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Upload',
            'time': 1425301200000,
            'count': 5
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'Upload',
            'time': 1425308400000,
            'count': 1
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'View',
            'time': 1425297600000,
            'count': 2
        },
        {
            'name': 'Problem Record Maintenance',
            'action': 'View',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'System Management Maintenance',
            'action': 'Save',
            'time': 1425250800000,
            'count': 2
        },
        {
            'name': 'User Role Maintenance',
            'action': 'Save',
            'time': 1425286800000,
            'count': 2
        },
        {
            'name': 'User Role Maintenance',
            'action': 'Save',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Users Lookup',
            'action': 'Delete',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Users Lookup',
            'action': 'ExportExcel',
            'time': 1425297600000,
            'count': 1
        },
        {
            'name': 'Users Lookup',
            'action': 'New',
            'time': 1425286800000,
            'count': 1
        },
        {
            'name': 'Users Lookup',
            'action': 'New',
            'time': 1425301200000,
            'count': 2
        },
        {
            'name': 'Users Lookup',
            'action': 'Open',
            'time': 1425283200000,
            'count': 1
        },
        {
            'name': 'Users Lookup',
            'action': 'Open',
            'time': 1425286800000,
            'count': 4
        },
        {
            'name': 'Users Lookup',
            'action': 'Open',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Users Lookup',
            'action': 'Search',
            'time': 1425283200000,
            'count': 1
        },
        {
            'name': 'Users Lookup',
            'action': 'Search',
            'time': 1425286800000,
            'count': 6
        },
        {
            'name': 'Users Lookup',
            'action': 'Search',
            'time': 1425290400000,
            'count': 1
        },
        {
            'name': 'Users Lookup',
            'action': 'Search',
            'time': 1425297600000,
            'count': 2
        },
        {
            'name': 'Users Lookup',
            'action': 'Search',
            'time': 1425301200000,
            'count': 1
        },
        {
            'name': 'Users Maintenance',
            'action': 'Delete',
            'time': 1425286800000,
            'count': 4
        },
        {
            'name': 'Users Maintenance',
            'action': 'New',
            'time': 1425286800000,
            'count': 3
        },
        {
            'name': 'Users Maintenance',
            'action': 'Save',
            'time': 1425283200000,
            'count': 1
        },
        {
            'name': 'Users Maintenance',
            'action': 'Save',
            'time': 1425286800000,
            'count': 2
        },
        {
            'name': 'Users Maintenance',
            'action': 'Save',
            'time': 1425301200000,
            'count': 2
        }
    ];
    var object = {};
    var propertyCount = 0;
    var timeline = {};
    for (i = 0; i < data.length; i++) {
        if (window.CP.shouldStopExecution(1)) {
            break;
        }
        var uniqueActionName = data[i].name + data[i].action;
        if (object[uniqueActionName] == undefined) {
            object[uniqueActionName] = [];
            propertyCount = propertyCount + 1;
        }
        var timeAndCount = [
            data[i].time,
            data[i].count
        ];
        object[uniqueActionName].push(timeAndCount);
        var uniqueTimeline = data[i].time;
        if (timeline[uniqueTimeline] == undefined) {
            timeline[uniqueTimeline] = data[i].count;
        } else {
            timeline[uniqueTimeline] = timeline[uniqueTimeline] + data[i].count;
        }
    }
    window.CP.exitedLoop(1);
    var propct = 0;
    var series = [];
    for (var propertyName in object) {
        if (window.CP.shouldStopExecution(2)) {
            break;
        }
        propct = propct + 1;
        var item = {};
        item.name = propertyName;
        item.data = object[propertyName];
        series.push(item);
    }
    window.CP.exitedLoop(2);
    var timeSeries = [];
    for (var propertyName in timeline) {
        if (window.CP.shouldStopExecution(3)) {
            break;
        }
        var item = [];
        var timeInNumber = Number(propertyName);
        var countInNumber = Number(timeline[propertyName]);
        item.push(timeInNumber);
        item.push(countInNumber);
        timeSeries.push(item);
        timeSeries.sort();
    }
    window.CP.exitedLoop(3);
    var returnSeries = {};
    returnSeries.ActualSeries = series;
    returnSeries.NavigationSeries = timeSeries;
    return returnSeries;
};
//# sourceURL=pen.js
</script>

</head>
<body>

	<!-- NAVBAR -->
	<header> <nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"> <img
				src="resources/img/aperto-logo.svg" alt="Aperto" align="left"
				width="114px" height="21px" />
			</a>
		</div>
		<div>

			<ul class="nav navbar-nav navbar-right">
				<% User user = (User) session.getAttribute("user"); %>
				<li class="user-images"><img src="<%=user.getPicturePath()%>"
					width="50px" height="40px" /></li>
				<li><a href="#"> <%=user.getUserName()%>
				</a></li>
				<li class="vertical-separator">|</li>
				<li><a href="LogoutServlet">Log out </a></li>
				<li class="vertical-separator">|</li>
				<li><a href="#"> EN </a></li>
			</ul>
		</div>
	</div>
	</nav> </header>

	<div id="top">
		<h2>Project Summary</h2>
	</div>

	<!-- MAIN -->
	<section> <!-- SEARCH CONTAINER -->
	<form class="search-container">
		<input class="search-box" type="search" placeholder="Search"
			aria-controls="datatable" />
		<div pseudo="-webkit-input-placeholder"
			style="display: block !important; text-overflow: clip;"></div>
	</form>

	<!-- BUTTON -->
	<div class="material-button-anim">
		<ul class="list-inline" id="options">
			<li class="option">
				<button class="material-button option1" type="button">
					<span class="fa fa-plus" aria-hidden="true"></span>
				</button>
			</li>
			<li class="option">
				<button class="material-button option2" type="button">
					<span class="fa fa-bar-chart" aria-hidden="true"></span>
				</button>
			</li>
			<!-- <li class="option">
      				<button class="material-button option3" type="button">
        				<span class="fa fa-pencil" aria-hidden="true"></span> 
      				</button>
    			</li> -->
		</ul>
		<button class="material-button material-button-toggle" type="button">
			<span class="fa fa-bars" aria-hidden="true"></span>
		</button>
	</div>
	<script> 
			$('.material-button-toggle').click(function () {
        		$(this).toggleClass('open');
        		$('.option').toggleClass('scale-on');
			});
		</script> </section>

	<!-- PROJECT TABLE -->
	<div class="project-container">
		<div class="heading">
			<h2>Projects</h2>
		</div>

		<div class="content">
			<div id="admin" onclick="myFunction()">
				<b id="project_settings">01-Project</b><i id="icon_setting"
					class="fa fa-caret-right"></i>
			</div>
			<div id="menu">
				<a>
					<table>
						<tr>
							<td id="td1">No.</td>
							<td>#0001</td>
						</tr>
						<tr>
							<td id="td1">Start</td>
							<td>01.01.2016</td>
						</tr>
						<tr>
							<td id="td1">Status</td>
							<td>initiation</td>
						</tr>
						<tr>
							<td id="td1">Percentage</td>
							<td>0%</td>
						</tr>
						<tr>
							<td id="td1">Cost</td>
							<td>€ 35.100,00</td>
						</tr>
					</table>
				</a>
				<div id="container"
					style="min-width: 310px; height: 400px; margin: 0 auto"></div>
			</div>
		</div>
	</div>

	<script
		src='//assets.codepen.io/assets/common/stopExecutionOnTimeout.js?t=1'></script>
	<script
		src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script>
		$('#settings, #project_settings, #icon_setting').on('click', function () {
    	$('#menu').fadeToggle('fast');
		});
	</script>
	</div>



</body>
</html>