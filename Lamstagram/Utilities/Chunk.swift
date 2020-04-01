//
//  Chunk.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import Foundation

struct Chunk<T> {
    var id: Int
    var items: [T]
}

extension Chunk: Identifiable {}
