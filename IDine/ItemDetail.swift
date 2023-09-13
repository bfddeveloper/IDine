//
//  ItemDetail.swift
//  IDine
//
//  Created by Brody Dickson on 9/8/23.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    @EnvironmentObject var order: Order
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                        .background(.black)
                        .font(.caption)
                        .foregroundStyle(.white)
            }
            Text(item.description)
                .padding(25)
            Button("Order This") {
                order.add(item: item)
            }
            .buttonStyle(.borderedProminent)
            Spacer()
                }
                .navigationTitle(item.name)
                .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
                    ItemDetail(item: MenuItem.example).environmentObject(Order())

                }
    }
}
