/*
 * Copyright (c) 2012 SSP Europe GmbH, Munich
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */import bb.cascades 1.0
import "../media"
import "../documents"
import bb.system 1.0

/*
 * 
 * Author: Ekkehard Gentz (ekke), Rosenheim, Germany
 * 
 */

NavigationPane {
    id: navigationPane
    attachedObjects: [
        RoomsListPage {
            id: roomsListPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        if (odsdata.showPreviousNode()) {
                            roomsListPage.headerTitle = odsdata.nodeTitleName()
                        } else {
                            navigationPane.pop();
                        }
                    }
                }
            }
        },
        DictaphonePage {
            id: audioRecordPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        // audioRecordPage.closeODSAudio();
                        navigationPane.pop();
                    }
                }
            }
        },
        ImagePreviewPage {
            id: imagePreviewPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        VideoPreviewPage {
            id: videoPreviewPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        VoicePreviewPage {
            id: recordedVoicePreviewPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        DocumentsPreviewPage {
            id: documentsPreviewPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        HtmlPreviewPage {
            id: htmlPreviewPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        BooksPreviewPage {
            id: booksPreviewPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        PdfPreviewPage {
            id: pdfPreviewPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        ZipPreviewPage {
            id: zipPreviewPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        UnknownPreviewPage {
            id: unknownPreviewPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        AddFolderPage {
            id: addFolderPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        // FileInfo
        FileInfoPage {
            id: fileInfoPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        // FolderInfo
        FolderInfoPage {
            id: folderInfoPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        // SubRoomInfo
        SubRoomInfoPage {
            id: subRoomInfoPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        // RoomInfo
        RoomInfoPage {
            id: roomInfoPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        // Create a Link
        CreateLinkPage {
            id: createLinkPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        },
        // Create a Link and share via Mail
        CreateMailLinkPage {
            id: createMailLinkPage
            paneProperties: NavigationPaneProperties {
                backButton: ActionItem {
                    onTriggered: {
                        navigationPane.pop();
                    }
                }
            }
        }
    ]
    // the ROOT Page of this NavigationPane
    Page {
        id: dataspacePage
        actions: [
            ActionItem {
                title: qsTr("Sync with Server") + Retranslate.onLanguageChanged
                imageSource: "asset:///images/ics/1-navigation-refresh81.png"
                ActionBar.placement: ActionBarPlacement.OnBar
                onTriggered: {
                    odsdata.syncWithServer()
                }
            },
            ActionItem {
                title: qsTr("Invite to BBM") + Retranslate.onLanguageChanged
                imageSource: "asset:///images/bbm.png"
                ActionBar.placement: ActionBarPlacement.InOverflow
                onTriggered: {
                    ods.inviteBBM()
                }
            },
            ActionItem {
                title: qsTr("Invite to ODS") + Retranslate.onLanguageChanged
                imageSource: "asset:///images/bbm.png"
                ActionBar.placement: ActionBarPlacement.InOverflow
                onTriggered: {
                    ods.inviteODS()
                }
            },
            ActionItem {
                title: qsTr("Leave Review") + Retranslate.onLanguageChanged
                imageSource: "asset:///images/online81.png"
                ActionBar.placement: ActionBarPlacement.InOverflow
                onTriggered: {
                    ods.leaveReview()
                }
            }
            ,
            ActionItem {
                id: bbmChannelAction
                title: "BBM Channel"
                imageSource: "asset:///images/bbm.png"
                attachedObjects: [
                    Invocation {
                        id: invokeBBMChannel
                        query {
                            invokeTargetId: "sys.bbm.channels.card.previewer"
                            invokeActionId: "bb.action.OPENBBMCHANNEL"
                            uri: "bbmc:C002E250A"
                        }
                    }
                ]
                onTriggered: {
                    if (ods.isWorkPerimeter()) {
                        // showDialog(qsTr("OpenDataSpace BBM Channel"), qsTr("You cannot open BBM Channel directly from Work Perimeter.\nPlease switch to Private Perimeter and search for ODS BBM Channel.\nType 'OpenDataSpace' to search or the BBM Channel Pin: 'C00165746'"))
                    } else {
                        invokeBBMChannel.trigger("bb.action.OPENBBMCHANNEL")
                    }
                }
            }
        ]
        titleBar: TitleBar {
            id: theBar
            title: qsTr("DataRoom")
            visibility: ChromeVisibility.Visible
        }
        content: Container {
            id: listContainer
            layout: DockLayout {
            }
            // attached objects
            attachedObjects: [
                GroupDataModel {
                    id: roomGroupDataModel
                    objectName: "roomGroupDataModel"
                    sortingKeys: [
                        "name"
                    ]
                    onItemAdded: {
                    }
                    onItemRemoved: {
                    }
                    onItemUpdated: {
                    }
                }
            ]
            // V I E W
            ListView {
                id: dataspaceList
                objectName: "dataspaceList"
                property variant selectionColor: rootNavigationPane.selectionColor
                property bool isPassport: ods.isPassport()
                dataModel: roomGroupDataModel
                // its the root, only single selction makes sense
                // TODO selectionMode: SelectionMode.Single
                // define the appearance
                listItemComponents: [
                    ListItemComponent {
                        type: "roomsItem"
                        RoomsItem {
                            id: roomsItem
                            backgroundVisible: roomsItem.ListItem.view.hasBackgroundImage()
                            selectionColor: roomsItem.ListItem.view.selectionColor
                            contextActions: [
                                ActionSet {
                                    title: ListItemData.name
                                    subtitle: qsTr("ODS Data Room") + Retranslate.onLanguageChanged
                                    ActionItem {
                                        title: qsTr("Info") + Retranslate.onLanguageChanged
                                        imageSource: "asset:///images/ics/2-action-about81.png"
                                        onTriggered: {
                                            // we're only transmitting the id to avoid complex data
                                            // (ODSFile* in this case)
                                            // to be transported between sgnals, slots, pages, c++
                                            // current level of files tree is cached at c++ so we get fast access
                                            roomsItem.ListItem.view.pushRoomInfoPage(ListItemData.id)
                                        }
                                    }
                                }
                            ]
                        }
                    },
                    ListItemComponent {
                        type: "header"
                        Container {
                            // nothing yet
                        }
                    }
                ]
                function itemType(data, indexPath) {
                    if (data.displayType == "R") {
                        return "roomsItem";
                    } else {
                        return "header";
                    }
                }
                onTriggered: {
                    if (selected) {
                        roomsListPage.headerTitle = roomGroupDataModel.data(indexPath).name
                        // fill the model with the nodes
                        odsdata.resetLevel();
                        odsdata.showNextNode(roomGroupDataModel.data(indexPath).nodes, roomGroupDataModel.data(indexPath).name)
                        navigationPane.push(roomsListPage)
                        dataspaceList.select(indexPath,true);
                    }
                }
                // ListView functions
                function pushRoomInfoPage(id) {
                    openRoomInfoPage(id)
                }
                function hasBackgroundImage() {
                    return Application.themeSupport.theme.colorTheme.style == VisualStyle.Bright && odsdata.listBackgroundForBright()
                }
                onCreationCompleted: {
                }
            } // end ListView
        } // end Container
    } // end page
    // SLOTS
    function openRecordAudioPage() {
        console.debug("got signal to open Audiorecorder")
        console.debug("push Audiorecorder")
        navigationPane.push(audioRecordPage)
        console.debug("opened Audiorecorder")
    }
    function previewImage(path) {
        console.debug("got signal to preview image: " + path)
        imagePreviewPage.previewPath = path;
        imagePreviewPage.recalculateValues(path);
        navigationPane.push(imagePreviewPage)
    }
    function previewVideo(path) {
        console.debug("got signal to preview video: " + path)
        videoPreviewPage.previewPath = path;
        videoPreviewPage.recalculateValues(path);
        navigationPane.push(videoPreviewPage)
    }
    function previewRecordedVoice(path) {
        console.debug("got signal to preview recordedVoice: " + path)
        recordedVoicePreviewPage.previewPath = path;
        recordedVoicePreviewPage.recalculateValues(path);
        navigationPane.push(recordedVoicePreviewPage)
    }
    function previewDocuments(path) {
        console.debug("got signal to preview documents: " + path)
        documentsPreviewPage.previewPath = path;
        documentsPreviewPage.recalculateValues(path);
        navigationPane.push(documentsPreviewPage)
    }
    function previewHtml(path) {
        console.debug("got signal to preview HTML: " + path)
        htmlPreviewPage.previewPath = path;
        htmlPreviewPage.recalculateValues(path);
        navigationPane.push(htmlPreviewPage)
    }
    function previewBooks(path) {
        console.debug("got signal to preview books: " + path)
        booksPreviewPage.previewPath = path;
        booksPreviewPage.recalculateValues(path);
        navigationPane.push(booksPreviewPage)
    }
    function previewPdf(path) {
        console.debug("got signal to preview PDF: " + path)
        pdfPreviewPage.previewPath = path;
        pdfPreviewPage.recalculateValues(path);
        navigationPane.push(pdfPreviewPage)
    }
    function previewZip(path) {
        console.debug("got signal to preview video: " + path)
        zipPreviewPage.previewPath = path;
        zipPreviewPage.recalculateValues(path);
        navigationPane.push(zipPreviewPage)
    }
    function previewUnknown(path) {
        console.debug("got signal to preview video: " + path)
        unknownPreviewPage.previewPath = path;
        unknownPreviewPage.recalculateValues(path);
        navigationPane.push(unknownPreviewPage)
    }
    function onOpenAddFolder() {
        console.debug("got signal to open AddFolderPage")
        addFolderPage.refreshData()
        navigationPane.push(addFolderPage)
    }
    function folderAdded() {
        navigationPane.pop();
    }
    function openFileInfoPage(id) {
        console.debug("got signal to open FileInfoPage")
        fileInfoPage.refreshData(id)
        navigationPane.push(fileInfoPage)
    }
    function openFolderInfoPage(name) {
        console.debug("got signal to open FolderInfoPage")
        folderInfoPage.refreshData(name)
        navigationPane.push(folderInfoPage)
    }
    function openSubRoomInfoPage(id) {
        console.debug("got signal to open SubRoomInfoPage")
        subRoomInfoPage.refreshData(id)
        navigationPane.push(subRoomInfoPage)
    }
    function openRoomInfoPage(id) {
        console.debug("want to open RoomInfoPage for id: " + id)
        roomInfoPage.refreshData(id)
        navigationPane.push(roomInfoPage)
    }
    function openCreateLinkPage(id, name) {
        console.debug("want to open openCreateLinkPage for id: " + id + " name: " + name)
        createLinkPage.refreshData(id, name)
        navigationPane.push(createLinkPage)
    }
    function openCreateMailLinkPage(id, name) {
        console.debug("want to open openCreateMailLinkPage for id: " + id + " name: " + name)
        createMailLinkPage.refreshData(id, name)
        navigationPane.push(createMailLinkPage)
    }
    onTopChanged: {
        if (navigationPane.top == dataspacePage) {
            odsdata.resetLevel();
            dataspaceList.clearSelection()
        }
        if(navigationPane.top == roomsListPage){
            roomsListPage.deselectAll()
        }
    }
    onCreationCompleted: {
        //-- connect the RoomsList openCamera SIGNAL to the handler SLOT
        // same for Roomslist
        //cameraCapturePage.previewImage.connect(previewImage)
        roomsListPage.previewImage.connect(previewImage)
        // same for Rooms List
        //videoCapturePage.previewVideo.connect(previewVideo)
        roomsListPage.previewVideo.connect(previewVideo)
        // some more previews:
        roomsListPage.previewDocuments.connect(previewDocuments)
        roomsListPage.previewHtml.connect(previewHtml)
        roomsListPage.previewBooks.connect(previewBooks)
        roomsListPage.previewPdf.connect(previewPdf)
        roomsListPage.previewZip.connect(previewZip)
        roomsListPage.previewUnknown.connect(previewUnknown)
        roomsListPage.openAddFolder.connect(onOpenAddFolder)
        roomsListPage.openFileInfoPage.connect(openFileInfoPage)
        roomsListPage.openFolderInfoPage.connect(openFolderInfoPage)
        roomsListPage.openSubRoomInfoPage.connect(openSubRoomInfoPage)
        roomsListPage.openCreateLinkPage.connect(openCreateLinkPage)
        roomsListPage.openCreateMailLinkPage.connect(openCreateMailLinkPage)
        addFolderPage.onFolderAdded.connect(folderAdded)
        //-- connect the RoomsList recordAudio SIGNAL to the handler SLOT
        roomsListPage.recordAudio.connect(openRecordAudioPage)
        console.debug("NavigationPane DtaSpaces created ")
    }
}// end navigationpane
