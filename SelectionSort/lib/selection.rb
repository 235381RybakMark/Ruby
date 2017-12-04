def SelectionSort(tab)
n=tab.length
   for i in 0...n 
    min=i
   for j in (i+1)...n
    if tab[n] < tab[min]
      t =tab[n]
      tab[n] = tab[min]
      tab[min] = t
      end
    end
   end
puts "OK"
return tab
end
