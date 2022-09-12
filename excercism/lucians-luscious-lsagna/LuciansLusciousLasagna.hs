module LuciansLusciousLasagna (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes) where

-- TODO: define the expectedMinutesInOven constant
expectedMinutesInOven :: (Num a) => a
expectedMinutesInOven = 40

-- TODO: define the preparationTimeInMinutes function
preparationTimeInMinutes :: (Num a) => a -> a
preparationTimeInMinutes n = n * 2

-- TODO: define the elapsedTimeInMinutes function
elapsedTimeInMinutes :: (Num a) => a -> a -> a
elapsedTimeInMinutes lyrs timeInOven = preparationTimeInMinutes lyrs + timeInOven
