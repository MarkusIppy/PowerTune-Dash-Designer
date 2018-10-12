import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    id:mainwindow
    visible: true
    width: 1100
    height: 480
    title: qsTr("PowerTune Dash Designer V 0.1 Beta")
    property bool vertvisble: false
    property bool horizvisible: false
    property bool secvisible: false
    property var component;
    property double testvalue: testvalueslider.value;
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
                onClicked: container.createSquareGauge(gwidth.text,gheight.text,300,240,150,decimalplaces.value,units.text,title.text,vertvisble,horizvisible,secvisible,"","",""),gaugenames.append({"name": gaugenumber.toString() }),gaugenumber++;
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
                onCurrentIndexChanged: switchgauge.updatevalues()
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
                text: "Unit description"
                height :30
                width :150
                color: "white"
            }
            TextField {
                id:units
                text: qsTr("V")
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
                id:maxval
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
                Component.onCompleted: {
                    if (vertvis.currentIndex == 0) {vertvisble = false};
                    if (vertvis.currentIndex == 1) {vertvisble = true};
                }
                onCurrentIndexChanged:
                {
                    if (vertvis.currentIndex == 0) {vertvisble = false};
                    if (vertvis.currentIndex == 1) {vertvisble = true};
                    changevalues.valuechange()
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
                Component.onCompleted:
                {
                    if (horizvis.currentIndex == 0) {horizvisible = false};
                    if (horizvis.currentIndex  == 1) {horizvisible = true};

                }
                onCurrentIndexChanged:
                {
                    if (horizvis.currentIndex == 0) {horizvisible = false};
                    if (horizvis.currentIndex  == 1) {horizvisible = true};
                   changevalues.valuechange()
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
                Component.onCompleted:
                {
                    if (secvis.currentIndex == 0) {secvisible = false};
                    if (secvis.currentIndex == 1) {secvisible = true};
                }
                onCurrentIndexChanged:
                {
                    if (secvis.currentIndex == 0) {secvisible = false};
                    if (secvis.currentIndex == 1) {secvisible = true};
                    changevalues.valuechange()
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
                onValueChanged: changevalues.valuechange()
            }
            Text
            {
                text: "Warning High:"
                height :30
                width :150
                color: "white"
            }
            TextField {
                id : highwarn
                text: qsTr("20000")
                height :30
                width :150
                inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhSensitiveData | Qt.ImhNoPredictiveText
                onTextChanged : changevalues.valuechange()
            }
            Text
            {
                text: "Warning Low:"
                height :30
                width :150
                color: "white"
            }
            TextField {
                id : lowwarn
                text: qsTr("-20000")
                height :30
                width :150
                inputMethodHints: Qt.ImhNoAutoUppercase | Qt.ImhPreferLowercase | Qt.ImhSensitiveData | Qt.ImhNoPredictiveText
                onTextChanged : changevalues.valuechange()
            }

            Slider {
                id: testvalueslider
                height :30
                width :150
                from: -1000
                value: 0
                stepSize: 1
                to: 10000
                onValueChanged: changevalues.valuechange()
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
            id: switchgauge
            function updatevalues(){
                switch (gaugeselect.currentIndex) {
                case 0:

                  /*
                  gwidth.text = gauge1.width
                  gheight.text = gauge1.height
                  title.text = gauge1.title
                  maxval.text = gauge1.maxvalue
                  if (gauge1.vertgaugevisible == true ) {vertvis.currentIndex = 1 }
                  else {vertvis.currentIndex = 0 }
                      //horizvis
                  //vertvisble  = gauge1.vertgaugevisible
                  // = gauge1.horigaugevisible = horizvisible
                  // = gauge1.secvaluevisible = secvisible
                  lowwarn.text = gauge1.warnvaluelow
                  highwarn.text = gauge1.warnvaluehigh
                  units.text = gauge1.mainunit*/
                    break;

                case 1:


                    break;

                case 2:


                    break;

                case 3:


                    break;

                case 4:


                    break;

                case 5:


                    break;

                case 6:



                    break;

                case 7:


                    break;

                case 8:


                    break;

                case 9:


                    break;

                case 10:


                    break;

                case 11:


                    break;

                case 12:


                    break;

                case 13:


                    break;

                case 14:


                    break;

                case 15:


                    break;

                case 16:


                    break;

                case 17:


                    break;

                case 18:


                    break;

                case 19:


                    break;

                }
            }
        }
        Item
        {
            id: changevalues
            function valuechange(){
                switch (gaugeselect.currentIndex) {
                case 0:

                    gauge1.width = gwidth.text
                    gauge1.height = gheight.text
                    gauge1.title = title.text
                    gauge1.maxvalue = maxval.text
                    gauge1.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge1.vertgaugevisible = vertvisble
                    gauge1.horigaugevisible = horizvisible
                    gauge1.secvaluevisible = secvisible
                    gauge1.warnvaluelow = lowwarn.text
                    gauge1.warnvaluehigh = highwarn.text
                    gauge1.mainunit = units.text
                    break;

                case 1:

                    gauge2.width = gwidth.text
                    gauge2.height = gheight.text
                    gauge2.title = title.text
                    gauge2.maxvalue = maxval.text
                    gauge2.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge2.vertgaugevisible = vertvisble
                    gauge2.horigaugevisible = horizvisible
                    gauge2.secvaluevisible = secvisible
                    gauge2.warnvaluelow = lowwarn.text
                    gauge2.warnvaluehigh = highwarn.text
                    gauge2.mainunit = units.text
                    break;

                case 2:

                    gauge3.width = gwidth.text
                    gauge3.height = gheight.text
                    gauge3.title = title.text
                    gauge3.maxvalue = maxval.text
                    gauge3.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge3.vertgaugevisible = vertvisble
                    gauge3.horigaugevisible = horizvisible
                    gauge3.secvaluevisible = secvisible
                    gauge3.warnvaluelow = lowwarn.text
                    gauge3.warnvaluehigh = highwarn.text
                    gauge3.mainunit = units.text
                    break;

                case 3:

                    gauge4.width = gwidth.text
                    gauge4.height = gheight.text
                    gauge4.title = title.text
                    gauge4.maxvalue = maxval.text
                    gauge4.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge4.vertgaugevisible = vertvisble
                    gauge4.horigaugevisible = horizvisible
                    gauge4.secvaluevisible = secvisible
                    gauge4.warnvaluelow = lowwarn.text
                    gauge4.warnvaluehigh = highwarn.text
                    gauge4.mainunit = units.text
                    break;

                case 4:

                    gauge5.width = gwidth.text
                    gauge5.height = gheight.text
                    gauge5.title = title.text
                    gauge5.maxvalue = maxval.text
                    gauge5.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge5.vertgaugevisible = vertvisble
                    gauge5.horigaugevisible = horizvisible
                    gauge5.secvaluevisible = secvisible
                    gauge5.warnvaluelow = lowwarn.text
                    gauge5.warnvaluehigh = highwarn.text
                    gauge5.mainunit = units.text
                    break;

                case 5:

                    gauge6.width = gwidth.text
                    gauge6.height = gheight.text
                    gauge6.title = title.text
                    gauge6.maxvalue = maxval.text
                    gauge6.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge6.vertgaugevisible = vertvisble
                    gauge6.horigaugevisible = horizvisible
                    gauge6.secvaluevisible = secvisible
                    gauge6.warnvaluelow = lowwarn.text
                    gauge6.warnvaluehigh = highwarn.text
                    gauge6.mainunit = units.text
                    break;

                case 6:

                    gauge7.width = gwidth.text
                    gauge7.height = gheight.text
                    gauge7.title = title.text
                    gauge7.maxvalue = maxval.text
                    gauge7.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge7.vertgaugevisible = vertvisble
                    gauge7.horigaugevisible = horizvisible
                    gauge7.secvaluevisible = secvisible
                    gauge7.warnvaluelow = lowwarn.text
                    gauge7.warnvaluehigh = highwarn.text
                    gauge7.mainunit = units.text
                    break;

                case 7:

                    gauge8.width = gwidth.text
                    gauge8.height = gheight.text
                    gauge8.title = title.text
                    gauge8.maxvalue = maxval.text
                    gauge8.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge8.vertgaugevisible = vertvisble
                    gauge8.horigaugevisible = horizvisible
                    gauge8.secvaluevisible = secvisible
                    gauge8.warnvaluelow = lowwarn.text
                    gauge8.warnvaluehigh = highwarn.text
                    gauge8.mainunit = units.text
                    break;

                case 8:

                    gauge9.width = gwidth.text
                    gauge9.height = gheight.text
                    gauge9.title = title.text
                    gauge9.maxvalue = maxval.text
                    gauge9.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge9.vertgaugevisible = vertvisble
                    gauge9.horigaugevisible = horizvisible
                    gauge9.secvaluevisible = secvisible
                    gauge9.warnvaluelow = lowwarn.text
                    gauge9.warnvaluehigh = highwarn.text
                    gauge9.mainunit = units.text
                    break;

                case 9:

                    gauge10.width = gwidth.text
                    gauge10.height = gheight.text
                    gauge10.title = title.text
                    gauge10.maxvalue = maxval.text
                    gauge10.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge10.vertgaugevisible = vertvisble
                    gauge10.horigaugevisible = horizvisible
                    gauge10.secvaluevisible = secvisible
                    gauge10.warnvaluelow = lowwarn.text
                    gauge10.warnvaluehigh = highwarn.text
                    gauge10.mainunit = units.text
                    break;

                case 10:

                    gauge11.width = gwidth.text
                    gauge11.height = gheight.text
                    gauge11.title = title.text
                    gauge11.maxvalue = maxval.text
                    gauge11.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge11.vertgaugevisible = vertvisble
                    gauge11.horigaugevisible = horizvisible
                    gauge11.secvaluevisible = secvisible
                    gauge11.warnvaluelow = lowwarn.text
                    gauge11.warnvaluehigh = highwarn.text
                    gauge11.mainunit = units.text
                    break;

                case 11:

                    gauge12.width = gwidth.text
                    gauge12.height = gheight.text
                    gauge12.title = title.text
                    gauge12.maxvalue = maxval.text
                    gauge12.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge12.vertgaugevisible = vertvisble
                    gauge12.horigaugevisible = horizvisible
                    gauge12.secvaluevisible = secvisible
                    gauge12.warnvaluelow = lowwarn.text
                    gauge12.warnvaluehigh = highwarn.text
                    gauge12.mainunit = units.text
                    break;

                case 12:

                    gauge13.width = gwidth.text
                    gauge13.height = gheight.text
                    gauge13.title = title.text
                    gauge13.maxvalue = maxval.text
                    gauge13.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge13.vertgaugevisible = vertvisble
                    gauge13.horigaugevisible = horizvisible
                    gauge13.secvaluevisible = secvisible
                    gauge13.warnvaluelow = lowwarn.text
                    gauge13.warnvaluehigh = highwarn.text
                    gauge13.mainunit = units.text
                    break;

                case 13:

                    gauge14.width = gwidth.text
                    gauge14.height = gheight.text
                    gauge14.title = title.text
                    gauge14.maxvalue = maxval.text
                    gauge14.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge14.vertgaugevisible = vertvisble
                    gauge14.horigaugevisible = horizvisible
                    gauge14.secvaluevisible = secvisible
                    gauge14.warnvaluelow = lowwarn.text
                    gauge14.warnvaluehigh = highwarn.text
                    gauge14.mainunit = units.text
                    break;

                case 14:

                    gauge15.width = gwidth.text
                    gauge15.height = gheight.text
                    gauge15.title = title.text
                    gauge15.maxvalue = maxval.text
                    gauge15.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge15.vertgaugevisible = vertvisble
                    gauge15.horigaugevisible = horizvisible
                    gauge15.secvaluevisible = secvisible
                    gauge15.warnvaluelow = lowwarn.text
                    gauge15.warnvaluehigh = highwarn.text
                    gauge15.mainunit = units.text
                    break;

                case 15:

                    gauge16.width = gwidth.text
                    gauge16.height = gheight.text
                    gauge16.title = title.text
                    gauge16.maxvalue = maxval.text
                    gauge16.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge16.vertgaugevisible = vertvisble
                    gauge16.horigaugevisible = horizvisible
                    gauge16.secvaluevisible = secvisible
                    gauge16.warnvaluelow = lowwarn.text
                    gauge16.warnvaluehigh = highwarn.text
                    gauge16.mainunit = units.text
                    break;

                case 16:

                    gauge17.width = gwidth.text
                    gauge17.height = gheight.text
                    gauge17.title = title.text
                    gauge17.maxvalue = maxval.text
                    gauge17.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge17.vertgaugevisible = vertvisble
                    gauge17.horigaugevisible = horizvisible
                    gauge17.secvaluevisible = secvisible
                    gauge17.warnvaluelow = lowwarn.text
                    gauge17.warnvaluehigh = highwarn.text
                    gauge17.mainunit = units.text
                    break;

                case 17:

                    gauge18.width = gwidth.text
                    gauge18.height = gheight.text
                    gauge18.title = title.text
                    gauge18.maxvalue = maxval.text
                    gauge18.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge18.vertgaugevisible = vertvisble
                    gauge18.horigaugevisible = horizvisible
                    gauge18.secvaluevisible = secvisible
                    gauge18.warnvaluelow = lowwarn.text
                    gauge18.warnvaluehigh = highwarn.text
                    gauge18.mainunit = units.text
                    break;

                case 18:

                    gauge19.width = gwidth.text
                    gauge19.height = gheight.text
                    gauge19.title = title.text
                    gauge19.maxvalue = maxval.text
                    gauge19.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge19.vertgaugevisible = vertvisble
                    gauge19.horigaugevisible = horizvisible
                    gauge19.secvaluevisible = secvisible
                    gauge19.warnvaluelow = lowwarn.text
                    gauge19.warnvaluehigh = highwarn.text
                    gauge19.mainunit = units.text
                    break;

                case 19:

                    gauge20.width = gwidth.text
                    gauge20.height = gheight.text
                    gauge20.title = title.text
                    gauge20.maxvalue = maxval.text
                    gauge20.mainvalue = testvalueslider.value.toFixed(decimalplaces.value)
                    gauge20.vertgaugevisible = vertvisble
                    gauge20.horigaugevisible = horizvisible
                    gauge20.secvaluevisible = secvisible
                    gauge20.warnvaluelow = lowwarn.text
                    gauge20.warnvaluehigh = highwarn.text
                    gauge20.mainunit = units.text
                    break;

                }
            }
        }
        Item
        {
            id: container
            function createSquareGauge(setWidth,setHeight,setX,setY,setMaxValue,setDecPlace,setUnit,setID,setVertGaugeVis,setHoriGaugeVis,setSecValueVis,SetValueObject,SetValuePropertyMain,SetValuePropertySec,Setwarnvaluehigh,Setwarnvaluelow) {
                component = Qt.createComponent("SquareGauge.qml");
                if (component.status === Component.Ready){
                    console.log("component ready");
                    finishCreation(setWidth,setHeight,setX,setY,setMaxValue,setDecPlace,setUnit,setID,setVertGaugeVis,setHoriGaugeVis,setSecValueVis,SetValueObject,SetValuePropertyMain,SetValuePropertySec,Setwarnvaluehigh,Setwarnvaluelow);
                }
                else {
                    component.statusChanged.connect(finishCreation);
                    console.log("component not ready!");
                }
            }

            function finishCreation(setWidth,setHeight,setX,setY,setMaxValue,setDecPlace,setUnit,setID,setVertGaugeVis,setHoriGaugeVis,setSecValueVis,SetValueObject,SetValuePropertyMain,SetValuePropertySec,Setwarnvaluehigh,Setwarnvaluelow) {
                if (component.status === Component.Ready) {
                    gaugeselect.currentIndex = gaugenumber-1
                    switch (gaugenumber) {
                    case 1:
                        gauge1 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "warnvaluehigh": Setwarnvaluehigh,
                                                            "warnvaluelow":Setwarnvaluelow,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge1 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;


                    case 2:
                        gauge2 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "warnvaluehigh": Setwarnvaluehigh,
                                                            "warnvaluelow":Setwarnvaluelow,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge2 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 3:
                        gauge3 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "warnvaluehigh": Setwarnvaluehigh,
                                                            "warnvaluelow":Setwarnvaluelow,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge3 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 4:
                        gauge4 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "warnvaluehigh": Setwarnvaluehigh,
                                                            "warnvaluelow":Setwarnvaluelow,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge4 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 5:
                        gauge5 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "warnvaluehigh": Setwarnvaluehigh,
                                                            "warnvaluelow":Setwarnvaluelow,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge5 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 6:
                        gauge6 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "warnvaluehigh": Setwarnvaluehigh,
                                                            "warnvaluelow":Setwarnvaluelow,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge6 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 7:
                        gauge7 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "warnvaluehigh": Setwarnvaluehigh,
                                                            "warnvaluelow":Setwarnvaluelow,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge7 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 8:
                        gauge8 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "warnvaluehigh": Setwarnvaluehigh,
                                                            "warnvaluelow":Setwarnvaluelow,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge8 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 9:
                        gauge9 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                            "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                            "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                            "maxvalue": setMaxValue,
                                                            "mainunit": setUnit,
                                                            "warnvaluehigh": Setwarnvaluehigh,
                                                            "warnvaluelow":Setwarnvaluelow,
                                                            "vertgaugevisible": setVertGaugeVis,
                                                            "horigaugevisible": setHoriGaugeVis,
                                                            "secvaluevisible": setSecValueVis,
                                                            "x": setX, "y": setY});
                        if (gauge9 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 10:
                        gauge10 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge10 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 11:
                        gauge11 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge11 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 12:
                        gauge12 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge12 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 13:
                        gauge13 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge13 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 14:
                        gauge14 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge14 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 15:
                        gauge15 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge15 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 16:
                        gauge16 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge16 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 17:
                        gauge17 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge17 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 18:
                        gauge18 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge18 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 19:
                        gauge19 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge19 === null) {
                            // Error Handling
                            console.log("Error creating object");
                        }
                        break;

                    case 20:
                        gauge20 = component.createObject(appwindow, {"id": setID, "title":setID, "width": setWidth, "height": setHeight,
                                                             "mainvalue": Qt.binding(function(){return SetValueObject[SetValuePropertyMain].toFixed(setDecPlace)}),
                                                             "secvalue": Qt.binding(function(){return SetValueObject[SetValuePropertySec].toFixed(setDecPlace)}),
                                                             "maxvalue": setMaxValue,
                                                             "mainunit": setUnit,
                                                             "warnvaluehigh": Setwarnvaluehigh,
                                                             "warnvaluelow":Setwarnvaluelow,
                                                             "vertgaugevisible": setVertGaugeVis,
                                                             "horigaugevisible": setHoriGaugeVis,
                                                             "secvaluevisible": setSecValueVis,
                                                             "x": setX, "y": setY});
                        if (gauge20 === null) {
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
