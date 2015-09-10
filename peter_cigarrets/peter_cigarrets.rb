class PetterCigarrets
  
  def calcule(cigarrets, min_butts)
    smoked = smoke(cigarrets,min_butts, 0, 0)
    return smoked
  end
  
  private
  def smoke(cigarret, minbutts, butts, smoked)
    if butts > minbutts
      cigarret += 1; butts = 1 
    end

    return smoked if cigarret == 0
        
    smoke(cigarret - 1, minbutts, butts + 1, smoked + 1)
  end
end
