<!DOCTYPE html>
<html>
<head>
    <title>Add Task</title>
</head>
<body>
    <h1>Add New Task</h1>
    <form action="addTask" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name">
        <label for="description">Description:</label>
        <input type="text" id="description" name="description">
        <label for="status">Status:</label>
        <input type="text" id="status" name="status">
        <button type="submit">Save</button>
    </form>
    <a href="/">Back to Home</a>
</body>
</html>
