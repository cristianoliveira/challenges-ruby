class PetterCigarrets
  
  def calcule(cigarrets, min_butts)
    smoked = smoke(cigarrets - 1, 1, min_butts, 1)
    return smoked
  end

  def smoke(cigarret, butts, minbutts, smoked_qtdy)
    if butts > minbutts
      cigarret += 1; butts = 1
    end  

    return smoked_qtdy if cigarret == 0
        
    smoke(cigarret - 1, butts +1, minbutts, smoked_qtdy + 1)
  end

#  def calcule(cigarrets, min_butts)
#    c = cigarrets
#    butts = 0
#    smoked = 0
#
#    while c > 0
#      c -= 1
#      butts += 1
#      if butts > min_butts
#        c += 1
#        butts = 1
#      end
#      smoked += 1
#    end
#
#    return smoked
#  end

end
