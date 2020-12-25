let wakeDog = function (dogName = "Byron", dogBreed = "poodle") {
  console.log(`Wake ${dogName} the ${dogBreed}`);
  return `Wake ${dogName} the ${dogBreed}`;
};
let leashDog = function (dogName = "Byron", dogBreed = "poodle") {
  console.log(`Leash ${dogName} the ${dogBreed}`);
  return `Leash ${dogName} the ${dogBreed}`;
};
let walkToPark = function (dogName = "Byron", dogBreed = "poodle") {
  console.log(`Walk to the park with ${dogName} the ${dogBreed}`);
  return `Walk to the park with ${dogName} the ${dogBreed}`;
};
let throwFrisbee = function (dogName = "Byron", dogBreed = "poodle") {
  console.log(`Throw the frisbee for ${dogName} the ${dogBreed}`);
  return `Throw the frisbee for ${dogName} the ${dogBreed}`;
};
let walkHome = function (dogName = "Byron", dogBreed = "poodle") {
  console.log(`Walk home with ${dogName} the ${dogBreed}`);
  return `Walk home with ${dogName} the ${dogBreed}`;
};
let unleashDog = function (dogName = "Byron", dogBreed = "poodle") {
  console.log(`Unleash ${dogName} the ${dogBreed}`);
  return `Unleash ${dogName} the ${dogBreed}`;
};

const routine = [
  wakeDog,
  leashDog,
  walkToPark,
  throwFrisbee,
  walkHome,
  unleashDog,
];
const exerciseDog = (dog, breed) => {
  return routine.map((fn) => fn(dog, breed));
};
