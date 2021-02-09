//
//  ContentView.swift
//  Spotify
//
//  Created by Sofi on 09.02.2021.
//

import SwiftUI

struct Vi:View {
    @State var item = 1
  
    init(){
        UITabBar.appearance().barTintColor = UIColor(Color("br"))
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    var body: some View{
        TabView(selection:$item){
            ContentView().tabItem { VStack{
                Image(systemName: "homekit")
                Text("Главная").font(.custom("", size: 12))
            } }.tag(1)
            n3().tabItem { VStack{
                Image(systemName: "homekit")
                Text("Финансы").font(.custom("", size: 12))
            } }.tag(2)
            n4().tabItem { VStack{
                Image(systemName: "homekit")
                Text("Тарифы и услуги").font(.custom("", size: 12))
            } }.tag(3)
            n2().tabItem { VStack{
                Image("men")
                Text("Ещё").font(.custom("", size: 12))
            } }.tag(4)
        }.accentColor(Color("yel"))
    }
}



struct n2:View {
    var body: some View{
        ZStack{
            Text("Ещё")
        }
    }
    
}

struct n3:View {
    var body: some View{
        ZStack{
            Text("Финансы")
        }
    }
}

struct n4:View {
    var body: some View{
        ZStack{
            Text("Тарифы и услуги")
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("l")
            VStack(spacing:0){
                ZStack{
                    Color("l")
                    HStack{
                        HStack{
                        ZStack{
                           
                            RoundedRectangle(cornerRadius: 10).strokeBorder(Color.black.opacity(0.2), lineWidth: 1.5).frame(width: 200, height: 45, alignment: .center).foregroundColor(Color("l"))
                            HStack{
                                Text("+7 909 908 62 88").padding(.leading)
                                Image(systemName: "chevron.down").resizable().frame(width: 11, height: 7, alignment: .center).foregroundColor(.gray).shadow(radius: 10 ).opacity(0.6).padding(5)
                                
                               
                            }.frame(width: 200, height: 50, alignment: .center)
                               
                        }.padding()
                            Spacer()
                            Image("pro").resizable().frame(width: 35, height: 35, alignment: .center).padding()
                        }
                    }
                }.frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)
                ScrollView(.vertical){
                    
                    V()
                    v2()
                    v3()
                   
                   v4()
//                    v5
                }.frame(maxHeight: .infinity)
                
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
                        HStack{
                        Text("Баланс")
                            Image("pro")
                        }
                        Spacer()
                        HStack(alignment: .center, spacing:0){
                            Text("54").foregroundColor(Color("pin")).font(.custom("", size: 30))
                            Text(",9 ₽").foregroundColor(Color("pin")).offset(y: 3)
                            Spacer()
                            ZStack{
                                RoundedRectangle(cornerRadius: 30).frame(width: 150, height: 55, alignment: .center).foregroundColor(.white).shadow(radius: 2)
                                Text("Пополнить").foregroundColor(.black).font(.custom("", size: 20))
                            }.offset(x: 10)
                        } .frame(width: 240, alignment: .center)
                        HStack(spacing:5){
                            Image("pro").resizable().frame(width: 30, height: 30, alignment: .center)
                            Text("Последние расходы").font(.custom("", size: 15))
                            Image(systemName: "chevron.forward").foregroundColor(Color("oh"))
                        }
                    }.padding() .frame(height: 170, alignment: .center)
                }
                ZStack(alignment:.leading){
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 280, height: 170, alignment: .center).foregroundColor(Color("br"))
                    VStack(alignment:.leading){
                        Text("Дебетовая").foregroundColor(.white).bold().font(.custom("", size: 20))
                        Spacer()
                       
                        Text("Кешбэк до").foregroundColor(.white).opacity(0.6).offset( y: -40)
                        Text("До 5% на оснвной аккаунт").foregroundColor(.white).opacity(0.6).offset( y: -30)
                          
                        Text("Подробнее").foregroundColor(Color("yel").opacity(0.8)).font(.custom("", size: 17))
                            
                        
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
                .frame(width: UIScreen.main.bounds.width-30, height: 130, alignment: .center).foregroundColor(.white).shadow(radius: 3 )
            VStack{
            HStack{
                Text("Ваш тариф Всё включено L 2013").padding(.leading).font(.custom("", size: 15))
                Spacer()
                Image(systemName: "chevron.forward").foregroundColor(Color("oh")).padding(.trailing)
            }.offset( y: 10.0)
            ScrollView(.horizontal){
                HStack(spacing: 40){
                VStack(spacing:0){
                    Text("7,53").foregroundColor(.black).font(.custom("", size: 30))
                    Text("гигабайт").foregroundColor(.black).font(.custom("", size: 18))
                    RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 5, alignment: .center).foregroundColor(Color("een")).padding(.top,5)
                }
                VStack(spacing:0){
                    Text("479").foregroundColor(.black).font(.custom("", size: 30))
                    Text("минут").foregroundColor(.black).font(.custom("", size: 18))
                    RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 5, alignment: .center).foregroundColor(Color("een")).padding(.top,5)
                }
                VStack(spacing:0){
                    Text("120").foregroundColor(.black).font(.custom("", size: 30))
                    Text("SMS").foregroundColor(.black).font(.custom("", size: 18))
                    RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 5, alignment: .center).foregroundColor(Color("een")).padding(.top,5)
                }
                VStack(spacing:0){
                    Text("7,53").foregroundColor(.black).font(.custom("", size: 30))
                    Text("гигабайт").foregroundColor(.black).font(.custom("", size: 18))
                    RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 5, alignment: .center).foregroundColor(Color("een")).padding(.top,5)
                }
                VStack(spacing:0){
                    Text("7,53").foregroundColor(.black).font(.custom("", size: 30))
                    Text("гигабайт").foregroundColor(.black).font(.custom("", size: 18))
                    RoundedRectangle(cornerRadius: 30).frame(width: 90, height: 5, alignment: .center).foregroundColor(Color("een")).padding(.top,5)
                }
                }
            }.padding()
            }
        }.padding() .frame(width: UIScreen.main.bounds.width-30, height: 130, alignment: .center).padding(.top)

    }
}
struct v3:View {
    var body: some View{
        ScrollView(.horizontal){
            HStack{
            ZStack(alignment:.leading){
                RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 125, alignment: .center).foregroundColor(.gray).opacity(0.08)
                VStack(alignment:.leading){
                    Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                    Text("Новая\nSIM-карта").foregroundColor(.gray).font(.custom("", size: 15))
                }.padding(.leading)
            }
                ZStack(alignment:.leading){
                    RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 125, alignment: .center).foregroundColor(.gray).opacity(0.08)
                    VStack(alignment:.leading){
                        Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                        Text("Новая\nеSIM-карта").foregroundColor(.gray).font(.custom("", size: 15))
                    }.padding(.leading)
                }
                ZStack(alignment:.leading){
                    RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 125, alignment: .center).foregroundColor(.gray).opacity(0.08)
                    VStack(alignment:.leading){
                        Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                        Text("Домашний\nинтернет").foregroundColor(.gray).font(.custom("", size: 15))
                    }.padding(.leading)
                }
                ZStack(alignment:.leading){
                    RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 125, alignment: .center).foregroundColor(.gray).opacity(0.08)
                    VStack(alignment:.leading){
                        Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                        Text("Перенести\nSIM-номер").foregroundColor(.gray).font(.custom("", size: 15))
                    }.padding(.leading)
                }
                ZStack(alignment:.leading){
                    RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 125, alignment: .center).foregroundColor(.gray).opacity(0.08)
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
                            Text("Скидки и \nпредложения").foregroundColor(Color("br")).font(.custom("", size: 15)).offset( y: 20)
                        }.padding(.leading)
                    }
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 150, alignment: .center).foregroundColor(Color("golub"))
                        VStack(alignment:.leading){
                            Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                            Text("Стройность \nкак образ \nжизни").foregroundColor(.white).font(.custom("", size: 15)).offset( y: 15)
                        }.padding(.leading)
                    }
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 150, alignment: .center).foregroundColor(Color("oran"))
                        VStack(alignment:.leading){
                            Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                            Text("Узнать \nкредитный \nлимит").foregroundColor(Color("br")).font(.custom("", size: 15)).offset( y: 15)
                        }.padding(.leading)
                    }
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: 15).frame(width: 120, height: 150, alignment: .center).foregroundColor(Color("yel"))
                        VStack(alignment:.leading){
                            Image("pro").resizable().frame(width: 40, height: 40, alignment: .center)
                            Text("Новая\nSIM-карта").foregroundColor(Color("br")).font(.custom("", size: 15)).offset( y: 20)
                        }.padding(.leading)
                    }
                }
                   
               
            }
                VStack(alignment: .leading, spacing:30){
                    VStack(alignment: .leading){
                    Text("Приложение Билайн").foregroundColor(.white).font(.custom("", size: 20)).padding(.bottom,5)
                Text("Приложение Билайн Приложение Билайн \nПриложение Билайн Приложение Билайн Приложение БилайнПриложение \nБилайнПриложение Билайн \nПриложение Билайн Приложение Билайн ").foregroundColor(.white).font(.custom("", size: 15))
                    }
                }
            }.padding(.leading).padding(.top)
