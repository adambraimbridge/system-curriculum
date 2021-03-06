<!DOCTYPE html>
<html>
	<head>
		{{> _head }}
	</head>
	<body>
		{{> _header }}
		<div id='content'>

			<h1>{{teamname}}</h1>
			<a href="/team/{{teamid}}/form" class='addresponse'><button class="o-buttons o-buttons--standout o-buttons--big">Add / Change Response</button></a>
			<table class="o-table o-table--responsive-overflow o-table--row-stripes" data-o-component="o-table">
				<thead>
					<th class="system" title="Name of System as appears in CMDB">System</th>
					{{#members}}<th class="name"><span class="inner">{{name}}</span></th>{{/members}}
					<th title="Average knowledge score for the system (Only counting team members who have given a score)" class="summarycolumn"><span class="inner">Team Comfort&nbsp;Level</span></th>
					<th title="Absolute number of members with in depth knowledge of the system.  (Percentages are out of all members listed here, regardless of if they've scored every system)" class="summarycolumn"><span class="inner">Key&nbsp;People Dependencies</span></th>
				</thead>
				<tbody>
				{{#systems}}
					<tr>
						<td class="system">{{name}}</td>
						{{#members}}<td class="levelcell {{level}}" title="{{levellabel}}">{{level}}</td>{{/members}}
						<td class="average {{avgclass}} o-table__cell--numeric">{{avglevel}}</td>
						<td class="indepth {{indepthclass}} o-table__cell--numeric">{{indepths}} {{#indepths}}({{indepthspercent}}%){{/indepths}}</td>
					</tr>
				{{/systems}}
				</tbody>
				<tfoot>
					<th class="system lastUpdate" title="The time these details were most recently updated">Last Update</th>
					{{#members}}<td class="otable__cell--content-secondary">{{lastUpdate}}</td>{{/members}}
					<td class="average"></td>
					<td class="indepth"></td>
				</tfoot>
			</table>
		</div>
		{{> _footer}}
	</body>
</html>
