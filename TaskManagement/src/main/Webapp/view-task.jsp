<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Task Management</title>
    <link rel="stylesheet" type="text/css" href="static/css/styles.css">
</head>
<body>
    <h1>Task Management System</h1>
    <a href="viewTask">Add New Task</a>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="task" items="${tasks}">
            <tr>
                <td>${task.id}</td>
                <td>${task.name}</td>
                <td>${task.description}</td>
                <td>${task.status}</td>
                <td>
                    <a href="/edit-task/${task.id}">Edit</a>
                    <a href="/delete-task/${task.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

