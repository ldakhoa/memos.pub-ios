//
//  HomeView.swift
//  Memosdotpub
//
//  Created by Khoa Le on 12/06/2022.
//

import SwiftUI

struct HomeView: View {
    @State private var text: String = ""
    
    private func headerView() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Markdown Blogging.")
                .titleFont()
                .foregroundColor(.title2)
            Text("Without Setup Or Signup")
                .titleFont()
                .foregroundColor(.title)
        }
    }
    
    private func textFieldView() -> some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text("github.com/path")
                    .foregroundColor(.placeholder)
                    .padding(8)
            }
            TextField("", text: $text)
                .frame(height: 30)
                .padding(8)
                .background(
                    RoundedRectangle(cornerRadius: 8, style: .continuous)
                        .stroke(Color.title2, lineWidth: 1)
                )
                .foregroundColor(.body)
                .font(.interBody)
        }
    }
    
    private func goButton() -> some View {
        Button("Go") {}
            .foregroundColor(.white)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 48)
            .background(Color.bluePrimary)
            .cornerRadius(8)
    }
    
    var body: some View {
        ZStack {
            Color.gray11.ignoresSafeArea()
            VStack(alignment: .leading) {
                headerView()
                 
                Text("Memos.pub instantly makes a blog out of any public GitHub repo, with beautiful typography, MDX support, custom domain, and more. Try it:")
                    .bodyFont()
                
                textFieldView()
                
                goButton()
                
                Text("Or see some examples below ↓")
                    .bodyFont()
                
                Text("Memos.pub is different that you don't need to sign up or set up anything. In fact, any public repo with some Markdown files is already a blog at <user>.memos.pub/<repo>:")
                    .bodyFont()
            }
            .padding(.horizontal, 16)
        }
    }
}

#if DEBUG
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
