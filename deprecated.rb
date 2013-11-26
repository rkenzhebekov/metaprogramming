class Book
  def title

  end

  def subtitle

  end

  def lend_to(user)
    p "Lending to #{user}"
  end


  def self.deprecate(old_method, new_method)
    define_method old_method do |*args, &block|
      warn "Warning: #{old_method}() is deprecated. Use #{new_method}()."
      send new_method, *args
    end
  end

  deprecate(:GetTitle, :title)
  deprecate(:title2, :subtitle)
  deprecate(:LEND_TO_USER, :lend_to)
end

book = Book.new

book.LEND_TO_USER('Bill')