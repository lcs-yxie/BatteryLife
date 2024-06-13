
import SwiftUI

struct GalleryView: View {
    @State var presentingNewItemSheet = false
    @State var devices: [Device] = []
    
    var body: some View {
        VStack {
            Text("Battery Life")
                .fontWeight(.heavy)
                .font(.system(size: 50))
            Text("My Devices:")
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 35) {
                    Spacer()
                    
                    // Adding new device
                    ForEach(devices.indices, id: \.self) { index in
                        let currentDevice = devices[index]
                        
                        HStack {
                            NavigationLink {
                                LandingView(device: currentDevice)
                            } label: {
                                ItemView(deviceTitle: currentDevice.name)
                            }
                            Spacer()
                            Button(action: {
                                deleteItem(at: index)
                            }) {
                                Image(systemName: "trash.circle.fill")
                                    .foregroundColor(.white)
                                    .padding(.leading)
                                    .font(.system(size: 50))
                            }
                        }
                        .padding()
                    }
                }
                .padding(.leading)
                .padding(.trailing)
                .padding(.bottom)
            }
            .padding(.top)
            .sheet(isPresented: $presentingNewItemSheet) {
                AddDeviceView(dismissSheet: $presentingNewItemSheet, device: $devices)
            }
            .toolbar {
                // Add a button to trigger showing the sheet
                ToolbarItem(placement: .automatic) {
                    Button {
                        presentingNewItemSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .foregroundStyle(.white)
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    
    func deleteItem(at index: Int) {
        devices.remove(at: index)
    }
}

#Preview {
    GalleryView()
        .preferredColorScheme(.dark)
}
