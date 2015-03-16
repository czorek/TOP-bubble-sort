def bubble_sort(lst)
  sort = false

  until sort
    sort = true
    0.upto(lst.length-2) do |ind|
      if lst[ind] > lst[ind+1]
        sort = false
        lst[ind], lst[ind+1] = lst[ind+1], lst[ind]
      end
    end
  end
  lst
end

def bubble_sort_by(lst)
  sort = false

  until sort
    sort = true
    0.upto(lst.length-2) do |ind|
      p = yield lst[ind], lst[ind+1] if block_given?
      if p == 1
        sort = false
        lst[ind], lst[ind+1] = lst[ind+1], lst[ind]
      end
    end
  end
  lst
end
