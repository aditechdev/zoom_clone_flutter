import 'package:color_log/color_log.dart';
import 'package:omni_jitsi_meet/feature_flag/feature_flag.dart' as g;
import 'package:omni_jitsi_meet/jitsi_meet.dart';
import 'package:zoom_clone_flutter/resources/auth_methods.dart';
// import 'package:omni_jitsi_meet_platform_interface/feature_flag/feature_flag_video_resolution.dart'
// as g;

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();
  void creatMeeting(
      {required String roomName,
      required bool isAudioMuted,
      required bool isVideoMuted}) async {
    try {
      g.FeatureFlag featureFlag = g.FeatureFlag();

      // featureFlag.resolution = FeatureFlagVideoResolution
      //     .MD_RESOLUTION; // Limit video resolution to 360p
      featureFlag.resolution = g.FeatureFlagVideoResolution.MD_RESOLUTION;
      final options = JitsiMeetingOptions(
          room: roomName,
          // Required, spaces will be trimmed
          // serverURL: 'https://someHost.com',
          // Ex: https://meet.jit.si'
          // subject: 'Meeting with thorito',
          userDisplayName: _authMethods.user.displayName,
          userEmail: _authMethods.user.email,
          userAvatarURL: _authMethods.user.photoURL,
          // or .png
          audioMuted: isAudioMuted,
          videoMuted: isVideoMuted,
          // featureFlags: featureFlag as Map<FeatureFlagEnum, Object?>?,
          webOptions: {
            'roomName': 'myroom',
            'width': '100%',
            'height': '100%',
            'enableWelcomePage': false,
            'enableNoAudioDetection': true,
            'enableLobbyChat': false,
            'enableNoisyMicDetection': true,
            'enableClosePage': false,
            'disableRemoveRaisedHandOnFocus': false,
            'disableReactions': true,
            'prejoinPageEnabled': false,
            'hideDisplayName': true,
            'hideConferenceSubject': true,
            'hideConferenceTimer': true,
            'hideParticipantsStats': true,
            'hideLobbyButton': true,
            'disableInviteFunctions': true,
            'chromeExtensionBanner': null,
            'readOnlyName': true,
            'participantsPane': {
              'hideModeratorSettingsTab': true,
              'hideMoreActionsButton': true,
              'hideMuteAllButton': true,
            },
            'hideAddRoomButton': true,
            'breakoutRooms': {
              'hideAddRoomButton': true,
              'hideAutoAssignButton': true,
              'hideJoinRoomButton': true,
              'hideModeratorSettingsTab': true,
              'hideMoreActionsButton': true,
              'hideMuteAllButton': true,
            },
            'lang': 'en',
            'configOverwrite': {
              'doNotFlipLocalVideo': true,
              'prejoinPageEnabled': false,
              'disableDeepLinking': true,
              'enableLobbyChat': false,
              'enableClosePage': false,
              'hideDisplayName': true,
              'hideConferenceTimer': true,
              'hideParticipantsStats': true,
              'hideLobbyButton': true,
              'readOnlyName': true,
              'giphy': {
                'enable': false,
              },
              'participantsPane': {
                'hideModeratorSettingsTab': true,
                'hideMoreActionsButton': true,
                'hideMuteAllButton': true,
              },
              'hideAddRoomButton': true,
              'breakoutRooms': {
                'hideAddRoomButton': true,
                'hideAutoAssignButton': true,
                'hideJoinRoomButton': true,
                'hideModeratorSettingsTab': true,
                'hideMoreActionsButton': true,
                'hideMuteAllButton': true,
              },
              // https://github.com/jitsi/jitsi-meet/blob/master/config.js
              'toolbarButtons': [
                'camera',
                'desktop',
                'download',
                'filmstrip',
                'hangup',
                'highlight',
                'microphone',
                'noisesuppression',
                'select-background',
                'tileview',
                'toggle-camera',
                'whiteboard'
              ]
            },
            'userInfo': {
              'displayName': 'My Name',
              'email': 'myemail@email.com',
            }
          });
      JitsiMeet.joinMeeting(options);
    } catch (e) {
      clog.error(e.toString());
      rethrow;
    }
  }
}
