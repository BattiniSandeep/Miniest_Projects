const reset = document.querySelector('#reset');
const player1Btn = document.querySelector("#player1");
const player2Btn = document.querySelector('#player2');
const p1Display = document.querySelector('#p1Display');
const p2Display = document.querySelector('#p2Display');
const winningScoreSelect = document.querySelector('#playTo')

let player1Score = 0;
let player2Score = 0;
let winningScore = 5;
let isGameOver = false;

winningScoreSelect.addEventListener('change', function () {
    winningScore = parseInt(this.value);
    resetScore();
})


player1Btn.addEventListener('click', function () {
    if (!isGameOver) {
        player1Score += 1;
        if (player1Score === winningScore) {
            isGameOver = true;
            colorIt(p1Display, p2Display);
            player2Btn.disabled = true;
            player1Btn.disabled = true;
        }
        p1Display.textContent = player1Score;
    }
});

player2Btn.addEventListener('click', function () {
    if (!isGameOver) {
        player2Score += 1;
        if (player2Score === winningScore) {
            isGameOver = true;
            colorIt(p2Display, p1Display);
            player2Btn.disabled = true;
            player1Btn.disabled = true;
        }
        p2Display.textContent = player2Score;
    }
});

reset.addEventListener('click', resetScore);

function resetScore() {
    player2Score = 0;
    player1Score = 0;
    isGameOver = false;
    p1Display.classList.remove('has-text-success', 'has-text-danger')
    p2Display.classList.remove('has-text-success', 'has-text-danger')
    p2Display.textContent = 0;
    p1Display.textContent = 0;
    player2Btn.disabled = false;
    player1Btn.disabled = false;
}

function colorIt(winner, loser) {
    winner.classList.add('has-text-success');
    loser.classList.add('has-text-danger');
}
