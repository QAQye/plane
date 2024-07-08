let greenstartx
let greenstarty
// 用于存放路径
let paths=[]
let greenpath=[]
let greenjump=[]
let greenfly=[]
let greenplane=[]

let orangestartx
let orangestarty
let orangepath=[]
let orangejump=[]
let orangefly=[]
let orangeplane=[]


let bluestartx
let bluestarty
let bluepath=[]
let bluejump=[]
let bluefly=[]
let blueplane=[]

let redstartx
let redstarty
let redpath=[]
let redjump=[]
let redfly=[]
let redplane=[]

let longs
let nextposition

let randomNum
let type=1

// 用于判断排名
let greensend=0
let bluesend=0
let orangesend=0
let redsend=0



function init(){
    content.firstwindow.isclicked.connect(()=>{
                                                          // appWindow.showFullScreen();
                                                          content.firstwindow.visible=false
                                                          content.secondwindow.visible=true
                                                      })
    content.secondwindow.creatroomscene.connect(()=>{
                                                          // appWindow.showFullScreen();
                                                          content.firstwindow.visible=false
                                                          content.secondwindow.visible=false
                                               content.creatroom.visible=true
                                                      })

    content.secondwindow.joinroomscene.connect(()=>{
                                                          // appWindow.showFullScreen();
                                                          content.firstwindow.visible=false
                                                          content.secondwindow.visible=false

                                               content.joinroom.visible=true
                                                      })
    content.secondwindow.startgame.connect(initmap)
    // appWindow.showFullScreen();

    content.secondwindow.startgame.connect(()=>{
                                               initmap()
                                               moverule()

                                           })
    appWindow.showFullScreen();
    content.creatroom.gamePressed.connect(()=>{
                                                      initmap()
                                                      moverule()
                                                  })
    content.joinroom.gamePressed.connect(()=>{
                                             initmap()
                                             moverule()
                                         })

    content.greengameover.visible=false
        content.orangegameover.visible=false
        content.bluegameover.visible=false
        content.redgameover.visible=false



}
function initmap(){
    // 初始化地图的所有元素
    // let text= content.gamewindow.mainmaps.textarea.text
    content.gamewindow.visible=true
    content.secondwindow.visible=false
    longs=content.gamewindow.mainmaps.longs
    greenstartx=content.gamewindow.green1.startplanex
    greenstarty=content.gamewindow.green1.startplaney
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
    // 橙色飞机终点预备区域
    for(let i=53;i<=57;i++){
            let itemname="item"+i
            // 动态用于匹配对应的属性值
            let item=content.gamewindow.mainmaps[itemname]
            a={"x":item.x,"y":item.y}
            console.log("*******")
            console.log(a.x)
            console.log("*******")
            paths.push(a)
        }
    // 橙色飞机终点
    let item17=content.gamewindow.mainmaps.item58
    a={"x":item17.x+longs*7/30,"y":item17.y-longs/15}
    paths.push(a)

    // 蓝色飞机终点预备区域
    for(let i=59;i<=63;i++){
            let itemname="item"+i
            // 动态用于匹配对应的属性值
            let item=content.gamewindow.mainmaps[itemname]
            a={"x":item.x,"y":item.y}
            console.log("*******")
            console.log(a.x)
            console.log("*******")
            paths.push(a)
        }
    // 蓝色飞机终点
    let item18=content.gamewindow.mainmaps.item64
    a={"x":item18.x-longs/15,"y":item18.y+longs*7/30}
    paths.push(a)

    // 红色飞机终点预备区域
    for(let i=65;i<=69;i++){
            let itemname="item"+i
            // 动态用于匹配对应的属性值
            let item=content.gamewindow.mainmaps[itemname]
            a={"x":item.x,"y":item.y}
            console.log("*******")
            console.log(a.x)
            console.log("*******")
            paths.push(a)
        }
    // 红色飞机终点
    let item19=content.gamewindow.mainmaps.item70
    a={"x":item19.x+longs*7/30,"y":item19.y+longs*8/15}
    paths.push(a)

    // 绿色飞机终点预备区域
    for(let i=71;i<=75;i++){
            let itemname="item"+i
            // 动态用于匹配对应的属性值
            let item=content.gamewindow.mainmaps[itemname]
            a={"x":item.x,"y":item.y}
            paths.push(a)
        }
    // 绿色飞机终点
    let item20=content.gamewindow.mainmaps.item76
    a={"x":item20.x+longs*8/15,"y":item20.y+longs*8/30}
    paths.push(a)





    // 绿色飞机
    greenplane=[ content.gamewindow.green1, content.gamewindow.green2, content.gamewindow.green3, content.gamewindow.green4]
    // 存入第一架飞机的起始点
    a={"x":content.gamewindow.green1.startplanex,"y":content.gamewindow.green1.startplanex}
    greenpath.push(a)
    a={"x":content.gamewindow.green1.startplanex,"y":content.gamewindow.green1.startplanex+longs*2}
    greenpath.push(a)
    content.gamewindow.green1.planepath=greenpath
    content.gamewindow.green2.planepath=greenpath
    content.gamewindow.green3.planepath=greenpath
    content.gamewindow.green4.planepath=greenpath
    console.log("*******")
    console.log("*******")
    console.log(greenpath[1].y)
    console.log(greenpath[1].x)
    console.log("*******")
    console.log("*******")
    for(let i=40;i>=1;i--){
        greenpath[42-i]=paths[i]
    }
    for(let i=52;i>=43;i--){
        greenpath[94-i]=paths[i]
    }
    for(let i=71;i<=76;i++){
        greenpath[i-19]=paths[i]
    }
    // 加入跳格子
    for(let i=3;i<=51;i=i+4){
        greenjump.push(greenpath[i])
    }
    greenfly.push(greenpath[19])

    //橙色飞机
        orangeplane=[ content.gamewindow.orange1, content.gamewindow.orange2, content.gamewindow.orange3, content.gamewindow.orange4]
        // 存入第一架飞机的起始点
        a={"x":content.gamewindow.orange1.startplanex,"y":content.gamewindow.orange1.startplaney}
        orangepath.push(a)
        a={"x":content.gamewindow.orange1.startplanex*4,"y":content.gamewindow.orange4.startplaney}
        orangepath.push(a)
        content.gamewindow.orange1.planepath=orangepath
        content.gamewindow.orange2.planepath=orangepath
        content.gamewindow.orange3.planepath=orangepath
        content.gamewindow.orange4.planepath=orangepath
        orangepath[2]=paths[1]
    for(let i=52;i>=4;i--){
        orangepath[55-i]=paths[i]
    }
    for(let i=53;i<=58;i++){
        orangepath[i-1]=paths[i]
    }
    for(let i=3;i<=51;i=i+4){
        orangejump.push(orangepath[i])
    }
     orangefly.push(orangepath[19])

    // 蓝色飞机
    blueplane=[content.gamewindow.blue1,content.gamewindow.blue2,content.gamewindow.blue3,content.gamewindow.blue4]
    a={"x":content.gamewindow.blue1.startplanex,"y":content.gamewindow.blue1.startplaney}
    bluepath.push(a)
    a={"x":content.gamewindow.blue2.startplanex+longs,"y":content.gamewindow.blue2.startplaney-longs}
    bluepath.push(a)
    content.gamewindow.blue1.planepath=bluepath
    content.gamewindow.blue2.planepath=bluepath
    content.gamewindow.blue3.planepath=bluepath
    content.gamewindow.blue4.planepath=bluepath
    for(let i=14;i>=1;i--){
        bluepath[16-i]=paths[i]
    }
    for(let i=52;i>=17;i--){
        bluepath[68-i]=paths[i]
    }
    for(let i=59;i<=64;i++){
        bluepath[i-7]=paths[i]
    }
    for(let i=3;i<=51;i=i+4){
        bluejump.push(bluepath[i])
    }
    bluefly.push(bluepath[19])

    // 红色飞机

    redplane=[content.gamewindow.red1,content.gamewindow.red2,content.gamewindow.red3,content.gamewindow.red4]
    a={"x":content.gamewindow.red1.startplanex,"y":content.gamewindow.red1.startplaney}
    redpath.push(a)
    a={"x":content.gamewindow.red2.startplanex-longs*2,"y":content.gamewindow.red2.startplaney+longs}
    redpath.push(a)
    content.gamewindow.red1.planepath=redpath
    content.gamewindow.red2.planepath=redpath
    content.gamewindow.red3.planepath=redpath
    content.gamewindow.red4.planepath=redpath
    for(let i=27;i>=1;i--){
        redpath[29-i]=paths[i]
    }
    for(let i=52;i>=30;i--){
        redpath[81-i]=paths[i]
    }
    for(let i=65;i<=70;i++){
        redpath[i-13]=paths[i]
    }
    for(let i=3;i<=51;i=i+4){
        redjump.push(redpath[i])
    }
    redfly.push(redpath[19])










}
function moverule(){
    content.gamewindow.mainmaps.dicebutton.randomchanged.connect(()=>{
                                                                    randomNum=content.gamewindow.mainmaps.dicebutton.lastrandom
                                                                    content.gamewindow.mainmaps.textarea.text+="摇的骰子数是"+randomNum+"\n"
                                                                     let clicks= content.gamewindow.mainmaps.dicebutton.click
                                                                     let falsefly=0
                                                                     if(clicks%4===1){
                                                                         falsefly=0
                                                                         // 如果没有飞机处于起飞状态且当前的状态不能起飞
                                                                         for(let k=0;k<4;k++){
                                                                             if( greenplane[k].isfly===false){
                                                                                 falsefly++
                                                                             }


                                                                         }
                                                                         if(falsefly===4-greensend&&randomNum!==6){
                                                                             content.gamewindow.mainmaps.dicebutton.enabled=false
                                                                             content.gamewindow.mainmaps.textarea.text+="没有达到指定点数\n"
                                                                             content.gamewindow.mainmaps.textarea.text+="绿色棋子不能移动\n"
                                                                             content.gamewindow.mainmaps.delytimer.start()
                                                                             return ;
                                                                         }

                                                                         content.gamewindow.mainmaps.textarea.text+="绿色棋子请移动\n"
                                                                         type=1
                                                                        resetPlanesgreen()
                                                                     }
                                                                     else if(clicks%4===2){
                                                                         falsefly=0
                                                                         for(let k=0;k<4;k++){
                                                                             if( orangeplane[k].isfly===false){
                                                                                falsefly++
                                                                             }


                                                                         }
                                                                         if(falsefly===4-orangesend&&randomNum!==6){
                                                                             content.gamewindow.mainmaps.dicebutton.enabled=false
                                                                             content.gamewindow.mainmaps.textarea.text+="没有达到指定点数\n"
                                                                             content.gamewindow.mainmaps.textarea.text+="橙色棋子不能移动\n"
                                                                             content.gamewindow.mainmaps.delytimer.start()
                                                                             return ;
                                                                         }

                                                                         content.gamewindow.mainmaps.textarea.text+="橙色棋子请移动\n"
                                                                         type=2
                                                                         resetPlanesorange()
                                                                     }
                                                                     else if(clicks%4===3){
                                                                         falsefly=0
                                                                         for(let k=0;k<4;k++){
                                                                             if(blueplane[k].isfly===false){
                                                                                 falsefly++
                                                                             }


                                                                         }
                                                                         if(falsefly===4-bluesend&&randomNum!==6){
                                                                             content.gamewindow.mainmaps.dicebutton.enabled=false
                                                                             content.gamewindow.mainmaps.textarea.text+="没有达到指定点数\n"
                                                                             content.gamewindow.mainmaps.textarea.text+="蓝色棋子不能移动\n"
                                                                             content.gamewindow.mainmaps.delytimer.start()
                                                                             return ;
                                                                         }

                                                                         content.gamewindow.mainmaps.textarea.text+="蓝色棋子请移动\n"
                                                                         type=3
                                                                         resetPlanesblue()
                                                                     }
                                                                     else{
                                                                         falsefly=0
                                                                         for(let k=0;k<4;k++){
                                                                             if(redplane[k].isfly===false){
                                                                                 falsefly++
                                                                             }


                                                                         }

                                                                         if(falsefly===4-redsend&&randomNum!==6){
                                                                             content.gamewindow.mainmaps.dicebutton.enabled=false
                                                                             content.gamewindow.mainmaps.textarea.text+="没有达到指定点数\n"
                                                                             content.gamewindow.mainmaps.textarea.text+="红色棋子不能移动\n"
                                                                             content.gamewindow.mainmaps.delytimer.start()
                                                                             return ;
                                                                         }

                                                                         content.gamewindow.mainmaps.textarea.text+="红色棋子请移动\n"
                                                                         type=4
                                                                         resetPlanesred()
                                                                     }
                                                                     console.log("刷新")
                                                                 })

    for(let j=0;j<4;j++){
        greenplane[j].ismoveed.connect(()=>{

                                           // 如果飞机能起飞那么只能一次只能移动一架飞机,如果点击了未起飞的飞机且点数为6的时候才进行互斥否则必须选择其他的棋子进行移动
                                           if(greenplane[j].isfly===true&&type===1){
                                               for(let k=0;k<4;k++){
                                                   if(k!==j){
                                                       greenplane[k].ismove=false
                                                   }
                                               }
                                               moveplane(j)
                                           }
                                           else if(greenplane[j].isfly===false&&randomNum===6&&type===1){
                                               for(let k=0;k<4;k++){

                                                   if(k!==j){
                                                       greenplane[k].ismove=false
                                                   }
                                               }
                                               moveplane(j)

                                           }
                                           else{
                                               content.gamewindow.mainmaps.textarea.text+="这个棋子不能起飞请选择其他棋子移动\n"
                                           }

                                                 })
    }


    // 橙色飞机
    for(let j=0;j<4;j++){
        orangeplane[j].ismoveed.connect(()=>{
                                            if(orangeplane[j].isfly===true&&type===2){
                                                for(let k=0;k<4;k++){
                                                    if(k!==j){
                                                        orangeplane[k].ismove=false
                                                    }
                                                }
                                                moveorangeplane(j)
                                            }
                                            else if(orangeplane[j].isfly===false&&randomNum===6&&type===2){
                                                for(let k=0;k<4;k++){

                                                    if(k!==j){
                                                        orangeplane[k].ismove=false
                                                    }
                                                }
                                                moveorangeplane(j)

                                            }
                                            else{
                                                content.gamewindow.mainmaps.textarea.text+="这个棋子不能起飞请选择其他棋子移动\n"
                                            }

                                                 })
    }
    // 蓝色飞机

    for(let j=0;j<4;j++){
        blueplane[j].ismoveed.connect(()=>{
                                          if(blueplane[j].isfly===true&&type===3){
                                              for(let k=0;k<4;k++){
                                                  if(k!==j){
                                                      blueplane[k].ismove=false
                                                  }
                                              }
                                              moveblueplane(j)
                                          }
                                          else if(blueplane[j].isfly===false&&randomNum===6&&type===3){
                                              for(let k=0;k<4;k++){

                                                  if(k!==j){
                                                      blueplane[k].ismove=false
                                                  }
                                              }
                                              moveblueplane(j)

                                          }
                                          else{
                                              content.gamewindow.mainmaps.textarea.text+="这个棋子不能起飞请选择其他棋子移动\n"
                                          }

                                                 })
    }

    // 红色飞机
    for(let j=0;j<4;j++){
        redplane[j].ismoveed.connect(()=>{
                                         if(redplane[j].isfly===true&&type===4){
                                             for(let k=0;k<4;k++){
                                                 if(k!==j){
                                                     redplane[k].ismove=false
                                                 }
                                             }
                                             moveredplane(j)
                                         }
                                         else if(redplane[j].isfly===false&&randomNum===6&&type===4){
                                             for(let k=0;k<4;k++){

                                                 if(k!==j){
                                                     redplane[k].ismove=false
                                                 }
                                             }
                                             moveredplane(j)

                                         }
                                         else{
                                             content.gamewindow.mainmaps.textarea.text+="这个棋子不能起飞请选择其他棋子移动\n"
                                         }

                                                 })
    }
}
// 用于重置所有飞机的状态
function resetPlanesgreen(){
    for (let i=0;i<greenplane.length;i++) {
        greenplane[i].ismove=true
    }
}
function resetPlanesorange(){
    for (let i=0;i<orangeplane.length;i++) {
       orangeplane[i].ismove=true
    }
}
function resetPlanesblue(){
    for (let i=0;i<blueplane.length;i++) {
       blueplane[i].ismove=true
    }
}
function resetPlanesred(){
    for (let i=0;i<redplane.length;i++) {
       redplane[i].ismove=true
    }
}

