//
//  AboutView.swift
//  euler
//
//  Created by Saruggan Thiruchelvan on 2023-02-14.
//

import SwiftUI
import KeyboardKit

struct AboutView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("euler is an open source ios keyboard for texting mathematical symbols and formulae developed by @tsaruggan. to enable the keyboard, open the app's settings and allow access to keyboards.")
                .font(.system(size: 18))
           
            HStack(spacing: 48) {
                Button {
                    let url = URL(string: UIApplication.openSettingsURLString)!
                    UIApplication.shared.open(url)
                } label: {
                    Label("settings",systemImage: "gearshape")
                }
                
                Button {
                    let url = URL(string: "https://github.com/tsaruggan/euler")!
                    UIApplication.shared.open(url)
                } label: {
                    Label("github", systemImage: "internaldrive")
                }
            }
            Spacer()
        }
        .padding()
        .multilineTextAlignment(.leading)

    }
    
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
