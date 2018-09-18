module Me
  def sqrt(num)
    if num==10
      num=num/2
      puts  "num is"+num.to_s
    else
      num=num%2
      puts "num is "+num.to_s
    end
  end
end