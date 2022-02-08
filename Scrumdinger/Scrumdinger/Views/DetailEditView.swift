//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by protas on 08.02.2022.
//

import SwiftUI

struct DetailEditView: View {
    @State private var data = DailyScrum.Data()
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $data.title)
                HStack {
                    Slider(value: $data.lengthInMinuted, in: 5...30, step: 1)
                    Spacer()
                    Text("\(Int(data.lengthInMinuted)) minutes")
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
