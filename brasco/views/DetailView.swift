//
//  SwiftUIView.swift
//  brasco
//
//  Created by Wei Wang on 08.03.24.
//

import SwiftUI

struct SwiftUIView: View {
    var cafe: Cafe
    var body: some View {
        ScrollView {
            MapView(coordinate: cafe.coordinates.locationCoodinate)
                .frame(height: 300)


            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)


            VStack(alignment: .leading) {
                Text(cafe.name)
                    .font(.title)


                HStack {
                    Text("\(cafe.location.address), \(cafe.location.city)")
                    Spacer()
                    Text(cafe.location.state)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)


                Divider()


                Text("About \(cafe.name)")
                    .font(.title2)
                Text(cafe.description)
            }
            .padding()
        }
        .navigationTitle(cafe.name)
        .navigationBarTitleDisplayMode(.inline)
    }}

#Preview {
    SwiftUIView(cafe: cafes[0])
}