//                ForEach(0..<4){ i in
                v5()
//                }
            }
        }.frame(width: UIScreen.main.bounds.width, height: 1000, alignment: .center).offset( y: 50)
    }
}
struct v5:View {
    var body: some View{
        ZStack{
        RoundedRectangle(cornerRadius: 15)
            .frame(width: UIScreen.main.bounds.width-20, height: 340, alignment: .center)
            .foregroundColor(.white)
            VStack(alignment:.leading){
                Text("Билайн - ТВ").foregroundColor(Color("gr")).font(.custom("", size: 18)).offset( y: -55)
                Text("Билайн - ТВ Билайн - ТВ Билайн - ТВБилайн - ТВБилайн - ТВ Билайн - ТВ Билайн - ТВ Билайн ").foregroundColor(Color("gr")).opacity(0.4).font(.custom("", size: 15)).offset( y: -30)
                ScrollView(.horizontal){
                    HStack{
                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
                        Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
                    }
                }.padding(.trailing, 10)
            }.padding(.leading,30).padding(.top)
            ZStack(alignment:.top){
             
            RoundedRectangle(cornerRadius: 15).foregroundColor(Color("yel")).frame(width:  UIScreen.main.bounds.width-20, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .frame(width: UIScreen.main.bounds.width-20, height: 10, alignment: .center).foregroundColor(.white)
                Text("Смотреть в Билайн ТВ").bold().offset( y: 30)
            }.offset( y: 150)
        }
//        ZStack{
//        RoundedRectangle(cornerRadius: 15)
//            .frame(width: UIScreen.main.bounds.width-20, height: 340, alignment: .center)
//            .foregroundColor(.white)
//            VStack(alignment:.leading){
//                Text("Билайн - ТВ").foregroundColor(Color("gr")).font(.custom("", size: 18)).offset( y: -55)
//                Text("Билайн - ТВ Билайн - ТВ Билайн - ТВБилайн - ТВБилайн - ТВ Билайн - ТВ Билайн - ТВ Билайн ").foregroundColor(Color("gr")).opacity(0.4).font(.custom("", size: 15)).offset( y: -30)
//                ScrollView(.horizontal){
//                    HStack{
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                        Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    }
//                }.padding(.trailing, 10)
//            }.padding(.leading,30).padding(.top)
//            ZStack(alignment:.top){
//
//            RoundedRectangle(cornerRadius: 15).foregroundColor(Color("yel")).frame(width:  UIScreen.main.bounds.width-20, height: 70, alignment: .center)
//                Rectangle()
//                    .frame(width: UIScreen.main.bounds.width-20, height: 10, alignment: .center).foregroundColor(.white)
//                Text("Смотреть в Билайн ТВ").bold().offset( y: 30)
//            }.offset( y: 150)
//        }
//        ZStack{
//        RoundedRectangle(cornerRadius: 15)
//            .frame(width: UIScreen.main.bounds.width-20, height: 340, alignment: .center)
//            .foregroundColor(.white)
//            VStack(alignment:.leading){
//                Text("Билайн - ТВ").foregroundColor(Color("gr")).font(.custom("", size: 18)).offset( y: -55)
//                Text("Билайн - ТВ Билайн - ТВ Билайн - ТВБилайн - ТВБилайн - ТВ Билайн - ТВ Билайн - ТВ Билайн ").foregroundColor(Color("gr")).opacity(0.4).font(.custom("", size: 15)).offset( y: -30)
//                ScrollView(.horizontal){
//                    HStack{
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                        Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    }
//                }.padding(.trailing, 10)
//            }.padding(.leading,30).padding(.top)
//            ZStack(alignment:.top){
//
//            RoundedRectangle(cornerRadius: 15).foregroundColor(Color("yel")).frame(width:  UIScreen.main.bounds.width-20, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                Rectangle()
//                    .frame(width: UIScreen.main.bounds.width-20, height: 10, alignment: .center).foregroundColor(.white)
//                Text("Смотреть в Билайн ТВ").bold().offset( y: 30)
//            }.offset( y: 150)
//        }
//        ZStack{
//        RoundedRectangle(cornerRadius: 15)
//            .frame(width: UIScreen.main.bounds.width-20, height: 340, alignment: .center)
//            .foregroundColor(.white)
//            VStack(alignment:.leading){
//                Text("Билайн - ТВ").foregroundColor(Color("gr")).font(.custom("", size: 18)).offset( y: -55)
//                Text("Билайн - ТВ Билайн - ТВ Билайн - ТВБилайн - ТВБилайн - ТВ Билайн - ТВ Билайн - ТВ Билайн ").foregroundColor(Color("gr")).opacity(0.4).font(.custom("", size: 15)).offset( y: -30)
//                ScrollView(.horizontal){
//                    HStack{
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                        Image("c").resizable().frame(width: 110, height: 140, alignment: .center).cornerRadius(20)
//                    }
//                }.padding(.trailing, 10)
//            }.padding(.leading,30).padding(.top)
//            ZStack(alignment:.top){
//
//            RoundedRectangle(cornerRadius: 15).foregroundColor(Color("yel")).frame(width:  UIScreen.main.bounds.width-20, height: 70, alignment: .center)
//                Rectangle()
//                    .frame(width: UIScreen.main.bounds.width-20, height: 10, alignment: .center).foregroundColor(.white)
//                Text("Смотреть в Билайн ТВ").bold().offset( y: 30)
//            }.offset( y: 150)
//        }

    }
}
