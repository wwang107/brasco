import SwiftUI
import MapKit


struct MapView: View {
    var coordinate: CLLocationCoordinate2D


    var body: some View {
//        Map(position: .constant(.region(region)))
        Map(position: .constant(.region(region))) {
            Marker("", coordinate: coordinate)
        }
    }


    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}


#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: cafes[0].coordinates.latitude, longitude: cafes[0].coordinates.longitude))
}
