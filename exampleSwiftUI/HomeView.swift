//
//  HomeView.swift
//  exampleSwiftUI
//
//  Created by lap le on 04/03/2024.
//

import SwiftUI
import PhotosUI
import SwiftUIMasonry
import UIKit

struct HomeView: View{
    @State private var pickerItems: [PhotosPickerItem] = [PhotosPickerItem]()
    @State private var selectedImages: [Image] = [Image]()
    @State private var heightHeader: CGFloat = 50
    @State private var showName: Bool = true
    
    var body: some View{
        VStack {
            
            HStack{
                VStack {
                    Text(information.name)
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .lineLimit(1)
                        .foregroundColor(.white)
                    
                    if(showName) {
                        Text(information.userName)
                            .font(.subheadline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .lineLimit(1)
                            .foregroundColor(.white)
                    }
                }
                
                Spacer()
                PhotosPicker(
                    selection: $pickerItems,
                    matching: .images
                ) {
                    Image(systemName: "photo.badge.plus")
                        .font(.system(size: 30))
                        .tint(selectedImages.count > 0 ? Color.green : Color.white)
                        
                }.tint(Color.green)
            }
            .padding(.horizontal)
            .frame(height: getStatusBarHeight() + heightHeader, alignment: .bottom)
            .padding(.bottom, 10)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(hex: 0xfc4a46)
                    , Color(hex: 0xFC5D40)
                    , Color(hex: 0xFC7039)
                ]), startPoint: .leading, endPoint: .trailing)
            )
            .padding(.top, 16)
            .cornerRadius(16)
            .padding(.bottom, -8)
            .animation(.spring(), value: heightHeader)
            
            .onChange(of: pickerItems) {
                Task {
                    selectedImages.removeAll()
                    for item in pickerItems {
                        if let loadedImage = try await item.loadTransferable(type: Image.self) {
                            selectedImages.append(loadedImage)
                        }
                    }
                }
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VMasonry(columns: 2, spacing: 15) {
                    if(selectedImages.count == 0) {
                        ForEach(information.images, id: \.self) { image in
                            if(image.contains("https://")) {
                                AsyncImage(url: URL(string: image)) { result in
                                    if let img = result.image {
                                        img.resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .cornerRadius(10)
                                            
                                            .shadow(color: .gray, radius: 10, x: 0, y: 2)
                                    } else if result.error != nil {
                                        Text("ERROR!").foregroundStyle(Color.red).frame(width: 100, height: 100, alignment: .center).fontWeight(.bold)
                                    } else {
                                        ProgressView().frame(width: 100, height: 100)
                                    }
                                                                    }
                            }else {
                                Image(image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(10)
                                    .shadow(color: .gray, radius: 10, x: 0, y: 2)

                            }
                            
                        }
                    } else {
                        ForEach(0..<selectedImages.count, id: \.self) { i in
                            selectedImages[i]
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 10, x: 0, y: 2)
                            
                        }
                    }
                    
                }.padding()
            }.gesture(
                DragGesture().onChanged { value in
                   if value.translation.height > 0 {
                      heightHeader = 50
                       showName = true
                   } else {
                       heightHeader = 30
                       showName = false
                   }
                }
             )
            //here
        }.ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
