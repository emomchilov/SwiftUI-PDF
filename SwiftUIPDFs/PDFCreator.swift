//
//  PDFCreator.swift
//  SwiftUIPDFs
//
//  Created by Eden Momchilov on 1/9/24.
//

import Foundation
import SwiftUI
import PDFKit

class PDFCreator {
    
    // This can be any object that stores your page information
    let multiplePages: [PDFInfo]
    
    private let metaData = [
        kCGPDFContextAuthor: "Your name here",
        kCGPDFContextSubject: "This is a demo on how to create a PDF from a SwiftUI View"
    ]
    
    private var rect: CGRect {
        return CGRect(x: 0, y: 0, width: Constants.pageWidth * Constants.dotsPerInch, height: Constants.pageHeight * Constants.dotsPerInch)
    }
    
    init(multiplePages: [PDFInfo]) {
        self.multiplePages = multiplePages
    }
    
    @MainActor
    func createPDFData(displayScale: CGFloat) -> URL {
        let format = UIGraphicsPDFRendererFormat()
        format.documentInfo = metaData as [String : Any]
        let renderer = UIGraphicsPDFRenderer(bounds: rect, format: format)
        
        let tempFolder = FileManager.default.temporaryDirectory
        let fileName = "My Custom PDF Title.pdf"
        let tempURL = tempFolder.appendingPathComponent(fileName)
        
        try? renderer.writePDF(to: tempURL) { context in
            for info in multiplePages {
                context.beginPage()
                let imageRenderer = ImageRenderer(content: PDFView(info: info))
                imageRenderer.scale = displayScale
                imageRenderer.uiImage?.draw(at: CGPoint.zero)
            }
        }

        return tempURL
    }
}
