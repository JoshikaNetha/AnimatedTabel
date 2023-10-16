import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 1.4
import QtQuick 2.0
import QtQuick.Layouts 1.3
//import QtQuick.Controls 2.0
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //    ListModel {
    //        id: libraryModel
    //            ListElement {
    //                key:"File Name  "
    //                value:    "-"
    //            }
    //            ListElement {
    //                key:"Date "
    //                value:    "-"
    //            }
    //            ListElement {
    //                key:"Size "
    //                value:    "-"
    //            }
    //            ListElement {
    //                key:"Coordinates  "
    //                value:    "-"
    //            }
    //    }





    TableView {
        id: tableView
        anchors.fill: parent
//        columnWidthProvider: function (column) { return 100 }
//        rowHeight: 30
        model: ListModel {
            ListElement { name: "Apple"; price: 2.45 }
            ListElement { name: "Banana"; price: 1.95 }
            ListElement { name: "Orange"; price: 3.25 }
        }
        sortIndicatorVisible: true
        sortIndicatorColumn: 1
        sortIndicatorOrder: Qt.AscendingOrder

        TableViewColumn {
            role: "name"
            title: "Name"
        }

        TableViewColumn {
            role: "price"
            title: "Price"
            width: 100
        }
        // Add a header to enable sorting
        headerDelegate: Text {
            text: styleData.value+"    SORT"
//            sortIndicatorVisible: true
//            sortOrder: tableView.sortIndicatorOrder
//            sortIndicator: tableView.sortIndicator
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("clicked")
                    tableView.sortIndicatorColumn = styleData.column;
                    tableView.sortIndicatorOrder = tableView.sortIndicatorOrder === Qt.AscendingOrder ? Qt.DescendingOrder : Qt.AscendingOrder;
                }
            }
        }
    }
    //    TableView {
    //        id: tableview
    //        width: parent.width * 0.5
    //        height: parent.height
    //        sortIndicatorVisible : true
    //        sortIndicatorOrder:Qt.DescendingOrder
    //        TableViewColumn {
    //            role:  "key"
    //            title: "Title"
    //        }
    //        TableViewColumn {
    //            role:  "value"
    //            title: "Author"
    //        }
    //        model: libraryModel
    //        TextField{
    //            id:txtField
    //            placeholderText: "search..."
    //            onTextChanged: {
    //                libraryModel.f
    //            }

    //        }


    //        rowDelegate : Rectangle {
    //            id:     _roeDelegate
    //            property bool expanded: false
    //            height: expanded? 100 : 50
    //            clip:   true
    //            Rectangle {
    //                id:    mainRect
    //                width: parent.width
    //                height: _roeDelegate.expanded ?parent.height/2 :parent.height
    //                color: _roeDelegate.expanded ?"grey":"transparent"
    //                anchors.top: parent.top

    //                MouseArea {
    //                    anchors.fill: parent
    //                    onClicked: {
    //                        console.log("model.key  ",model.title)
    //                        var modelKey=model.title
    //                        modelKey=modelKey.toString()
    //                        var modelValue="Coordinates "
    //                         console.log("model.title==Coordinates ",modelKey==modelKey)
    //                          console.log("typeOf(model.title)==typeOf(Coordinates) ",typeof(modelKey), typeof(modelValue))
    //                        if(modelKey==modelValue)
    //                        {
    //                            _roeDelegate.expanded = _roeDelegate.expanded=== true?false:true
    //                            if(_roeDelegate.expanded){
    //                                mainRect.height= _roeDelegate.height/2
    //                                rowLayout.height= _roeDelegate.height/2
    //                            }else{
    //                                mainRect.height= _roeDelegate.height
    //                                rowLayout.height= 0
    //                            }
    //                        }

    //                    }
    //                }
    //                Row{
    //                    anchors.fill: parent
    //                    spacing:parent.width * 0.1

    //                    Text {
    //                        text: model.title
    //                    }
    //                    Text {
    //                        text: model.author
    //                    }
    //                }

    //            }
    //            Rectangle {
    //                id:             rowLayout
    //                width:          parent.width
    //                anchors.right:  parent.right
    //                anchors.left:   parent.left
    //                anchors.bottom: parent.bottom
    //                visible:        expanded
    //                color:          "grey"
    //                Row{
    //                    anchors.fill: parent
    //                    spacing:parent.width * 0.1

    //                    Text {
    //                        text: "Joshika"
    //                    }
    //                    Text {
    //                        text: "new"
    //                    }
    //                }
    //            }

    //        }
    //    }


}
