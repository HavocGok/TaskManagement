<!DOCTYPE html>
<html>
<head>
    <title>Edit Task</title>
</head>
<body>
    <h1>Edit Task</h1>
    <form action="updateTask" method="post">
        <input type="hidden" id="id" name="id" value="${task.id}">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${task.name}">
        <label for="description">Description:</label>
        <input type="text" id="description" name="description" value="${task.description}">
        <label for="status">Status:</label>
        <input type="text" id="status" name="status" value="${task.status}">
        <button type="submit">Save</button>
    </form>
    <a href="/">Back to Home</a>
</body>
</html>
