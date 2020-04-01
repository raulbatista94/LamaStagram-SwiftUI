//
//  Array+chunked.swift
//  Lamstagram
//
//  Created by Raul Batista on 16/11/2019.
//  
//

import Foundation

extension Array {
    func chunked(into size: Int) -> [Chunk<Element>] {
        let chunks = stride(from: 0, to: count, by: size).enumerated().map { item in
            Chunk(
                id: item.element,
                items: Array(
                    self[
                        item.offset * size ..< Swift.min(item.offset * size + size, count)
                    ]
                )
            )
        }
        
        return chunks
    }
}
