import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/components/mixins/full_page_loader_mixin.dart';
import '../../../controllers/auth_controller.dart';
import '../../../sessions/user_session.dart';
import '../../../models/settings_item.dart';
import '../../../pages/settings_page/_components/settings_row.dart';
import '../../../services/firebase/firebase_sync_service.dart';
import '../../../services/supabase/supabase_sync_service.dart';
import '../../../services/supabase/supabase_user_service.dart';
import '../../../utils/components/dialogs/confirm_dialog.dart';

class DataPrivacyPage extends StatelessWidget with FullPageLoaderMixin {
  DataPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(0.0),
          child: Column(
            spacing: 20,
            children: [
              SizedBox(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(100),
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.chevron_left, size: 27,)
                    ),
                    SizedBox(width: 15,),
                    Text("Data Privacy", style: TextStyle(
                      fontSize: 16
                    ),)
                  ],
                ),
              ),
              SizedBox(),
              SettingsRow(
                giveHorizontalMargin: true,
                setting: SettingsItem(
                  Icon(Symbols.privacy_tip_rounded, color: Colors.black, size: 22,),
                  "Delete Account Data",
                  "Delete all of your account data",
                  isSwitch: false,
                  () async {
                    final shouldDelete = await showDialog<bool>(
                      context: context,
                      builder: (context) => const ConfirmDeleteDialog(
                        title: "Delete Data",
                        content: "This action will delete all data associated with your account. This action cannot be undone",
                      ),
                    );
        
                    if (shouldDelete == true) {
                      if(context.mounted) {
                        showFullPageLoader(context);
                      }
                      await SupabaseSyncService().deleteUserDataFromSupabase();
                      await FirebaseSyncService().deleteAccountData();
        
                      if(context.mounted) {
                        hideFullPageLoader();
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully deleted your data")));
                      }
                    }
                  }
                ),
              ),
              SettingsRow(
                giveHorizontalMargin: true,
                setting: SettingsItem(
                  Icon(Symbols.privacy_tip_rounded, color: Colors.black, size: 22,),
                  "Delete Account",
                  "Delete your account permanently",
                  isSwitch: false,
                  () async {
                    final shouldDelete = await showDialog<bool>(
                      context: context,
                      builder: (context) => const ConfirmDeleteDialog(
                        title: "Delete Account",
                        content: "This action will delete your account and all data associated with it. This action cannot be undone",
                      ),
                    );
        
                    if (shouldDelete == true) {
                      if(context.mounted) {
                        showFullPageLoader(context);
                      }
                      // Data
                      await SupabaseSyncService().deleteUserDataFromSupabase();
                      await FirebaseSyncService().deleteAccountData();
        
                      // Account
                      await SupabaseUserService().deleteUser();
                      await FirebaseSyncService().deleteFirebaseUser();
        
                      // Sign out
                      await AuthController().signOut();
        
                      // Clear Sessional Account Data
                      await UserSession().clearSession();
        
                      if(context.mounted) {
                        hideFullPageLoader();
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully deleted your account and data")));
                      }
                    }
                  }
                ),
              ),
              SettingsRow(
                giveHorizontalMargin: true,
                setting: SettingsItem(
                  Icon(Symbols.privacy_tip_rounded, color: Colors.black, size: 22,),
                  "Terms And Conditions",
                  "",
                  isSwitch: false,
                  () async {
                    final url = Uri.parse("https://ovlotracker.com/terms-conditions/");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url, mode: LaunchMode.inAppBrowserView);
                    } else {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Some Error Occurred!")));
                      }
                    }
                  },
                ),
              ),
              SettingsRow(
                giveHorizontalMargin: true,
                setting: SettingsItem(
                  Icon(Symbols.privacy_tip_rounded, color: Colors.black, size: 22,),
                  "Privacy Policy",
                  "",
                  isSwitch: false,
                  () async {
                    final url = Uri.parse("https://ovlotracker.com/privacy-policy/");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url, mode: LaunchMode.inAppBrowserView);
                    } else {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Some Error Occurred!")));
                      }
                    }
                  },
                ),
              ),
              SettingsRow(
                giveHorizontalMargin: true,
                setting: SettingsItem(
                  Icon(Symbols.privacy_tip_rounded, color: Colors.black, size: 22,),
                  "Support",
                  "",
                  isSwitch: false,
                  () async {
                    final url = Uri.parse("https://ovlotracker.com/support-center/");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url, mode: LaunchMode.inAppBrowserView);
                    } else {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Some Error Occurred!")));
                      }
                    }
                  },
                ),
              ),
              SettingsRow(
                giveHorizontalMargin: true,
                setting: SettingsItem(
                  Icon(Symbols.privacy_tip_rounded, color: Colors.black, size: 22,),
                  "Disclaimer",
                  "",
                  isSwitch: false,
                  () async {
                    final url = Uri.parse("https://ovlotracker.com/disclaimer/");
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url, mode: LaunchMode.inAppBrowserView);
                    } else {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Some Error Occurred!")));
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
