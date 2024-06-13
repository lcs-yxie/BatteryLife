import SwiftUI

struct LandingView: View {
    
    @State var presentingNewItemSheet = false
    @State private var selectedTab = 1
    @State var presentingComplete = false
    @Binding var name: String
    var body: some View {
        TabView(selection: $selectedTab){
            
            NewDeviceView(name: $name)
                .tabItem {
                    Label("Home", systemImage: "house.circle.fill")
                }
                .tag(1)
            
            Text("Data")
                .tabItem {
                    Label("Data", systemImage: "chart.bar.fill")
                }
                .tag(2)
            
            SettingView()
                .tabItem {
                    Label("Setting", systemImage: "gear.circle.fill")
                }
                .tag(3)
        }
        .preferredColorScheme(.dark)
        .toolbar {
            // Add buttons to the toolbar based on the selected tab
            ToolbarItem(placement: .automatic) {
                if selectedTab == 1 {
                    Button {
                        presentingNewItemSheet = true
                    } label: {
                        Image(systemName: "trash.fill")
                            .foregroundStyle(.white)
                    }
                } else if selectedTab == 3 {
                    Button {
                        presentingComplete = true
                    } label: {
                        Image(systemName: "checkmark")
                            .foregroundStyle(.green)
                    }
                }
            }
        }
        .sheet(isPresented: $presentingNewItemSheet) {
            Text("Remove device")
                .presentationDetents([.medium, .fraction(0.15)])
        }
        .sheet(isPresented: $presentingComplete) {
            VStack{
                
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 150))
                    .foregroundStyle(.green)
            }
                .presentationDetents([.medium, .fraction(0.45)])
        }
    }
}

#Preview {
    LandingView(name: Binding.constant(""))
}
