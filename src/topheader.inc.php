<div class="topheader"></div>

<div class="header-wrap">
<div class="header">
	<div class="header-bg">
		<div class="title">
		<table class="orgname">
			<tr>
				<td></td>
				<td>اتوماسیون اداری سنگ پشت</td>
				<td></td>
			</tr>
		</table>
		</div>
	</div>

	<div class="header-right">
	<?php
	if(isset($_SESSION['agent'])){
	echo "<b>".$_SESSION['first_name']." ".$_SESSION['last_name']."</b><br>"; 	
	}
	else{
		echo "خوش آمدید";
	}
	?>
	</div>
</div>
</div>