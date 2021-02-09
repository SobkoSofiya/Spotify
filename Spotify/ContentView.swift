//
//  ContentView.swift
//  Spotify
//
//  Created by Sofi on 09.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.white
            VStack(spacing:0){
                ZStack{
                    Color.white
                    HStack{
                        HStack{
                        ZStack{
                           
                            RoundedRectangle(cornerRadius: 10).strokeBorder(Color.black.opacity(0.2), lineWidth: 1.5).frame(width: 200, height: 50, alignment: .center).foregroundColor(.clear)
                            HStack{
                                Text("+7 909 908 62 88").padding(.leading)
                                Image(systemName: "chevron.down").resizable().frame(width: 20, height: 10, alignment: .center).foregroundColor(.gray).opacity(0.6).padding(5)
                                
                               
                            }.frame(width: 200, height: 50, alignment: .center)
                               
                        }.padding()
                            Spacer()
                            Image("pro").resizable().frame(width: 40, height: 40, alignment: .center).padding()
                        }
                    }
                }.frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
                ScrollView{
                    V()
                    v2()
                    v3()
                   
                   v4()
//                    v5
                }
                
                Spacer()
            }.offset( y: 30)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct V:View {
    var body: some View{
        ScrollView(.horizontal){
            HStack{
                ZStack(alignment:.leading){
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 280, height: 170, alignment: .center).foregroundColor(Color("yel"))
                    VStack(alignment:.leading){
                        Text("Баланс")
                        Spacer()
                        HStack(spacing:0){
                        Text("54").foregroundColor(.red)
                            Text(",9р").foregroundColor(.red)
                            Spacer()
                            ZStack{
                                RoundedRectangle(cornerRadius: 30).frame(width: 150, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                                Text("Пополнить").foregroundColor(.black)
                            }
                        } .frame(width: 240, alignment: .center)
                        HStack(spacing:5){
                            Image("pro").resizable().frame(width: 30, height: 30, alignment: .center)
                            Text("Последние расходы").font(.custom("", size: 15))
                            Image(systemName: "chevron.forward").foregroundColor(.white)
                        }
                    }.padding() .frame(height: 170, alignment: .center)
                }
                ZStack(alignment:.leading){
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 280, height: 170, alignment: .center).foregroundColor(Color("br"))
                    VStack(alignment:.leading){
                        Text("Баланс").foregroundColor(.white)
                        Spacer()
                        HStack(spacing:0){
                        Text("54").foregroundColor(.white)
                            Text(",9р").foregroundColor(.white)
                            Spacer()
                            ZStack{
                                RoundedRectangle(cornerRadius: 30).frame(width: 150, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                                Text("Пополнить").foregroundColor(.black)
                            }
                        } .frame(width: 240, alignment: .center)
                        HStack(spacing:5){
                            Image("pro").resizable().frame(width: 30, height: 30, alignment: .center)
                            Text("Последние расходы").font(.custom("", size: 15)).foregroundColor(.white)
                            Image(systemName: "chevron.forward").foregroundColor(.white)
                        }
                    }.padding() .frame(height: 170, alignment: .center)
                }
            }
            
        }.padding(.leading)
    }
}


