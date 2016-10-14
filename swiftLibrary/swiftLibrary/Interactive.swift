//
//  Interactive.swift
//  swiftLibrary
//
//  Created by David  Bowen on 10/14/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Interactive {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    
    
    func go() {
        
        let library = Library()
        
        var myBook = Book(bookKey: 1, bookTitle: "Catcher in the Rye")
        library.addBook(book:myBook)
        
        myBook = Book(bookKey: 2, bookTitle: "The Hunger Games")
        library.addBook(book:myBook)
        
        myBook = Book(bookKey: 3, bookTitle: "Swift for Dummies")
        library.addBook(book:myBook)
        
        myBook = Book(bookKey: 4, bookTitle: "Interview with the Vampire")
        library.addBook(book:myBook)
        
        myBook = Book(bookKey: 5, bookTitle: "The Notebook")
        library.addBook(book:myBook)
        
        while !done {
            
            io.writeMessage("\nEnter h for help/options or q to quit")
            
            currentInput = io.getInput()
            
            switch currentInput {
            case "a":
                addBook()
            case "c":
                checkOutBook()
            case "i":
                checkInBook()
            case "l":
                listBooks()
            case "h":
                help()
            case "q":
                done = true
            default:
                print("The input is: \(currentInput)")
                
            }
        }
        print("Exiting...")
        
        return
    }
    
    func addBook() {
        
        print("*** ADD BOOK TO LIBRARY ***")
        
        io.writeMessage("\nBook Key")
        currentInput = io.getInput()
        
        guard let bookKey = Int(currentInput) else {
            io.writeMessage("Your input was not an Int.")
            return
        }
        
        io.writeMessage("\nBook Title")
        currentInput = io.getInput()
        
        guard let bookTitle = String(currentInput) else {
            io.writeMessage("Your input was not an Int.")
            return
        }
        
        let myBook = Book(bookKey: bookKey, bookTitle: bookTitle)
        
        let library = Library()
        
        library.addBook(book:myBook)
    }
    
    func checkInBook(){
        print("*** Check In Book ***")
    }
    
    func checkOutBook(){
        
        print("*** Check Out Book ***")
        
        io.writeMessage("\nBook Key to check out")
        currentInput = io.getInput()
        
        guard let bookKey = Int(currentInput) else {
            io.writeMessage("Your input was not an Int.")
            return
        }
        
        io.writeMessage("\nBook Title to check out")
        currentInput = io.getInput()
        
        guard let bookTitle = String(currentInput) else {
            io.writeMessage("Your input was not an String.")
            return
        }
        
        let myBook = Book(bookKey: bookKey, bookTitle: bookTitle)
        
        let library = Library()
        
        library.borrowBook(book:myBook)
    }
    
    func listBooks(){
        print("*** List all Books ***")
        let library = Library()
        library.allBooks()
    }
    
    func help(){
        io.writeMessage("*** HELP MENU ***")
        io.writeMessage("Enter a to add a book to the Library")
        io.writeMessage("Enter c to check out a book")
        io.writeMessage("Enter i to check in a book")
        io.writeMessage("Enter l to list all books currently in Library")
    }
    
}
