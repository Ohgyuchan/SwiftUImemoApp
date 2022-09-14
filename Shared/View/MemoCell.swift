//
//  MemoCell.swift
//  SwiftUImemoApp
//
//  Created by Terman on 2022/09/14.
//

import SwiftUI

struct MemoCell: View {
    @ObservedObject var memo: Memo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(memo.content).font(.body).lineLimit(1)
            
            Text(memo.insertedDate, style: .date).font(.caption).foregroundColor(.secondary)
        }
    }
}

struct MemoCell_Previews: PreviewProvider {
    static var previews: some View {
        MemoCell(memo: Memo(content: "Test"))
    }
}
