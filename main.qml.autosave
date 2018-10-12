import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    id:mainwindow
    visible: true
    width: 1100
    height: 480
    title: qsTr("PowerTune Dash Designer V 0.1 Beta")
    property var component;
    property int gaugenumber : 1;
    property var gauge1;
    property var gauge2;
    property var gauge3;
    property var gauge4;
    property var gauge5;
    property var gauge6;
    property var gauge7;
    property var gauge8;
    property var gauge9;
    property var gauge10;
    property var gauge11;
    property var gauge12;
    property var gauge13;
    property var gauge14;
    property var gauge15;
    property var gauge16;
    property var gauge17;
    property var gauge18;
    property var gauge19;
    property var gauge20;


    ListModel {
        id: gaugenames

    }
    Rectangle
    {
        id:menues
        width: 300
        height: 480
        anchors.right: parent.right
        color: "darkgrey"
        Grid {
            spacing: 2
            anchors.top :menues.top
            rows: 15
            columns: 2
            Button{
                id: remove
                height :30
                width :150
                text:"Remove Gauge"

            }
            Button{
                id: create
                height :30
                width :150
                text:"Add Gauge"
                onClicked: container.createSquareGauge("gauge1",gwidth.text,gheight.text,300,240,150,decimalplaces.value,"V",title.text,true,false,false,"","","",10,100),gaugenames.append({"name": gaugenumber.toString() }),gaugenumber++;
            }
            Text
            {
                text: "Select Gauge:"
                height :30
                width :150
                color: "white"
            }
            ComboBox {
                id: gaugeselect
                width: 150
                height: 30
                model : gaugenames
                delegate: ItemDelegate {
                    width: gaugeselect.width
                    text: gaugeselect.textRole ? (Array.isArray(control.model) ? modelData[control.textRole] : model[control.textRole]) : modelData
                    font.weight: gaugeselect.currentIndex === index ? Font.DemiBold : Font.Normal
                    font.family: gaugeselect.font.family
                    font.pixelSize: gaugeselect.font.pixelSize
                    highlighted: gaugeselect.highlightedIndex === index
                    hoverEnabled: gaugeselect.hoverEnabled
                }
            }
            Text
            {
                text: "Title"
                height :30
                width :150
                color: "white"
            }
            TextField {
                id:title
                text: qsTr("BatteryV")
                height :30
                width :150
                inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhSensitiveData | Qt.ImhNoPredictiveText
                onTextChanged : changevalues.valuechange()
            }
            Text
            {
                text: "Height:"
                height :30
                width :150
                color: "white"
                onTextChanged : changevalues.valuechange()
            }
            TextField {
                id:gheight
                text: qsTr("200")
                height :30
                width :150
                inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhSensitiveData | Qt.ImhNoPredictiveText
                onTextChanged : changevalues.valuechange()
            }
            Text
            {
                text: "Width:"
                height :30
                width :150
                color: "white"
            }
            TextField {
                id:gwidth
                text: qsTr("120")
                height :30
                width :150
                inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhSensitiveData | Qt.ImhNoPredictiveText
                onTextChanged : changevalues.valuechange()
            }
            Text
            {
                text: "Bar Gauge max Val:"
                height :30
                width :150
                color: "white"

            }
            TextField {
                text: qsTr("200")
                height :30
                width :150
                inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhSensitiveData | Qt.ImhNoPredictiveText
                onTextChanged : changevalues.valuechange()
            }
            Text
            {
                text: "Vertical Bar gauge visible:"
                height :30
                width :150
                color: "white"
            }
            ComboBox {
                id: vertvis
                width: 150
                height: 30
                model : ["false","true"]
                //initialized : "true"
                delegate: ItemDelegate {
                    width: vertvis.width
                    text: vertvis.textRole ? (Array.isArray(control.model) ? modelData[control.textRole] : model[control.textRole]) : modelData
                    font.weight: vertvis.currentIndex === index ? Font.DemiBold : Font.Normal
                    font.family: vertvis.font.family
                    font.pixelSize: vertvis.font.pixelSize
                    highlighted: vertvis.highlightedIndex === index
                    hoverEnabled: vertvis.hoverEnabled
                }
            }
            Text
            {
                text: "Horizontal Bar gauge visible:"
                height :30
                width :150
                color: "white"
            }
            ComboBox {
                id: horizvis
                width: 150
                height: 30
                model : ["false","true"]
                //initialized : "true"
                delegate: ItemDelegate {
                    width: horizvis.width
                    text: horizvis.textRole ? (Array.isArray(control.model) ? modelData[control.textRole] : model[control.textRole]) : modelData
                    font.weight: horizvis.currentIndex === index ? Font.DemiBold : Font.Normal
                    font.family: horizvis.font.family
                    font.pixelSize: horizvis.font.pixelSize
                    highlighted: horizvis.highlightedIndex === index
                    hoverEnabled: horizvis.hoverEnabled
                }
            }
            Text
            {
                text: "Secondary Val visible:"
                height :30
                width :150
                color: "white"
            }
            ComboBox {
                id: secvis
                width: 150
                height: 30
                model : ["false","true"]
                //initialized : "true"
                delegate: ItemDelegate {
                    width: secvis.width
                    text: secvis.textRole ? (Array.isArray(control.model) ? modelData[control.textRole] : model[control.textRole]) : modelData
                    font.weight: secvis.currentIndex === index ? Font.DemiBold : Font.Normal
                    font.family: secvis.font.family
                    font.pixelSize: secvis.font.pixelSize
                    highlighted: secvis.highlightedIndex === index
                    hoverEnabled: secvis.hoverEnabled
                }
            }
            Text
            {
                text: "Decimal places:"
                height :30
                width :150
                color: "white"
            }

            SpinBox {
                id: decimalplaces
                height :30
                width :150
                from: 0
                value: 0
                to: 5
                stepSize: 1
            }
            Text
            {
                text: "Warning High:"
                height :30
                width :150
                color: "white"
            }
            TextField {
                text: qsTr("20000")
                height :30
                width :150
                inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhSensitiveData | Qt.ImhNoPredictiveText
                //enterKeyAction: EnterKeyAction.Next
            }
            Text
            {
                text: "Warning Low:"
                height :30
                width :150
                color: "white"
            }
            TextField {
                text: qsTr("-20000")
                height :30
                width :150
                inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhSensitiveData | Qt.ImhNoPredictiveText
                //enterKeyAction: EnterKeyAction.Next
            }


            Button{
                id: g1

                text:"gauge1"
                onClicked: gauge1.width = 400
            }
            Button{
                id: g2
                text:"gauge2"
                onClicked: console.log(gauge1.title)
            }

        }
    }
    Rectangle{
        id:appwindow
        width: 800
        height: 480
        color: "black"

        Item
        {
            id: changevalues
            function valuechange(){
                switch (gaugeselect.currentIndex) {
                case 0:
                {
                    gauge1.destroy();
                    container.createSquareGauge("gauge1",gwidth.text,gheight.text,300,240,150,decimalplaces.value,"V",title.text,true,false,false,"","","",10,100)
                    break;
                }
                case 1:
                {
                    break;
                }
                case 2:
                {
                    break;
                }
                case 3:
                {
                    break;
                }
                case 4:
                {
                    break;
                }
                case 5:
                {
                    break;
                }
                case 6:
                {
                    break;
                }
                case 7:
                {
                    break;
                }
                case 8:
                {
                    break;
                }
                case 9:
                {
                    break;
                }
                case 10:
                {
                    break;
                }
                case 11:
                {
                    break;
                }
                case 12:
                {
                    break;
                }
                case 13:
                {
                    break;
                }
                case 14:
                {
                    break;
                }
                case 15:
                {
                    break;
                }
                case 16:
                {
                    break;
                }
                case 17:
                {
                    break;
                }
                case 18:
                {
                    break;
                }
                case 19:
                {
                    break;
                }
                case 20:
                {
                    break;
                }

                }
            }
        }
        Item
        {
            id: container
            function createSquareGauge(setID,setWidth,setHeight,setX,setY,setMaxValue,setDecPlace,setUnit,setID,setVertGaugeVis,setHoriGaugeVis,setSecValueVis,SetValueObject,SetValuePropertyMain,SetValuePropertySec) {
                component = Qt.createComponent("SquareGauge.qml");
                if (component.status == Component.Ready){
                    console.log("component ready");
                    finishCreation(setID,setWidth,setHeight,setX,setY,setMaxValue,setDecPlace,setUnit,setID,setVertGaugeVis,setHoriGaugeVis,setSecValueVis,SetValueObject,SetValuePropertyMain,SetValuePropertySec);
                }
                else {
                    component.statusChanged.connect(finishCreation);
                    console.log("component not ready!");
                }
            }

            function finishCreation(setID,setWidth,setHeight,setX,setY,setMaxValue,setDecPlace,setUnit,setID,setVertGaugeVis,setHoriGaugeVis,setSecValueVis,SetValueObject,SetValuePropertyMain,SetValuePropertySec) {
                if (component.status == Component.Ready) {
                    gaugeselect.currentIndex = gaugenumber-1
                    switch (gaugenumber) {
                    case 1: {
                        gauge1 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge1 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }

                    case 2: {
                        gauge2 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge2 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 3: {
                        gauge3 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge3 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 4: {
                        gauge4 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge4 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 5: {
                        gauge5 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge5 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 6: {
                        gauge6 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge6 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 7: {
                        gauge7 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge7 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 8: {
                        gauge8 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge8 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 9: {
                        gauge9 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge9 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 10: {
                        gauge10 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge10 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 11: {
                        gauge11 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge11 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 12: {
                        gauge12 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge12 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 13: {
                        gauge13 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge13 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 14: {
                        gauge14 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge14 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 15: {
                        gauge15 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge15 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 16: {
                        gauge16 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge16 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 17: {
                        gauge17 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge17 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 18: {
                        gauge18 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge18 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 19: {
                        gauge19 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge19 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    case 20: {
                        gauge20 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge20 == null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;
                    }
                    }
                }

            }
        }
    }
}
