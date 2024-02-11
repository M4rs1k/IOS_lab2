class Book {
    let title: String
    let author: String
    let year: Int
    let pageCount: Int
    
    init(title: String, author: String, year: Int, pageCount: Int) {
        self.title = title
        self.author = author
        self.year = year
        self.pageCount = pageCount
    }
    
    func displayBookInfo() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("Year: \(year)")
        print("Page Count: \(pageCount)")
    }
}

class Library {
    var books: [Book]
    
    init() {
        self.books = []
    }
    
    func addBook(book: Book) {
        books.append(book)
        print("Book '\(book.title)' added to the library.")
    }
    
    func removeBook(title: String) {
        if let index = books.firstIndex(where: { $0.title == title }) {
            let removedBook = books.remove(at: index)
            print("Book '\(removedBook.title)' removed from the library.")
        } else {
            print("Book with title '\(title)' not found in the library.")
        }
    }
    
    func displayLibraryInfo() {
        print("Library Books:")
        for book in books {
            book.displayBookInfo()
            print("-------------------")
        }
    }
}