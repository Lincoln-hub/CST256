<form action = "whoami" method = "POST">
		<input type = "hidden" name = "_token" value = "<?php echo csrf_token() ?>">
		<h2> Login Page</h2>
		<table>
			<tr>
				<td>Username: </td>
				<td><input type = "text" name = "username" /></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><input type = "text" name = "password" /></td>
			</tr>
			<tr>
				<td colspan = "2" align = "center">
					<input type = "submit" value = "Login" />
				</td>
		</table>
	</form>
