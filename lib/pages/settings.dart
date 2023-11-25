import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../constants/section_heading.dart';
import '../constants/settings_menu_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: 'Contact Details',
                  ),
                  const SizedBox(height: 16),
                  TSettingsMenuTile(
                    icon: Iconsax.map,
                    title: 'Country/State',
                    subTitle: 'Tunisia ,Sfax',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Route Mahdia klm 5',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.call,
                    title: 'Phone Number',
                    subTitle: '44 37 44 37',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.aquarius,
                    title: 'BirthDay',
                    subTitle: '17-02-2001',
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TSectionHeading(
                    title: 'App Setting',
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.moon,
                    title: 'Theme Mode',
                    subTitle: 'Choose your theme',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
