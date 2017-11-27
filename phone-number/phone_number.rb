class PhoneNumber
  def self.clean(ph1)
    ph1.gsub!(/[\s\D]/, "")
    if ph1.length == 11
      if ph1[0]=="1"
        ph1.sub!(/[1]/, "")
      end
    end
      if ph1.length == 10
        if Integer(ph1[0])>=2 && Integer(ph1[0])<=9
        if Integer(ph1[3])>=2 && Integer(ph1[3])<=9
          ph1
        end
      end
    else
  nil
end
end
end
# Ruby
