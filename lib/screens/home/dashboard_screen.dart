import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dashboard_provider.dart';
import '../../theme/app_theme.dart';
import 'dashboard_home_tab.dart';
import 'dashboard_library_tab.dart';
import 'dashboard_profile_tab.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  static const routeName = '/dashboard';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int currentIndex = ref.watch(dashboardIndexProvider);

    const pages = [
      DashboardHomeTab(),
      DashboardLibraryTab(),
      DashboardProfileTab(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: IndexedStack(index: currentIndex, children: pages),
      ),
      bottomNavigationBar: _buildGradientBottomNav(ref, currentIndex),
    );
  }

  Widget _buildGradientBottomNav(WidgetRef ref, int currentIndex) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        ref.read(dashboardIndexProvider.notifier).state = index;
      },
      backgroundColor: AppColors.card,
      elevation: 8,
      selectedItemColor: AppColors.orange,
      unselectedItemColor: AppColors.textSecondary,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_outlined),
          activeIcon: Icon(Icons.book),
          label: 'Library',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