// 移动飞机
function moveplane(j){

    if(type==1){console.log("绿色飞机")}
     // 判断是否能够起飞以及是否达到了终点和判断这个飞机是否可以移动
    if(greenplane[j].isfly===true&&greenplane[j].isend===false&&greenplane[j].ismove===true&&type===1){

        greenplane[j].nextposition=greenplane[j].currentposition+randomNum
        nextposition=greenplane[j].nextposition

       for(let i=0;i<greenjump.length;i++){


              if(greenpath[nextposition]===greenjump[i]&&nextposition<51){
                  nextposition+=4
                  break;
              }
            if(greenpath[nextposition]===greenfly[0]){
                nextposition=31
                break;
            }

          }
        // 实现二次跳跃
        if(greenpath[nextposition]===greenfly[0]){
            nextposition=31
        }

        // 判断是否到终点
        if(nextposition>=57){
            nextposition=57
            greenplane[j].isend=true
            greenplane[j].x=greenplane[j].startplanex
            greenplane[j].y=greenplane[j].startplaney
            greenplane[j].planesize=content.gamewindow.mainmaps.orangescreen.width*0.4
            greenplane[j].planesource="qrc:/images/绿色星星.png"
            greensend++

             checkGameOver()

        }




       if(greenplane[j].isend===false){
           greenplane[j].currentposition=nextposition
            greenplane[j].x=greenpath[nextposition].x
            greenplane[j].y=greenpath[nextposition].y
            // 监测碰撞
            checkCollisionAndReset(greenplane[j])
       }

    }
    // 判断飞机是否能够起飞只有摇骰子摇到六点才能起飞
    if(greenplane[j].isfly===false&&randomNum===6&&greenplane[j].ismove===true&&type===1){
        greenplane[j].nextposition=greenplane[j].currentposition+1
        nextposition=greenplane[j].nextposition
        greenplane[j].currentposition=nextposition
        greenplane[j].x=greenpath[nextposition].x
       greenplane[j].y=greenpath[nextposition].y
        greenplane[j].isfly=true
        greenplane[j].planesize=longs/2
    }
    // 只能走一次
    greenplane[j].ismove=false
    // 设置按钮可以用
    content.gamewindow.mainmaps.dicebutton.enabled=true
}


