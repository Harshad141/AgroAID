import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatMainWidget extends StatefulWidget {
  const ChatMainWidget({Key key}) : super(key: key);

  @override
  _ChatMainWidgetState createState() => _ChatMainWidgetState();
}

class _ChatMainWidgetState extends State<ChatMainWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UserRecord>(
      stream: UserRecord.getDocument(currentUserReference),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final chatMainUserRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF72C4DA),
            automaticallyImplyLeading: false,
            title: Text(
              FFLocalizations.of(context).getText(
                'iejhld1g' /* Chats */,
              ),
              style: FlutterFlowTheme.of(context).title1,
            ),
            actions: [],
            centerTitle: false,
            elevation: 4,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              context.pushNamed(
                'myfriends',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.bottomToTop,
                    duration: Duration(milliseconds: 250),
                  ),
                },
              );
            },
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            elevation: 8,
            child: Icon(
              Icons.add_comment_rounded,
              color: FlutterFlowTheme.of(context).tertiaryColor,
              size: 30,
            ),
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Color(0xFF3F3F3F),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                      child: StreamBuilder<List<ChatsRecord>>(
                        stream: queryChatsRecord(),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: CircularProgressIndicator(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                              ),
                            );
                          }
                          List<ChatsRecord> listViewChatsRecordList =
                              snapshot.data;
                          if (listViewChatsRecordList.isEmpty) {
                            return Image.asset(
                              'assets/images/Gnanesh_Logo.png',
                              width: MediaQuery.of(context).size.width,
                              height: 450,
                            );
                          }
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewChatsRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewChatsRecord =
                                  listViewChatsRecordList[listViewIndex];
                              return StreamBuilder<FFChatInfo>(
                                stream: FFChatManager.instance.getChatInfo(
                                    chatRecord: listViewChatsRecord),
                                builder: (context, snapshot) {
                                  final chatInfo = snapshot.data ??
                                      FFChatInfo(listViewChatsRecord);
                                  return FFChatPreview(
                                    onTap: chatInfo != null
                                        ? () => context.pushNamed(
                                              'chatDetails',
                                              queryParams: {
                                                'chatUser': serializeParam(
                                                    chatInfo.otherUsers
                                                                .length ==
                                                            1
                                                        ? chatInfo
                                                            .otherUsersList
                                                            .first
                                                        : null,
                                                    ParamType.Document),
                                                'chatRef': serializeParam(
                                                    chatInfo
                                                        .chatRecord.reference,
                                                    ParamType
                                                        .DocumentReference),
                                              },
                                              extra: <String, dynamic>{
                                                'chatUser': chatInfo.otherUsers
                                                            .length ==
                                                        1
                                                    ? chatInfo
                                                        .otherUsersList.first
                                                    : null,
                                              },
                                            )
                                        : null,
                                    lastChatText: chatInfo.chatPreviewMessage(),
                                    lastChatTime:
                                        listViewChatsRecord.lastMessageTime,
                                    seen: listViewChatsRecord.lastMessageSeenBy
                                        .contains(currentUserReference),
                                    title: chatInfo.chatPreviewTitle(),
                                    userProfilePic: chatInfo.chatPreviewPic(),
                                    color: FlutterFlowTheme.of(context).dark900,
                                    unreadColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    titleTextStyle: GoogleFonts.getFont(
                                      'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .tertiaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    dateTextStyle: GoogleFonts.getFont(
                                      'Lexend Deca',
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                    previewTextStyle: GoogleFonts.getFont(
                                      'Lexend Deca',
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            8, 3, 8, 3),
                                    borderRadius: BorderRadius.circular(0),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
