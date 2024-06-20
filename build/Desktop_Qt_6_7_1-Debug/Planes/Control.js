function init(){
    content.firstwindow.isclicked.connect(()=>{
                                                          content.firstwindow.visible=false
                                                          content.secondwindow.visible=true
                                                      })
    content.secondwindow.startgame.connect(()=>{
                                               content.gamewindow.visible=true
                                               content.secondwindow.visible=false
                                           })
}
