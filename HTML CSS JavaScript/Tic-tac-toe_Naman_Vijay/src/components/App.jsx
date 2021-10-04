import React, { useState } from 'react';
import ListItem from './ListItem';

function App(){
    
    const initial=[null,null,null,null,null,null,null,null,null];
    const [gameState,setGameState]=useState(initial);
    const [IsxChance,setIsxChance]=useState(false);
    function HandleClick(index){
        
        let squares=Array.from(gameState);
        if(squares[index]) return;
        squares[index]=IsxChance?"X":"O";
        setGameState(squares);
        setIsxChance(!IsxChance);

    }

 let status;
const winner=calculateWinner(gameState);

 status=winner ? `winner is ${winner} 🎉` : `Next player is ${IsxChance?"X":"O"}`;

    return (
        <div>
<div class="text-center" id="box">
  <header>
    <h1> Tic Tac Toe</h1>
    <h1>{status}</h1>
  
  </header>
  <ul id="gameBoard">
    <ListItem className="tic" onClick={()=>HandleClick(0)} value={gameState[0]}> </ListItem>
    <ListItem className="tic" onClick={()=>HandleClick(1)} value={gameState[1]}> </ListItem>
    <ListItem className="tic" onClick={()=>HandleClick(2)} value={gameState[2]}> </ListItem>
    <ListItem className="tic" onClick={()=>HandleClick(3)} value={gameState[3]}> </ListItem>
    <ListItem className="tic" onClick={()=>HandleClick(4)} value={gameState[4]}> </ListItem>
    <ListItem className="tic" onClick={()=>HandleClick(5)} value={gameState[5]}> </ListItem>
    <ListItem className="tic" onClick={()=>HandleClick(6)} value={gameState[6]}> </ListItem>
    <ListItem className="tic" onClick={()=>HandleClick(7)} value={gameState[7]}> </ListItem>
    <ListItem className="tic" onClick={()=>HandleClick(8)} value={gameState[8]}> </ListItem>
  </ul>
  <div class="clearfix"></div>
<footer>
  <button id="reset" onClick={()=>{setGameState(initial)}}>Reset</button>
</footer>
 </div>
 </div
>
    );
}

const calculateWinner=(gameState)=> {
            const lines = [
              [0, 1, 2],
              [3, 4, 5],
              [6, 7, 8],
              [0, 3, 6],
              [1, 4, 7],
              [2, 5, 8],
              [0, 4, 8],
              [2, 4, 6],
            ];
            for (let i = 0; i < lines.length; i++) {
              const [a, b, c] = lines[i];
              if (gameState[a] && gameState[a] === gameState[b] && gameState[b] === gameState[c]) {
                return gameState[a];
              }
            }
            return null;
          }
    
export default App;