function  moveorangeplane(j){

    if(type==2){console.log("橙色飞机")}
     // 判断是否能够起飞以及是否达到了终点和判断这个飞机是否可以移动
    if(orangeplane[j].isfly===true&&orangeplane[j].isend===false&&orangeplane[j].ismove===true&&type===2){

       orangeplane[j].nextposition=orangeplane[j].currentposition+randomNum
        nextposition=orangeplane[j].nextposition
       for(let i=0;i<orangejump.length;i++){

              if(orangepath[nextposition]===orangejump[i]&&nextposition<51){
                  nextposition+=4
                  break;
              }
            if(orangepath[nextposition]===orangefly[0]){
                nextposition=31
                break;
            }

          }
        // 实现二次跳跃
        if(orangepath[nextposition]===orangefly[0]){
            nextposition=31
        }
        if(nextposition>=57){
            nextposition=57
            orangeplane[j].isend=true
            orangeplane[j].x=orangeplane[j].startplanex
            orangeplane[j].y=orangeplane[j].startplaney
            orangeplane[j].planesize=content.gamewindow.mainmaps.orangescreen.width*0.4
            orangeplane[j].planesource="qrc:/images/橙色星星.png"
            orangesend++

             checkGameOver()

        }

        // 当没有到达终点时候才执行
        if( orangeplane[j].isend===false){
            orangeplane[j].currentposition=nextposition
             orangeplane[j].x=orangepath[nextposition].x
             orangeplane[j].y=orangepath[nextposition].y
             // 监测碰撞判断棋子走的位置上是否有其他的棋子
             checkCollisionAndReset(orangeplane[j])
        }


    }
    // 判断飞机是否能够起飞只有摇骰子摇到六点才能起飞
    if(orangeplane[j].isfly===false&&randomNum===6&&orangeplane[j].ismove===true&&type===2){
       orangeplane[j].nextposition=orangeplane[j].currentposition+1
        nextposition=orangeplane[j].nextposition
        orangeplane[j].currentposition=nextposition
        orangeplane[j].x=orangepath[nextposition].x
       orangeplane[j].y=orangepath[nextposition].y
        orangeplane[j].isfly=true
        orangeplane[j].planesize=longs/2
    }
    // 此时场上有同颜色飞机处于起飞状态但是没有摇到点数6选择了未起飞状态的飞机
    // 只能走一次
    orangeplane[j].ismove=false
    content.gamewindow.mainmaps.dicebutton.enabled=true
}

