// getter method example

const robot = {
  _model: '1E78V2',
  _energyLevel: 100,
  // getter method using 'get' keyword
  get energyLevel(){
    if(typeof this._energyLevel === 'number') {
      return 'My current energy level is ' + this._energyLevel
    } else {
      return "System malfunction: cannot retrieve energy level"
    }
  }
};

console.log(robot.energyLevel);

// setter method example

const robot = {
  _model: '1E78V2',
  _energyLevel: 100,
  _numOfSensors: 15,
  // getter method using 'get' keyword
  get numOfSensors(){
    if (typeof this._numOfSensors === 'number'){
      return this._numOfSensors;
    } else {
      return 'Sensors are currently down.'
    }
  },
  // setter method using 'set' keyword
  set numOfSensors(num){
    if (typeof num == 'number' && num >= 0){
      this._numOfSensors = num;
    } else {
      return 'Pass in a number that is greater than or equal to 0';
    }
  }
};

// this is how to parse value to the setter numOfSensors method
robot.numOfSensors = 100;

console.log(robot.numOfSensors);
console.log(robot._numOfSensors);
