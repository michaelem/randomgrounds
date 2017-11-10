class Erangel
  # coordinates that do not consist of only water:
  POSSIBLE_COORDINATES =
    %w{               FI GI
       AJ BJ CJ DJ EJ FJ GJ
       AK BK CK DK EK FK GK
       AL BL CL DL EL FL GL
       AM BM CM DM EM FM GM HM
       AN BN CN DN EN FN GN
          BO    DO EO FO GO}

    POSSIBLE_PLACES = [
      'Gatka',
      'Georgopol',
      'Kameshki',
      'Lipovka',
      'Mylta',
      'Novorepnoye',
      'Pochinki',
      'Primorsk',
      'Rozhok',
      'Severny',
      'Stalber',
      'Zharki',
      'Farm',
      'Gun Range',
      'Hospital',
      'Mansion',
      'Mylta Power',
      'Prison',
      'Quarry',
      'Ruins',
      'School',
      'Shelter',
      'Sosnovka Military Base'
    ]

    POSSIBLE_ALTERNATIVES = [
      'anhöhe',
      'first row',
      'blue house',
      'other side of the street',
      'warehouse',
      'western compound'
    ]

  def self.random_coordinate
    POSSIBLE_COORDINATES.sample
  end

  def self.random_place
    POSSIBLE_PLACES.sample
  end

  def self.random_alternative
    "#{POSSIBLE_ALTERNATIVES.sample} in Rozhok"
  end
end
