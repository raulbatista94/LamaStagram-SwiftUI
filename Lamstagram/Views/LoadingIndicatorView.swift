//
//  LoadingIndicatorView.swift
//  Lamstagram
//
//  Created by Raul Batista on 18/11/2019.
//  
//

import SwiftUI

struct LoadingIndicatorView: View {
    @State var isLarge = false
    
    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Image("Photos/1")
                .resizable()
                .frame(width: isLarge ? 100 : 75)
                .blur(radius: isLarge ? 0 : 2)
                .aspectRatio(1, contentMode: .fit)
                .animation(.easeInOut)
                .clipShape(Circle())
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onReceive(timer) { _ in
            self.animate()
        }
    }
    
    func animate() {
        withAnimation(.spring()) {
            self.isLarge.toggle()
        }
    }
}

struct LoadingIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingIndicatorView()
    }
}
