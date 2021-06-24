const Traveller = require('./Traveller');
const Locations = require('./Locations');
const Trip = require('./Trip');

Traveller.belongsToMany(Locations, {
    through: {model: Trip, unique: false}
  });
  
  Locations.belongsToMany(Traveller, {
    through: {model: Trip, unique: false}
  })
  
  module.exports = { Traveller, Locations, Trip }