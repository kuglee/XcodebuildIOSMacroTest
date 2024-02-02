import ComposableArchitecture

@Reducer struct AppFeature {
  @ObservableState struct State: Equatable {
    @Presents var test: String? = nil
  }

  enum Action { case noop }

  var body: some ReducerOf<Self> {
    Reduce { state, action in
      switch action {
      case .noop: return .none
      }
    }
  }
}


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
