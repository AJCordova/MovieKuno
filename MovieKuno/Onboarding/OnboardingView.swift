//
//  OnboardingView.swift
//  MovieKuno
//
//  Created by Amiel Jireh Cordova on 1/28/21.
//

import SwiftUI

struct OnboardingView: View {
    var data: [ShowcasePanelModel]

    @State private var slideGesture: CGSize = CGSize.zero
    @State private var slideProgressIndex: Int = 0
    @State private var showHomeView: Bool = false
    var screenWidth = UIScreen.main.bounds.width
    var screenHeight = UIScreen.main.bounds.height

    var body: some View {
        VStack {
            if showHomeView {
                TabbarView()
                    .animation(.spring())
                    .transition(.slide)
            } else {
                Text(L10n.onboardingTitle)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                    .font(.system(size: 20, weight: .heavy))
                    .foregroundColor(.orange)
                Spacer()

                ZStack(alignment: .center) {
                    ForEach(0..<data.count) { i in
                        ShowcasePanelView(data: self.data[i])
                            .offset(x: CGFloat(i) * self.screenWidth)
                            .offset(x: self.slideGesture.width - CGFloat(self.slideProgressIndex) * self.screenWidth)
                            .animation(.spring())
                            .gesture(DragGesture().onChanged { value in
                                self.slideGesture = value.translation
                            }
                            .onEnded { value in
                                if slideGesture.width < -50 {
                                    if self.slideProgressIndex < self.data.count - 1 {
                                        withAnimation {
                                            self.slideProgressIndex += 1
                                        }
                                    }
                                }
                                if slideGesture.width > 50 {
                                    if self.slideProgressIndex > 0 {
                                        withAnimation {
                                            self.slideProgressIndex -= 1
                                        }
                                    }
                                }
                                self.slideGesture = .zero
                            })
                    }
                }
                
                .accessibility(identifier: "showcaseView")
                Spacer()
                
                VStack {
                    ProgressIndicatorView(panelCollectionCount: data.count, currentPanelIndex: slideProgressIndex)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    
                    OnboardingNavigationButton(slideProgressIndex: $slideProgressIndex,
                                               showHomeView: $showHomeView,
                                               panelCollectionCount: data.count)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    
                    Button(action: {
                        self.showHomeView.toggle()
                    }) {
                        Text(L10n.getStartedNavigation)
                            .font(.system(size: 15, weight: .heavy, design: .rounded))
                            .foregroundColor(.orange)
                    }
                }
                Spacer()
            }
        }
    }
}

struct ProgressIndicatorView: View {
    var panelCollectionCount: Int
    var currentPanelIndex: Int
    var body: some View {
        HStack {
            ForEach(0..<panelCollectionCount) { i in
                Circle()
                    .scaledToFit()
                    .frame(width: (i == currentPanelIndex ? 9 : 5))
                    .foregroundColor(currentPanelIndex >= i ? Color(.orange) : Color(.gray))
            }
        }
    }
}

struct OnboardingNavigationButton: View {
    @Binding var slideProgressIndex: Int
    @Binding var showHomeView: Bool
    
    var panelCollectionCount: Int
    var body: some View {
        Button(action: {
            if slideProgressIndex != panelCollectionCount - 1 {
                withAnimation {
                    self.slideProgressIndex += 1
                }
            } else {
                self.showHomeView.toggle()
            }
        }) {
            Text(slideProgressIndex == panelCollectionCount - 1 ? L10n.doneNavigation : L10n.exploreNavigation)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 30, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]),
                                   startPoint: .leading,
                                   endPoint: .trailing))
        .cornerRadius(20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var data = ShowcasePanelModel.data
    static var previews: some View {
        OnboardingView(data: data)
    }
}
