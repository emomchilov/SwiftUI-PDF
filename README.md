![Swift](https://img.shields.io/badge/swift-F54A2A?style=for-the-badge&logo=swift&logoColor=white)

# SwiftUI PDF Generator Sample Project #
Welcome to the SwiftUI PDF Generator sample project! This project demonstrates how to create and share a PDF from a SwiftUI view using the ImageRenderer. Whether you want to document your SwiftUI designs, create polished presentations, or share visual content, this sample project guides you through the process seamlessly.

## Getting Started ##
Follow these steps to integrate SwiftUI PDF generation into your project:

### Clone the repository: ###

```
git clone https://github.com/emomchilov/SwiftUI-PDF.git
```

Open the project in Xcode:

```
cd SwiftUI-PDF
xed . 
```

### Explore the SwiftUI view designed for the PDF: ###

Check PDFView.swift for an example SwiftUI view (PDFView) that you want to convert into a PDF.
Adjust the view content, layout, and styling based on your requirements.
Configure PDF parameters:

Adjust the values in the Constants struct in PDFView.swift for page dimensions and dots per inch.

### Implement PDF creation: ###

Open PDFCreator.swift to see how the PDF is generated using UIGraphicsPDFRenderer and ImageRenderer.
Customize the metadata and format according to your needs.

### Add PDF sharing functionality: ###

Check SharePDFView.swift for an example of how to use ShareLink to share the generated PDF.
Modify the PDFInfo array with your desired PDF content.

### Run the app: ###

Test the PDF generation and sharing by running the app in the simulator.

### Customize and integrate: ###

Integrate the PDF generation and sharing logic into your own SwiftUI project.

## Contributions ##

Contributions are welcome! If you find any issues or have improvements to suggest, feel free to open an issue or create a pull request.
