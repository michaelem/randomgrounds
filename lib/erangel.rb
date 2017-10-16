class Erangel
  # coordinates that do not consist of only water:
  POSSIBLE_COORDINATES =
    %w{EI FI GI
       AJ BJ CJ DJ EJ FJ GJ
       AK BK CK DK EK FK GK
       AL BL CL DL EL FL GL
       AM BM CM DM EM FM GM HM
       AN BN CN DN EN FN GN HN
          BO    DO EO FO GO}

  def self.random_coordinate
    POSSIBLE_COORDINATES.sample
  end
end
