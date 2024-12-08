import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {

            // Scrollable Content
            ScrollView {
                // Banner Image
                Image("banner")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()

                // Branches List
                VStack(spacing: 20) {
                    BranchCard(branchImage: "branch1", branchName: "West Ronaldmouth", branchAddress: "DC 84144")
                    BranchCard(branchImage: "branch2", branchName: "New Jessicaview.", branchAddress: "GA 88737")
                    BranchCard(branchImage: "branch3", branchName: "Port Phillip", branchAddress: "VA 62345")
                    BranchCard(branchImage: "branch4", branchName: "Port Kimberlyport", branchAddress: "DC 54822")
                    BranchCard(branchImage: "branch5", branchName: "New Erik", branchAddress: "NJ 03294")
                    BranchCard(branchImage: "branch6", branchName: "Heatherborough", branchAddress: "VA 27873")
                    BranchCard(branchImage: "branch7", branchName: "Howefurt", branchAddress: "OR 19514")
                    BranchCard(branchImage: "branch8", branchName: "Melaniechester", branchAddress: "MH 98602")
                    BranchCard(branchImage: "branch9", branchName: "Williamfurt", branchAddress: " ID 26606")
                    BranchCard(branchImage: "branch10", branchName: "Carpentermouth", branchAddress: "MI 57213")
                    // Add more branches as needed
                }
                .padding()
            }

            // Bottom Tab Bar
            HStack {
                Spacer()
                Image("logob") // Replace with your custom image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 49, height: 49)
                Spacer()
                NavigationLink(destination: ReserveView()) {
                    Image("calender") // Replace with your custom image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 49, height: 49)
                }
                Spacer()
                NavigationLink(destination: OrderView()) {
                    Image("cup") // Replace with your custom image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                Spacer()
                Image("member") // Replace with your custom image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 49, height: 49)
                Spacer()
            }
            .padding()
            .background(Color(.secondarySystemBackground))
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct BranchCard: View {
    var branchImage: String
    var branchName: String
    var branchAddress: String

    var body: some View {
        VStack(spacing: 10) {
            Image(branchImage)
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 150)
                .clipped()
                .cornerRadius(10)

            Text(branchName)
                .font(.headline)
            Text(branchAddress)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(10)
    }
}

struct ReserveView: View {
    var body: some View {
        Text("ReserveView")
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
