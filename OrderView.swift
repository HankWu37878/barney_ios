import SwiftUI

struct OrderView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                // Top Bar Image
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 100)
                    .clipped()

                // Content
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        DrinkCard(drinkImage: "margarita", drinkName: "Margarita")
                        DrinkCard(drinkImage: "mojito", drinkName: "Mojito")
                        DrinkCard(drinkImage: "oldfashioned", drinkName: "Old-Fashioned")
                        DrinkCard(drinkImage: "martini", drinkName: "Martini")
                        DrinkCard(drinkImage: "daiquiri", drinkName: "Daiquiri")
                        DrinkCard(drinkImage: "cosmopolitan", drinkName: "Cosmopolitan")
                        DrinkCard(drinkImage: "pinacolada", drinkName: "Pina-Colada")
                        DrinkCard(drinkImage: "whiskeysour", drinkName: "Whiskey-Sour")
                        DrinkCard(drinkImage: "manhattan", drinkName: "Manhattan")
                        DrinkCard(drinkImage: "negroni", drinkName: "Negroni")
                        // Add more drinks as needed
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
                    Image("calender") // Replace with your custom image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 49, height: 49)
                    Spacer()
                    Image("cup") // Replace with your custom image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
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

            // Customize Button
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        print("Customize Button Pressed")
                    }) {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .padding()
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                    }
                    // .background(Color.orange)
                    .background(Circle().fill(Color.orange)).shadow(radius: 2)
                    .padding(.trailing, 20)
                    .padding(.bottom, 85) // Position above the tab bar
                }
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct DrinkCard: View {
    var drinkImage: String
    var drinkName: String

    var body: some View {
        VStack(spacing: 5) {
            Image(drinkImage)
                .resizable()
                .scaledToFill()
                .frame(width: 140, height: 140)
                .clipped()
                .cornerRadius(10)

            Text(drinkName)
                .font(.headline)
        }
        .padding()
        .background(Color(.systemGray5))
        .cornerRadius(10)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