function moveblueplane(j){

    if(type==3){console.log("蓝色飞机")}
     // 判断是否能够起飞以及是否达到了终点和判断这个飞机是否可以移动
    if(blueplane[j].isfly===true&&blueplane[j].isend===false&&blueplane[j].ismove===true&&type===3){

       blueplane[j].nextposition=blueplane[j].currentposition+randomNum
        nextposition=blueplane[j].nextposition

       for(let i=0;i<bluejump.length;i++){


              if(bluepath[nextposition]===bluejump[i]&&nextposition<51){
                  nextposition+=4
                  break;
              }
            if(bluepath[nextposition]===bluefly[0]){
                nextposition=31
                break;
            }

          }
        // 实现二次跳跃
        if(bluepath[nextposition]===bluefly[0]){
            nextposition=31
        }
                // 判断下一次摇的骰子是否达到了终点
        if(nextposition>=57){

            nextposition=57
            blueplane[j].isend=true
            blueplane[j].x=blueplane[j].startplanex
            blueplane[j].y=blueplane[j].startplaney
            blueplane[j].planesize=content.gamewindow.mainmaps.orangescreen.width*0.4
            blueplane[j].planesource="qrc:/images/蓝色星星.png"
            bluesend++

            checkGameOver()

        }




      if(blueplane[j].isend===false){
          blueplane[j].currentposition=nextposition
           blueplane[j].x=bluepath[nextposition].x
           blueplane[j].y=bluepath[nextposition].y
            // 检测碰撞判断棋子走的位置是否有其他的棋子
           checkCollisionAndReset(blueplane[j])
      }

    }
    // 判断飞机是否能够起飞只有摇骰子摇到六点才能起飞
    if(blueplane[j].isfly===false&&randomNum===6&&blueplane[j].ismove===true&&type===3){
       blueplane[j].nextposition=blueplane[j].currentposition+1
        nextposition=blueplane[j].nextposition
        blueplane[j].currentposition=nextposition
        blueplane[j].x=bluepath[nextposition].x
       blueplane[j].y=bluepath[nextposition].y
        blueplane[j].isfly=true
         blueplane[j].planesize=longs/2
    }
    // 只能走一次
    blueplane[j].ismove=false
    content.gamewindow.mainmaps.dicebutton.enabled=true
}