struct v2:View {
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width-30, height: 130, alignment: .center).foregroundColor(.gray)
            VStack{
            HStack{
                Text("Ваш тариф Всё включено L 2013").padding(.leading)
                Spacer()
                Image(systemName: "chevron.forward").foregroundColor(.gray)
            }
            ScrollView(.horizontal){
                HStack(spacing: 40){
                VStack(spacing:0){
                    Text("7,53").foregroundColor(.black).font(.custom("", size: 30))
                    Text("гигабайт").foregroundColor(.black).font(.custom("", size: 18))
                    RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 5, alignment: .center).foregroundColor(.green)
                }
                VStack(spacing:0){
                    Text("7,53").foregroundColor(.black).font(.custom("", size: 30))
                    Text("гигабайт").foregroundColor(.black).font(.custom("", size: 18))
                    RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 5, alignment: .center).foregroundColor(.green)
                }
                VStack(spacing:0){
                    Text("7,53").foregroundColor(.black).font(.custom("", size: 30))
                    Text("гигабайт").foregroundColor(.black).font(.custom("", size: 18))
                    RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 5, alignment: .center).foregroundColor(.green)
                }
                VStack(spacing:0){
                    Text("7,53").foregroundColor(.black).font(.custom("", size: 30))
                    Text("гигабайт").foregroundColor(.black).font(.custom("", size: 18))
                    RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 5, alignment: .center).foregroundColor(.green)
                }
                VStack(spacing:0){
                    Text("7,53").foregroundColor(.black).font(.custom("", size: 30))
                    Text("гигабайт").foregroundColor(.black).font(.custom("", size: 18))
                    RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 5, alignment: .center).foregroundColor(.green)
                }
                }
            }.padding()
            }
        }.padding() .frame(width: UIScreen.main.bounds.width-30, height: 130, alignment: .center)

    }
}
struct v3:View {
    var body: some View{
        ScrollView(.horizontal){
            HStack{
            ZStack(alignment:.leading){
                RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 125, alignment: .center).foregroundColor(.gray).opacity(0.1)
                VStack(alignment:.leading){
                    Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                    Text("Новая\nSIM-карта").foregroundColor(.gray).font(.custom("", size: 15))
                }.padding(.leading)
            }
                ZStack(alignment:.leading){
                    RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 125, alignment: .center).foregroundColor(.gray).opacity(0.1)
                    VStack(alignment:.leading){
                        Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                        Text("Новая\nSIM-карта").foregroundColor(.gray).font(.custom("", size: 15))
                    }.padding(.leading)
                }
                ZStack(alignment:.leading){
                    RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 125, alignment: .center).foregroundColor(.gray).opacity(0.1)
                    VStack(alignment:.leading){
                        Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                        Text("Новая\nSIM-карта").foregroundColor(.gray).font(.custom("", size: 15))
                    }.padding(.leading)
                }
                ZStack(alignment:.leading){
                    RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 125, alignment: .center).foregroundColor(.gray).opacity(0.1)
                    VStack(alignment:.leading){
                        Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                        Text("Новая\nSIM-карта").foregroundColor(.gray).font(.custom("", size: 15))
                    }.padding(.leading)
                }
                ZStack(alignment:.leading){
                    RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 125, alignment: .center).foregroundColor(.gray).opacity(0.1)
                    VStack(alignment:.leading){
                        Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                        Text("Новая\nSIM-карта").foregroundColor(.gray).font(.custom("", size: 15))
                    }.padding(.leading)
                }
            }
           
        }.padding(.leading).offset( y: 30)
    }
}
struct v4:View {
    var body: some View{
        ZStack(alignment:.top){
            Color("gr")
            VStack(spacing:10){
            VStack(alignment: .leading, spacing:40){
            ScrollView(.horizontal){
               
                HStack{
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 150, alignment: .center).foregroundColor(Color("yel"))
                        VStack(alignment:.leading){
                            Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                            Text("Новая\nSIM-карта").foregroundColor(.black).font(.custom("", size: 15)).offset( y: 20)
                        }.padding(.leading)
                    }
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 150, alignment: .center).foregroundColor(Color("yel"))
                        VStack(alignment:.leading){
                            Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                            Text("Новая\nSIM-карта").foregroundColor(.black).font(.custom("", size: 15)).offset( y: 20)
                        }.padding(.leading)
                    }
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 150, alignment: .center).foregroundColor(Color("yel"))
                        VStack(alignment:.leading){
                            Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                            Text("Новая\nSIM-карта").foregroundColor(.black).font(.custom("", size: 15)).offset( y: 20)
                        }.padding(.leading)
                    }
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 150, alignment: .center).foregroundColor(Color("yel"))
                        VStack(alignment:.leading){
                            Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                            Text("Новая\nSIM-карта").foregroundColor(.black).font(.custom("", size: 15)).offset( y: 20)
                        }.padding(.leading)
                    }
                }
                   
               
            }
                VStack(alignment: .leading){
                    Text("Приложение Билайн").foregroundColor(.white).font(.custom("", size: 20)).padding(.bottom,5)
                Text("Приложение Билайн Приложение Билайн \nПриложение Билайн Приложение Билайн Приложение БилайнПриложение \nБилайнПриложение Билайн \nПриложение Билайн Приложение Билайн ").foregroundColor(.white).font(.custom("", size: 15))
                }
            }.padding(.leading).padding(.top)
                ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: UIScreen.main.bounds.width-20, height: 300, alignment: .center)
                    .foregroundColor(.white)
                    VStack(alignment:.leading){
                        Text("Билайн - ТВ").foregroundColor(Color("gr")).font(.custom("", size: 18)).offset( y: -35)
                        Text("Билайн - ТВ Билайн - ТВ Билайн - ТВБилайн - ТВБилайн - ТВ Билайн - ТВ Билайн - ТВ Билайн ").foregroundColor(Color("gr")).opacity(0.4).font(.custom("", size: 15)).offset( y: -20)
                        ScrollView(.horizontal){
                            HStack{
                            Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
                            Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
                            Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
                            Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
                                Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
                            }.frame(width: UIScreen.main.bounds.width-30, alignment: .center)
                        }.frame(width: UIScreen.main.bounds.width-30, alignment: .center)
                    }.padding(.leading,30).padding(.top)
                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: 1000, alignment: .center).offset( y: 50)
    }
}
//struct v5:View {
//    var body: some View{
//
//    }
//}
