//
//  MemosdotpubApp.swift
//  Memosdotpub
//
//  Created by Khoa Le on 10/06/2022.
//

import SwiftUI

@available(iOS 14.0, *)
struct MemosdotpubApp: App {
    var body: some Scene {
        WindowGroup {
            TabBarView()
        }
    }
}

@main
struct MemosdotpubAppWrapper {
    static func main() {
        if #available(iOS 14.0, *) {
            MemosdotpubApp.main()
        }
        else {
            UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, NSStringFromClass(SceneDelegate.self))
        }
    }
}
