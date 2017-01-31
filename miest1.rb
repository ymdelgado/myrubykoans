begin
  nil.some_method_nil_doesnt_know_about
  rescue Exception => ex
    puts ex.class

    puts ex.message
end

