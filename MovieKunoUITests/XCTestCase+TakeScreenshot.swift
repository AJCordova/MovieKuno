//
//  XCTestCase+TakeScreenshot.swift
//  MovieKunoUITests
//
//  Created by Leah Joy Ylaya on 1/26/21.
// ref : https://gist.github.com/mkj-is/344e1399e844085f10a7c06d55dd45a7

import XCTest

extension XCTestCase {

    func takeScreenshot(description: String? = nil) {
        // get current file path
        let fileUrl = URL(fileURLWithPath: #file)
        let projectPath = fileUrl
            .deletingLastPathComponent()
        
        let filename = screenshotFilename(description: description, fileUrl: fileUrl)
        debugPrint("projectPath \(projectPath)")
        let screenshot = XCUIScreen.main.screenshot()
        
        // save inside "screenshot" directory
        // will automatically create one if the said directory does not exist yet.
        let saveUrl = projectPath
            .appendingPathComponent("screenshots")
            .appendingPathComponent(filename)
        
        let fileURLWithPath = URL(fileURLWithPath: saveUrl.path)
        try! FileManager.default.createDirectory(at: fileURLWithPath.deletingLastPathComponent(), withIntermediateDirectories: true, attributes: nil)
        try! screenshot.pngRepresentation.write(to: fileURLWithPath)
    }

    private func screenshotFilename(description: String?, fileUrl: URL) -> String {
        let device = UIDevice.current.name.replacingOccurrences(of: " ", with: "-")
        let bundleName = Bundle.main.infoDictionary?["CFBundleName"] as? String
        let prefix = bundleName?.split(separator: "-").first ?? ""

        var result = "\(prefix).\(device)"
        if let description = description {
            result += "_\(description)"
        }
        result += ".png"
        return result
    }
}
