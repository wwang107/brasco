import SwiftUI


struct CircleImage: View {


    var body: some View {
        Image("rainbowlake")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}


#Preview {
    CircleImage()
}
