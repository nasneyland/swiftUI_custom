//
//  NJPickerView.swift
//  customUI
//
//  Created by najin shin on 2023/09/04.
//

import SwiftUI
import NJPicker

struct NJPickerView: View {
    
    @State var selectedHour: String = "0"
    @State var selectedMin: String = "0"
    @State var selectedSec: String = "0"
    @State var selectedText: String = "January"
    
    var body: some View {
        VStack(spacing: 10) {
            
            // MARK: Timer View
            
            Text("Timer")
                .bold()
                .frame(maxWidth: .infinity, alignment: .center)
            
            HStack {
                Spacer()
                NJPicker($selectedHour, data: Array(0...24).map { String($0) }, defaultValue: 0, hapticStyle: .medium)
                Text("시간")
                NJPicker($selectedMin, data: Array(0...60).map { String($0) }, defaultValue: 0, hapticStyle: .medium)
                Text("분")
                NJPicker($selectedSec, data: Array(0...60).map { String($0) }, defaultValue: 0, hapticStyle: .medium)
                Text("초")
                Spacer()
            }
            .padding(20)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 1))
            
            Text("\(selectedHour) : \(selectedMin) : \(selectedSec)")
            
            Spacer().frame(height: 50)
            
            
            // MARK: Text Picker
            
            Text("Text Picker")
                .bold()
                .frame(maxWidth: .infinity, alignment: .center)
            
            HStack {
                Spacer()
                NJPicker($selectedText, data: ["January","February","March","April","May","June","July","August","September","October","November","December"], hapticStyle: .heavy)
                Spacer()
            }
            .padding(20)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.gray, lineWidth: 1))
            
            Text("\(selectedText)")
            Spacer()
        }
        .padding(20)
    }
}

struct NJPickerView_Previews: PreviewProvider {
    static var previews: some View {
        NJPickerView()
    }
}
