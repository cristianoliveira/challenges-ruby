class Rotator
  def rotate(array_to_rotate, times_to_rotate)
    first_part = []

    if times_to_rotate > array_to_rotate.length
      times_to_rotate = times_to_rotate % array_to_rotate.length
    end

    times_to_rotate.times do |i|
      first_element = array_to_rotate.shift
      array_to_rotate.push(first_element)
    end

    array_to_rotate
  end
end
