//
//  ContentView.swift
//  Bullseye
//
//  Created by Lais Godinho on 04/03/22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var alertIsVisible: Bool = false
  @State private var sliderValue: Double = 50.0
  @State private var game: Game = Game()
  
  var body: some View {
    VStack {
      Text("🎯🎯🎯\n PUT THE BULLSEYE AS CLOSE AS YOU CAN TO ")
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
      Text(String(game.target))
        .fontWeight(.black)
        .font(.largeTitle)
        .kerning(-1.0)
      HStack {
        Text("1")
          .font(.body)
          .bold()
        Slider(value: $sliderValue, in: 1.0...100.0)
        Text("100")
          .font(.body)
          .bold()
      }
      Button("Hit me") {
        self.alertIsVisible = true
      }
      .alert(
        isPresented: $alertIsVisible,
        content: {
          let roundedValue: Int = Int(self.sliderValue.rounded())
          return Alert(
            title: Text("Hello there!"),
            message: Text("The sliders value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue))"),
            dismissButton: .default(Text("Awesome"))
          )
        }
      )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
