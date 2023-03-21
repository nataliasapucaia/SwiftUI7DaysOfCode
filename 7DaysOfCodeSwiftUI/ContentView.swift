//
//  ContentView.swift
//  7DaysOfCodeSwiftUI
//
//  Created by Natália Sapucaia on 21/03/23.
//

import SwiftUI

struct ContentView: View {
    let movies: [Movie] = [
        Movie(id: 1, title: "Órfã 2: A Origem", releaseDate: "2022-07-27", image: nil, overview: "", voteAverage: 7.2),
        Movie(id: 2, title: "Minions 2: A Origem de Gru", releaseDate: "2022-06-29", image: nil, overview: "", voteAverage: 7.8),
        Movie(id: 3, title: "Thor: Amor e Trovão", releaseDate: "2022-07-06", image: nil, overview: "", voteAverage: 6.8),
        Movie(id: 4, title: "Avatar", releaseDate: "2009-12-18", image: nil, overview: "", voteAverage: 8.8),
    ]

    var body: some View {

        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("BlueBegin"), Color("BlueEnd")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                Text("Filmes Populares")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title)
                    .padding(.top)
                List {
                    ForEach(movies) { movie in
                        Text(movie.title)
                            .foregroundColor(.white)
                    }
                    .listRowBackground(Color.clear)
                }
                .scrollContentBackground(.hidden)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
