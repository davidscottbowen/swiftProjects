//
//  Library.swift
//  swiftLibrary
//
//  Created by David  Bowen on 10/14/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

var bookDictionary: [Int:String] = [:]
var outDictionary: [Int:String] = [:]

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
    
    func addBook(book:Book) {
        bookDictionary[book.bookKey] = book.bookTitle
    }
    
    func borrowBook(book:Book) {
        let now = Date()
        let due = now + 1209600
        print("you checked out the book")
        print(bookDictionary[book.bookKey]!)
        print("\(now)\n")
        print("The book is due to the Library by")
        print("\(due)\n")
        bookDictionary.removeValue(forKey: book.bookKey)
        outDictionary[book.bookKey] = book.bookTitle
    }
    
    func returnBook(book:Book) {
        let now1 = Date()
        print("you returned a book \(now1)")
        bookDictionary[book.bookKey] = book.bookTitle
    }
    
    func allInBooks() {
        print("There are \(bookDictionary.count) books checked in the Library")
        for i in bookDictionary.values {
            print(i)
        }
    }
    
    func allOutBooks() {
        print("There are \(outDictionary.count) books checked out of the Library")
        for i in outDictionary.values {
            print(i)
        }
    }
    
}
