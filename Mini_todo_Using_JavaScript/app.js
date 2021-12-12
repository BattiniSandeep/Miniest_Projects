let input = prompt("What do you want to do 1.new, 2.List, 3. Delete, 4.Quit").toLowerCase();
const toDoList = [];
while (input !== 'quit') {
    if (input === 'new') {
        let newToDo = prompt("Enter a new todo");
        toDoList.push(newToDo);
        console.log(`${newToDo} is added to to list`);
    } else if (input === 'list') {
        console.log('**********');
        for (let todo of toDoList) {
            console.log(todo);
        }
        console.log('**********');
    } else if (input === 'delete') {
        let index = Number(prompt("Enter index number of todo to delete"));
        // toDoList.shift(toDoList[index]);
        // delete toDoList[index];
        if (index >= toDoList.length) {
            alert('Invalid Index')
        } else {
            toDoList.splice(index, 1);
            console.log("TODO REMOVED");
        }
    }
    input = prompt("What do you want to do 1.new, 2.List, 3. Delete, 4.Quit").toLowerCase();
}
console.log("OK, YOU QUIT THE APP")