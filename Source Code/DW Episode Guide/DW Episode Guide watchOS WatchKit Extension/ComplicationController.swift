//
//  ComplicationController.swift
//  DW Episode Guide watchOS WatchKit Extension
//
//  Created by Mark Howard on 11/06/2022.
//

import ClockKit
import SwiftUI


class ComplicationController: NSObject, CLKComplicationDataSource {
    
    // MARK: - Complication Configuration

    func getComplicationDescriptors(handler: @escaping ([CLKComplicationDescriptor]) -> Void) {
        let descriptors = [
            CLKComplicationDescriptor(identifier: "complication", displayName: "DW Episode Guide", supportedFamilies: [.circularSmall, .extraLarge, .modularSmall, .utilitarianSmall, .utilitarianLarge, .graphicCorner, .graphicCircular, .graphicBezel, .graphicExtraLarge, .modularLarge, .utilitarianSmallFlat, .graphicRectangular])
            // Multiple complication support can be added here with more descriptors
        ]
        
        // Call the handler with the currently supported complication descriptors
        handler(descriptors)
    }
    
    func handleSharedComplicationDescriptors(_ complicationDescriptors: [CLKComplicationDescriptor]) {
        // Do any necessary work to support these newly shared complication descriptors
    }

    // MARK: - Timeline Configuration
    
    func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        // Call the handler with the last entry date you can currently provide or nil if you can't support future timelines
        handler(nil)
    }
    
    func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void) {
        // Call the handler with your desired behavior when the device is locked
        handler(.showOnLockScreen)
    }

    // MARK: - Timeline Population
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        // Call the handler with the current timeline entry
        //handler(nil)
        if let template = getComplicationTemplate(for: complication, using: Date()) {
            let entry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler(entry)
        } else {
            handler(nil)
        }
    }
    
    func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries after the given date
        handler(nil)
    }

    // MARK: - Sample Templates
    
    func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
        // This method will be called once per supported complication, and the results will be cached
        //handler(nil)
        let template = getComplicationTemplate(for: complication, using: Date())
                if let t = template {
                    handler(t)
                } else {
                    handler(nil)
                }
    }
    func getComplicationTemplate(for complication: CLKComplication, using date: Date) -> CLKComplicationTemplate? {
        switch complication.family {
                case .graphicCorner:
            let titleText = "DW Ep. Guide"
            return CLKComplicationTemplateGraphicCornerTextView(textProvider: CLKTextProvider(format: "%@", titleText), label: GraphicCorner())
                case .graphicCircular:
            return CLKComplicationTemplateGraphicCircularView(GraphicCircular())
                case .circularSmall:
                    return CLKComplicationTemplateCircularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Circular")!))
        case .extraLarge:
            return CLKComplicationTemplateExtraLargeSimpleImage(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Extra Large")!))
        case .modularSmall:
            return CLKComplicationTemplateModularSmallSimpleImage(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Modular")!))
        case .utilitarianSmall:
            return CLKComplicationTemplateUtilitarianSmallSquare(imageProvider: CLKImageProvider(onePieceImage: UIImage(named: "Complication/Utilitarian")!))
        case .utilitarianLarge:
            let titleText = CLKSimpleTextProvider(text: "DW Episode Guide")
            return CLKComplicationTemplateUtilitarianLargeFlat(textProvider: CLKTextProvider(format: "%@", titleText))
        case .graphicBezel:
            let titleText = CLKSimpleTextProvider(text: "DW Episode Guide")
            let imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "Complication/Graphic Circular")!)
            let fullimageProvider = CLKFullColorImageProvider(fullColorImage: UIImage(named: "Complication/Graphic Circular")!, tintedImageProvider: imageProvider)
            let templateImage = CLKComplicationTemplateGraphicCircularImage(imageProvider: fullimageProvider)
            return CLKComplicationTemplateGraphicBezelCircularText(circularTemplate: templateImage, textProvider: CLKTextProvider(format: "%@", titleText))
        case .graphicExtraLarge:
            return CLKComplicationTemplateGraphicExtraLargeCircularView(GraphicExtraLarge())
        case .modularLarge:
            let titleText = "DW Episode Guide"
            let bodyText = "Info About Doctor Who"
            let titleProvider = CLKTextProvider(format: "%@", titleText)
            titleProvider.tintColor = UIColor(.accentColor)
            return CLKComplicationTemplateModularLargeStandardBody(headerTextProvider: titleProvider, body1TextProvider: CLKTextProvider(format: "%@", bodyText))
        case .utilitarianSmallFlat:
            let titleText = "DW Ep."
            return CLKComplicationTemplateUtilitarianSmallFlat(textProvider: CLKTextProvider(format: "%@", titleText))
        case .graphicRectangular:
            return CLKComplicationTemplateGraphicRectangularFullView(GraphicRectangular())
                default:
                    return nil
                }
    }
}

struct GraphicExtraLarge: View {
    var body: some View {
            Image("Complication/Graphic Extra Large")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
    }
}

struct GraphicCorner: View {
    var body: some View {
        Image("Complication/Graphic Corner")
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .complicationForeground()
    }
}

struct GraphicCircular: View {
    var body: some View {
        Image("Complication/Graphic Circular")
            .renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .complicationForeground()
    }
}

struct GraphicRectangular: View {
    var body: some View {
        VStack {
            HStack {
            Text("DW Episode Guide")
                .bold()
                .foregroundColor(.accentColor)
                .complicationForeground()
                Spacer()
        }
            HStack {
                Text("Info About Doctor Who")
                Spacer()
            }
        }
    }
}
