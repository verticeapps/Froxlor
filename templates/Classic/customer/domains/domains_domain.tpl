<tr class="" onmouseover="this.className='RowOverSelected';" onmouseout="this.className='';">
	<td class="field_name_border_left"><a href="http://{$row['domain']}" target="_blank">{$row['domain']}</a></td>
	<td class="field_name"><if $row['aliasdomain'] == ''>{$row['documentroot']}</if><if isset($row['aliasdomainid']) && $row['aliasdomainid'] != 0>{$lng['domains']['aliasdomain']} {$row['aliasdomain']}</if></td>
	<td class="field_name"><if $row['caneditdomain'] == '1'><a href="{$linker->getLink(array('section' => 'domains', 'page' => 'domains', 'action' => 'edit', 'id' => $row['id']))}">{$lng['panel']['edit']}</a></if></td>
	<td class="field_name"><if $row['parentdomainid'] != '0' && !(isset($row['domainaliasid']) && $row['domainaliasid'] != 0)><a href="{$linker->getLink(array('section' => 'domains', 'page' => 'domains', 'action' => 'delete', 'id' => $row['id']))}">{$lng['panel']['delete']}</a></if><if $row['parentdomainid'] == '0' && !(isset($row['domainaliasid']) && $row['domainaliasid'] != 0)>{$lng['domains']['isassigneddomain']}</if><if isset($row['domainaliasid']) && $row['domainaliasid'] != 0><a href="{$linker->getLink(array('section' => 'domains', 'page' => 'domains', 'searchfield' => 'd.aliasdomain', 'searchtext' => $row['id']))}">{$lng['domains']['hasaliasdomains']}</a></if></td>
</tr>