function moveredplane(j){
    if(type==4){console.log("红色飞机")}
     // 判断是否能够起飞以及是否达到了终点和判断这个飞机是否可以移动

    if(redplane[j].isfly===true&&redplane[j].isend===false&&redplane[j].ismove===true&&type===4){
       redplane[j].nextposition=redplane[j].currentposition+randomNum
        nextposition=redplane[j].nextposition


       for(let i=0;i<redjump.length;i++){


              if(redpath[nextposition]===redjump[i]&&nextposition<51){
                  nextposition+=4
                  break;
              }
            if(redpath[nextposition]===redfly[0]){
                nextposition=31
                break;
            }

          }
        // 实现二次跳跃
        if(redpath[nextposition]===redfly[0]){
            nextposition=31
        }
        // 判断是否到达终点
        if(nextposition>=57){
            nextposition=57
            redplane[j].isend=true
            redplane[j].x=redplane[j].startplanex
            redplane[j].y=redplane[j].startplaney
            redplane[j].planesize=content.gamewindow.mainmaps.orangescreen.width*0.4
            redplane[j].planesource="qrc:/images/红色星星.png"
            redsend++

             checkGameOver()

        }




       if(redplane[j].isend===false){
           redplane[j].currentposition=nextposition
            redplane[j].x=redpath[nextposition].x
            redplane[j].y=redpath[nextposition].y
             // 检测碰撞
            checkCollisionAndReset(redplane[j])
       }

    }
    // 判断飞机是否能够起飞只有摇骰子摇到六点才能起飞
    if(redplane[j].isfly===false&&randomNum===6&&redplane[j].ismove===true&&type===4){
       redplane[j].nextposition=redplane[j].currentposition+1
        nextposition=redplane[j].nextposition
        redplane[j].currentposition=nextposition
        redplane[j].x=redpath[nextposition].x
       redplane[j].y=redpath[nextposition].y
        redplane[j].isfly=true
          redplane[j].planesize=longs/2
    }
    // 只能走一次
    redplane[j].ismove=false
    content.gamewindow.mainmaps.dicebutton.enabled=true


}
// 定义一个检查碰撞并重置飞机位置的函数
function checkCollisionAndReset(plane) {
    let planes = [
        content.gamewindow.green1,
        content.gamewindow.green2,
        content.gamewindow.green3,
        content.gamewindow.green4,
        content.gamewindow.orange1,
        content.gamewindow.orange2,
        content.gamewindow.orange3,
        content.gamewindow.orange4,
        content.gamewindow.blue1,
        content.gamewindow.blue2,
        content.gamewindow.blue3,
        content.gamewindow.blue4,
        content.gamewindow.red1,
        content.gamewindow.red2,
        content.gamewindow.red3,
        content.gamewindow.red4
    ]
    plane.ismove=false
    for (let i = 0; i < planes.length; i++) {
            if (
                planes[i].planepath[planes[i].currentposition].x === plane.planepath[plane.currentposition].x &&
                planes[i].planepath[planes[i].currentposition].y === plane.planepath[plane.currentposition].y &&
                planes[i].type !== plane.type) { // 仅当飞机颜色不同才重置位置
                resetPlane(planes[i]);
            }
        }
}

