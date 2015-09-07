class MaxSumFinder

  def find_in(sequence)
    return 0, 0, 0 if sequence.nil? or sequence.empty?
    start_point, end_point, sum = find(sequence, 0, sequence.size-1)
    return [start_point, end_point, sum]
  end

  private
  def find(array, start_, end_)
    return start_, end_, array[start_] if start_ == end_

    sumall = array[start_..end_].reduce(:+)
    se, ee, sumend = find(array, start_, (end_-1))
    sb, eb, sumbegin = find(array, (start_+1), (end_))

    return se, ee, sumend if sumend > sumall and sumend > sumbegin
    return sb, eb, sumbegin if sumbegin > sumall
    return start_, end_, sumall
  end

end
