//
//  ContentView.swift
//  SwiftUIShape
//
//  Created by 廖昱晴 on 2021/3/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Test")
            .font(.system(.title, design: .rounded))
            .bold()
            .foregroundColor(.white)
            .frame(width: 250, height: 50)
            .background(Dome().fill(Color.red))
//        ZStack {
//            Path() { path in
//    //            path.move(to: CGPoint(x: 20, y: 60))
//    //            path.addLine(to: CGPoint(x: 40, y: 60))
//    //            path.addQuadCurve(to: CGPoint(x: 210, y: 60), control: CGPoint(x: 125, y: 25))
//    //            path.addLine(to: CGPoint(x: 230, y: 60))
//    //            path.addLine(to: CGPoint(x: 230, y: 100))
//    //            path.addLine(to: CGPoint(x: 20, y: 100))
//    //            path.closeSubpath() //封閉路徑
//    //            path.move(to: CGPoint(x: 200, y: 200))
//    //            path.addArc(center: .init(x: 200, y: 200), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 90), clockwise: true) //建立圓弧
//                path.move(to: CGPoint(x: 187, y: 187))
//                path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
//            }
//            //.stroke(Color.gray, lineWidth: 5) //線條
//            .fill(Color(.systemYellow)) //填滿
//
//            Path() { path in
//                path.move(to: CGPoint(x: 187, y: 187))
//                path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 190), endAngle: Angle(degrees: 110), clockwise: true)
//            }
//            .fill(Color(.systemTeal))
//
//            Path() { path in
//                path.move(to: CGPoint(x: 187, y: 187))
//                path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 90), clockwise: true)
//            }
//            .fill(Color(.systemBlue))
//
//            Path() { path in
//                path.move(to: CGPoint(x: 187, y: 187))
//                path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 360), clockwise: true)
//                path.closeSubpath()
//            }
//            .fill(Color(.systemPurple))
//            .offset(x: 20, y: 20)
//
//
//            Path() { path in
//                path.move(to: CGPoint(x: 187, y: 187))
//                path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 360), clockwise: true)
//                path.closeSubpath()
//            }
////            .fill(Color(.systemPurple))
//            .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 10)
//            .offset(x: 20, y: 20)
//            .overlay(
//            Text("25%")
//                .font(.system(.largeTitle, design: .rounded))
//                .bold()
//                .foregroundColor(.white)
//                .offset(x: 70, y: -135)
//            )
//        }
        
    }
}

struct Dome: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 0, y: 0))
        path.addQuadCurve(to: CGPoint(x: rect.size.width, y: 0), control: CGPoint(x: rect.size.width / 2, y: -(rect.size.width * 0.1)))
        path.addRect(CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        
        return path
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
