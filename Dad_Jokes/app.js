const jokes = document.querySelector('#jokesList');

const button = document.querySelector('#jokesButton');

const addNewJoke = async () => {
    let joke = await getDadJoke();
    const newLI = document.createElement('li');
    newLI.append(joke);
    jokes.append(newLI);
}

const getDadJoke = async () => {
    try {
        const config = { headers: { Accept: 'application/json' } }
        const res = await axios.get(`https://icanhazdadjoke.com/`, config);
        return res.data.joke;
    } catch {
        return "Sorry, No Jokes Available! :("
    }

}

button.addEventListener('click', addNewJoke);