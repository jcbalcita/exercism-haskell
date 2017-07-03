module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn p s = secsToYears p s

secsToYears :: Planet -> Float -> Float
secsToYears p m = do
  let earthYears = m / 60 / 60 / 24 / 365.25
  case p of
    Mercury -> earthYears /   0.2408467
    Venus   -> earthYears /   0.61519726
    Earth   -> earthYears
    Mars    -> earthYears /   1.8808158
    Jupiter -> earthYears /  11.862615
    Saturn  -> earthYears /  29.447498
    Uranus  -> earthYears /  84.016846
    Neptune -> earthYears / 164.79132
    _       -> error "Planet not found."
