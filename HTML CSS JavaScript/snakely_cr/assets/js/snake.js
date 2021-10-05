/* Objects */

class SnakeGame {
  constructor() {
    this.grid  = this.createGrid(25);
    this.snake = new Snake();
    this.food  = new Food();
    this.score = 0;
    this.speed = 110;

    $('.score span').html(this.score);
    $('.game-over').hide();
  }

  isGameOver() {
    if (this.snake.isInBounds() && this.snake.isNotOverlapping()) {
      return false;
    } else {
      return true;
    }
  }

  addScore() {
    this.score += 1;
    $('.score span').html(this.score);
    this.increaseSpeed();
  }

  increaseSpeed() {
    if (this.speed > 60) {
      this.speed -= 1.5;
    }
  }

  parseKey(keyCode) {
    let opposites = {'r': 'l', 'u': 'd', 'l': 'r', 'd': 'u'};
    let keyMap    = {37: 'l', 38: 'u', 39: 'r', 40: 'd'};
    let keyPress  = keyMap[keyCode];

    if (keyPress) {
      if ((opposites[keyPress] !== this.snake.direction)) {  
        this.snake.direction = keyPress;
      }
    }
  }

  passTime() {
    this.snake.move(this);
  }

  renderSnake() {
    $('.snake').removeClass('snake');

    let pieces = this.snake.pieces;
    for (var i = 0; i < pieces.length; i++) {
      $('*[data-grid="'+pieces[i][0]+','+pieces[i][1]+'"]').addClass('snake');
    }
  }

  renderFood() {
    $('.food').removeClass('food');
    let food = this.food.location;
    $('*[data-grid="'+food[0]+','+food[1]+'"]').addClass('food');
  }

  renderGrid() {
    let $grid = $('.snake-game');
    
    $grid.empty();

    for (var i = 0; i < this.grid.length; i++) {
      let $row = $('<div class="row"></div>')
      
      for (var ii = 0; ii < this.grid[i].length; ii++) {
        let $square = $('<div class="square"></div>');
      
        $square.attr('data-grid', i+','+ii)  
        $row.append($square);
      }

      $grid.append($row);
    }
  }

  createGrid(size) {
    let grid = [];
    for (var i = 0; i < size; i++) {
      grid.push(this.createRow(size));
    }

    return grid;
  }

  createRow(size) {
    let row = [];
    for (var i = 0; i < size; i++) {
      row.push(" ");
    }

    return row;
  }
}

class Snake {
  constructor() {
    this.direction = "r";
    this.pieces    = [[12,12],[12,11],[12,10],[12,9],[12,8]];
  }

  isInBounds() {
    if ((this.pieces[0][0] < 25 && this.pieces[0][0] >= 0) && (this.pieces[0][1] < 25 && this.pieces[0][1] >= 0)) {
      return true;
    } else {
      return false;
    }
  }

  isNotOverlapping() {
    let piece = this.pieces[0];
    for (var i = 1; i < this.pieces.length; i++) {
      if (JSON.stringify(piece) === JSON.stringify(this.pieces[i])) {
        return false;
      }
    }
    return true;
  }

  hasPiece(coordinate) {
    var condition = false;
    for (var i = 0; i < this.pieces.length; i++) {
      if ((this.pieces[i][0] == coordinate[0]) && (this.pieces[i][1] == coordinate[1])) {
        var condition = true;
      }
    }
    return condition;
  }

  // Takes 'food' arg so updatePieces can decide if food has been eaten or not
  move(context) {
    switch (this.direction) {
      case "r":
        this.updatePieces(0,1,context);
        break;
      case "l":
        this.updatePieces(0,-1,context);
        break;
      case "u":
        this.updatePieces(-1,0,context);
        break;
      case "d":
        this.updatePieces(1,0,context);
        break;
    }
  }

  updatePieces(yShift, xShift, context) {
    let coord = [this.pieces[0][0]+yShift, this.pieces[0][1]+xShift];
    this.pieces.unshift(coord);
    
    let food = context.food;
    if (JSON.stringify(food.location) == JSON.stringify(coord)) {
      food.eat(context);
    } else {
      this.removeTail();
    }
  }

  removeTail() {
    this.pieces.pop();
  }
}

class Food {
  constructor() {
    this.location = [3,4];
  }

  eat(context) {
    context.addScore();

    var coord = this.randomCoord();
    var snake = context.snake;

    while (snake.hasPiece(coord)) {
      coord = this.randomCoord();
    } 
    
    this.location = coord;
  }

  randomCoord() {
    let coord = []
    coord.push(Math.floor(Math.random() * 25));
    coord.push(Math.floor(Math.random() * 25));
    return coord;
  }
}
// Implementation

function gameLoop(game) {
  setTimeout(function() {
    game.passTime();

    if (!game.isGameOver()) {
      // Starts event listener for keydown only after clicking '.new-game'
      // Stop event listener, so only one key press per cycle is registered
      $('body').on('keydown', function(event) {
        game.parseKey(event.keyCode);
        $('body').unbind('keydown');
      });

      var left = jQuery.Event('keydown', { keyCode: 37});
      var up = jQuery.Event('keydown', { keyCode: 38});
      var right = jQuery.Event('keydown', { keyCode: 39});
      var down = jQuery.Event('keydown', { keyCode: 40});

      $('button.left').click(function() { 
        $('body').trigger(left);
      });
      $('button.up').click(function() { 
        $('body').trigger(up);
      });
      $('button.right').click(function() { 
        $('body').trigger(right);
      });
      $('button.down').click(function() { 
        $('body').trigger(down);
      });

      game.renderSnake();
      game.renderFood();

      gameLoop(game);
    } else {
      $('.game-over').fadeIn('fast');
      $('.new-game').focus();
    }
  }, game.speed);
}

$(document).ready(function () {
  let game = new SnakeGame();
  game.renderGrid();

  var $button = $('.new-game');
  $button.focus();
  $button.click(function(event) {
    $button.blur();
    $('.score').show();

    let game = new SnakeGame();
    gameLoop(game);
  });
});