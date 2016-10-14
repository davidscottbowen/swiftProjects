//
//  Library.swift
//  swiftLibraryBronze
//
//  Created by David  Bowen on 10/12/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

var bookDictionary: [Int:String] = [:]

class Book {
    var bookKey: Int
    var bookTitle: String
    var checkedOut: Bool = true
    
    init(bookKey: Int, bookTitle: String){
        self.bookKey = bookKey
        self.bookTitle = bookTitle
    }
}

class Library {
    
//    var bookDictionary: [Int:String] = [:]
    
    func addBook(book:Book) {
        bookDictionary[book.bookKey] = book.bookTitle
          print("Book Added")
    }
    
    func borrowBook(book:Book) {
        print("you borrowed a book")
        bookDictionary.removeValue(forKey: book.bookKey)
    }
    
    func returnBook(book:Book) {
        print("you returned a book")
        bookDictionary[book.bookKey] = book.bookTitle
    }
    
    func allBooks() {
        print("There are \(bookDictionary.count) books in the Library")
        for i in bookDictionary.values {
            print(i)
        }
    }
}
