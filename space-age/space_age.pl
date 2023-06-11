space_age(Planet, AgeSec, Years):-
    earth_year(EarthYear),
    orbital_period_ratio(Planet, Ratio),
    Years = (AgeSec / (EarthYear * Ratio)).


earth_year(31557600).

orbital_period_ratio("Mercury", 0.2408467).
orbital_period_ratio("Venus", 0.61519726).
orbital_period_ratio("Earth", 1.0).
orbital_period_ratio("Mars", 1.8808158).
orbital_period_ratio("Jupiter", 11.862615).
orbital_period_ratio("Saturn", 29.447498).
orbital_period_ratio("Uranus", 84.016846).
orbital_period_ratio("Neptune", 164.79132).