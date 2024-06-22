let greenstartx
let greenstarty
// 用于存放路径
let paths=[]
let items=[]
let longs
let nextposition
function init(){
    content.firstwindow.isclicked.connect(()=>{
                                                          appWindow.showFullScreen();
                                                          content.firstwindow.visible=false
                                                          content.secondwindow.visible=true
                                                      })
    content.secondwindow.startgame.connect(initmap)
    appWindow.showFullScreen();


}
function initmap(){
    // 初始化地图的所有元素
    content.gamewindow.visible=true
    content.secondwindow.visible=false
    longs=content.gamewindow.mainmaps.longs
    greenstartx=content.gamewindow.green1.startplanex
    console.log(greenstartx)
    greenstarty=content.gamewindow.green1.startplaney
    console.log(greenstarty)
    let a={"x":greenstartx,"y":greenstarty}
    paths.push(a)

// 蓝色的三角形
    let item1=content.gamewindow.mainmaps.item1
    // 根据之前定义的中心点进行定位
    a={"x":item1.x+longs*7/15,"y":item1.y+longs/15}
    paths.push(a)

// 最底部的地图部分
    for(let i=2;i<=6;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        if(item.width<item.height){
                a={"x":item.x,"y":item.y+item.width/2}
        }
        paths.push(a)
    }
    // 绿色三角形
    let item2=content.gamewindow.mainmaps.item7
    a={"x":item2.x,"y":item2.y}
    paths.push(a)
    for(let i=8;i<=9;i++){
         let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        if(item.width>item.height){
                a={"x":item.x+item.width/4,"y":item.y}
        }
        paths.push(a)
    }

    // 红色三角形
    let item3=content.gamewindow.mainmaps.item10
    a={"x":item3.x+longs/15,"y":item3.y+longs*7/15}
    paths.push(a)
    // 绿色三角形
    let item4=content.gamewindow.mainmaps.item11
    a={"x":item4.x+longs*7/15,"y":item4.y}
    paths.push(a)

    for(let i=12;i<=13;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        a={"x":item.x,"y":item.y+item.width/2}
        paths.push(a)
    }
// 红色三角形
    let item5=content.gamewindow.mainmaps.item14
    a={"x":item5.x,"y":item5.y}
    paths.push(a)

    for(let i=15;i<=19;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        a={"x":item.x+item.width/4,"y":item.y}
        paths.push(a)
    }
    // 橙色三角形
    let item6=content.gamewindow.mainmaps.item20
    a={"x":item6.x+longs/15,"y":item6.y+longs*7/15}
    paths.push(a)
    for(let i=21;i<=22;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        a={"x":item.x,"y":item.y+item.width/2}
        paths.push(a)
    }
    // 绿
    let item7=content.gamewindow.mainmaps.item23
    a={"x":item7.x+longs*7/15,"y":item7.y+longs*7/15}
    paths.push(a)
    // 橙色
    let item8=content.gamewindow.mainmaps.item24
    a={"x":item8.x,"y":item8.y}
    paths.push(a)
    for(let i=25;i<=26;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        a={"x":item.x+item.width/4,"y":item.y}
        paths.push(a)
    }
    // 绿色三角形
    let item9=content.gamewindow.mainmaps.item27
    a={"x":item9.x+longs/15,"y":item9.y+longs*7/15}
    paths.push(a)

    for(let i=28;i<=32;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        a={"x":item.x,"y":item.y+item.width/2}
        paths.push(a)
    }

    // 蓝色
    let item10=content.gamewindow.mainmaps.item33
     a={"x":item10.x+longs*7/15,"y":item10.y+longs*7/15}
    paths.push(a)

    for(let i=34;i<=35;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        a={"x":item.x+item.width/4,"y":item.y}
        paths.push(a)
    }
    // 橙色
    let item11=content.gamewindow.mainmaps.item36
     a={"x":item11.x+longs*7/15,"y":item11.y+longs/15}
    paths.push(a)
    // 蓝色
    let item12=content.gamewindow.mainmaps.item37
    a={"x":item12.x+longs/15,"y":item12.y+longs*7/15}
    paths.push(a)
    for(let i=38;i<=39;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        a={"x":item.x,"y":item.y+item.width/2}
        paths.push(a)
    }
    // 橙色
    let item13=content.gamewindow.mainmaps.item40
    a={"x":item13.x+longs*7/15,"y":item13.y+longs*7/15}
    paths.push(a)
    for(let i=41;i<=45;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        a={"x":item.x+item.width/4,"y":item.y}
        paths.push(a)
    }

    // 红色
    let item14=content.gamewindow.mainmaps.item46
    a={"x":item14.x+longs*7/15,"y":item14.y+longs/15}
    paths.push(a)

    for(let i=47;i<=48;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        a={"x":item.x,"y":item.y+item.width/2}
        paths.push(a)
    }
    // 蓝色
    let item15=content.gamewindow.mainmaps.item49
    a={"x":item15.x,"y":item15.y}
    paths.push(a)
    // 红色
    let item16=content.gamewindow.mainmaps.item50
    a={"x":item16.x+longs*7/15,"y":item16.y+longs*7/15}
    paths.push(a)

    for(let i=51;i<=52;i++){
        let itemname="item"+i
        // 动态用于匹配对应的属性值
        let item=content.gamewindow.mainmaps[itemname]
        a={"x":item.x+item.width/4,"y":item.y}
        paths.push(a)
    }




    content.gamewindow.green1.ismoveed.connect(()=>{
                                                   console.log("被点击")
                                                 content.gamewindow.green1.nextposition=content.gamewindow.green1.currentposition+1
                                                 nextposition=content.gamewindow.green1.nextposition
                                                 content.gamewindow.green1.currentposition=nextposition
                                                 content.gamewindow.green1.x=paths[nextposition].x
                                                 content.gamewindow.green1.y=paths[nextposition].y



                                             })


}
