module ViewHelpers

  def current_book_id(idx_row, idx_book, books_per_row)
    idx_row * books_per_row + idx_book
  end

end
