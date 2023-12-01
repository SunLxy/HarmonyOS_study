
@Component
struct ItemText{

  private context:string = '默认值';
  @State isClick : boolean = false;

  build(){
    /**Row 行布局容器*/
    Row(){
      /**Text 字*/
      Text(this.context)
        .fontColor(Color.Red)
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
      Text("====>")
        .fontWeight(FontWeight.Bold)
        .fontColor(this.isClick?"red":Color.Black)
      Text(this.isClick?"已完成":"未完成")
        .fontWeight(FontWeight.Bold)
        .fontColor(this.isClick?"red":Color.Black)
    }
    .width("100%")
    .backgroundColor(this.isClick?"green":"#ffffffff")
    .border({
      width:{ top:0, left:0, right:0, bottom:1 },
      color:"red",
    })
    .onClick(()=>{
      this.isClick= !this.isClick;
    })
  }
}

@Component
export struct ListItems{
  @State Data:{id:number,text:string}[] = Array.from({length:20}).map((item,index)=>({id:index,text:`${index}`}))

  build(){
    /** Column 列布局容器*/
    Column(){
      /**List列表*/
      List(){
        /**循环*/
        ForEach(this.Data,(item)=>{
          /**每一项*/
          ListItem(){
            ItemText({ context:item.text })
          }
        // 唯一值
        },(item)=>item.id)
      }
    }
  }
}