// 重置飞机位置的函数
function resetPlane(plane) {
    // 让其回到起点位置和终点位置并且设置飞机的状态是不可起飞
    plane.currentposition = 0
    plane.isfly=false
    plane.x = plane.startplanex
    plane.y = plane.startplaney
    plane.planesize=content.gamewindow.mainmaps.orangescreen.width*0.4
}
// 判断是否胜利
// 重置飞机位置的函数
function resetPlane(plane) {
    // 让其回到起点位置和终点位置并且设置飞机的状态是不可起飞
    plane.currentposition = 0
    plane.isfly=false
    plane.x = plane.startplanex
    plane.y = plane.startplaney
    plane.planesize=content.gamewindow.mainmaps.orangescreen.width*0.4
}
// 判断是否胜利
function checkGameOver() {
    if (greensend === 4) {
        showGameOver1();// 调用绿色飞机结束界面
    } else if (orangesend === 4) {
        showGameOver2();// 调用橙色飞机结束界面
    } else if (bluesend === 4) {
        showGameOver3();// 调用蓝色飞机结束界面
    } else if (redsend === 4) {
        showGameOver4();// 调用红色飞机结束界面
    }
}

function showGameOver1() {
    content.greengameover.visible=true;

    // 在这里调用 QML 中显示游戏结束界面的函数，传递颜色信息

}
function showGameOver2() {
    content.orangegameover.visible=true;

}
function showGameOver3() {
    content.bluegameover.visible=true;

}
function showGameOver4() {
    content.redgameover.visible=true;

}
