<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<div id="browsePage">
	<h2>User List</h2>

	<a href='<s:url value="/user/new"/>'>New</a>
	
	<link rel="stylesheet" href="<c:url value="/resources/datatables/css/demo_page.css" />" type="text/css" />
	<link rel="stylesheet" href="<c:url value="/resources/datatables/css/demo_table.css" />" type="text/css" />
	<script type="text/javascript" language="javascript" src="<c:url value="/resources/datatables/jquery.dataTables.min.js" />"></script>
	<script type="text/javascript" language="javascript" src="<c:url value="/resources/datatables/dataTables.utils.js" />"></script>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(initDataTable);
		function initDataTable(){
			var oTable = $('#example').dataTable( {
				"bProcessing": true,
				"bServerSide": true,
				"bStateSave": true,
				"sPaginationType": "full_numbers",
				"sAjaxSource": "search.json",
				"fnServerData": _getServerData,
				"aoColumns": [
				              { "mDataProp": "username" },
				              { "mDataProp": "firstName" },
				              { "mDataProp": "lastName" },
				              { "mDataProp": "email" },
				              { "mDataProp": "id",
				            	"bUseRendered": false, 
				            	"bSortable": false,
				            	"fnRender": standardViewUpdateAction }
				          ]
			} );
		}
	</script>
		
	<div class="ex_highlight_row">
		<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
			<thead>
				<tr>
					<th width="20%">Username</th>
					<th width="25%">First name</th>
					<th width="25%">Last name</th>
					<th width="15%">Email</th>
					<th width="10%">Action</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="5" class="dataTables_empty">Loading data ...</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>