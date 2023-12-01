import router from '@ohos.router';
import  { ListItems } from "../components/ListItems"


@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column(){
      ListItems()
      Button("下一页")
      .onClick(()=>{
        router.pushUrl({
          url:"pages/About",
          params:{
            data:"这是啥玩意！"
          }
        })
      })
      Row() {
        Column() {
          Text(this.message)
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
            .fontColor("green")
        }
        .width('100%')
        .height("50")
        .backgroundColor("red")
      }
      .height('100')
    }

  }
}