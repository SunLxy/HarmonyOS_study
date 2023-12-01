import router from '@ohos.router';
@Entry
@Component
struct About {
  @State message: string = 'Hello World About'
  @State data: string = router.getParams()?.["data"];

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.data)
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
        Button("返回")
          .onClick(()=>{
            router.back()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}