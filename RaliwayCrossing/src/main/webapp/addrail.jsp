<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Railway Crossing</title>
<style>
    body {
        text-align: center;
    }

    h2 {
        color: #333;
    }

    form {
        margin-top: 20px;
    }

    table {
        margin: 0 auto;
    }

    td {
        padding: 5px;
    }

    input[type="text"],
    input[type="time"],
    input[type="radio"] {
        padding: 5px;
        border-radius: 4px;
        border: 1px solid #ccc;
    }

    input[type="submit"] {
        padding: 5px 10px;
        background-color: #f2f2f2;
        border-radius: 4px;
        border: none;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #ddd;
    }
</style>
</head>
<body>
	<h2>Add Railway Crossing</h2>

	<form action="RailCrossing" method="POST">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="Name" required></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input type="text" name="Address" required></td>
			</tr>
			<tr>
				<td>Landmark:</td>
				<td><input type="text" name="Landmark" required></td>
			</tr>
			<tr>
				<td>Time Schedule:</td>
				<td><input type="time" name="Trainschedule" required></td>
			</tr>
			<tr>
				<td>Person In-Charge:</td>
				<td><input type="text" name="pname" required></td>
			</tr>
			<tr>
				<td>Status:</td>
				<td><input type="radio" name="status" value="open" required>
					open <input type="radio" name="status" value="closed" required>
					closed</td>
			</tr>
			<tr>
				<td><input type="submit" value="Add Crossing"></td>
			</tr>
		</table>
	</form>
</body>
</html>