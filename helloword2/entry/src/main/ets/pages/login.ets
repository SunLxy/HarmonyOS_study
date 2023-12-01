@Entry
@Component
struct Login {
  @State message: string = 'Hello World'
  @State userName:string = ''
  @State userPwd:string = ''


  build() {
    Column({space:100}){
     Column({ space:10 }){
       LoadingProgress()
         .color(Color.Blue)
         .height(60)
         .width(60)

       Text("登录页面")
         .fontWeight(FontWeight.Bolder)
         .fontSize(20)

       Text("登录账号以使用更多服务")
         .fontSize(16)
         .fontColor("#AAAAAAAA")
     }
      Column({space:20}){
        TextInput({ placeholder:"请输入账号" })
          .placeholderColor(0x999999)
          .onChange((value)=>{
            this.userName = value
            console.log(value)
          })

        TextInput({ placeholder:"请输入账号密码" })
          .placeholderColor(0x999999)
          .type(InputType.Password)
          .onChange((value)=>{
            console.log(value)
            this.userPwd = value
          })
      }
      Button("登录")
        .type(ButtonType.Capsule)
        .width('90%')
        .onClick(()=>{

        })
    }
    .width("100%")
    .padding({top:100})
  }
}