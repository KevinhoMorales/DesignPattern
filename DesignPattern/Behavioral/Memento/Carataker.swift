//
//  Carataker.swift
//  DesignPattern
//
//  Created by Kevin Morales on 9/1/22.
//

import Foundation

final class Carataker {
    private var states = [ArticleMemento]()
    
    func addMemento(memento: ArticleMemento) {
        states.append(memento)
    }
    
    func getMemento(index: Int) -> ArticleMemento {
        return states[index]
    }
}
