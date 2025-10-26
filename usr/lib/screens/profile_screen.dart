import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFF00BAF2),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Header
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF00BAF2),
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'John Doe',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              '+91 9876543210',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            // Menu Items
            _ProfileMenuItem(
              icon: Icons.account_balance_wallet,
              title: 'My Wallet',
              subtitle: '₹ 500.00',
              onTap: () {},
            ),
            _ProfileMenuItem(
              icon: Icons.history,
              title: 'Transaction History',
              subtitle: 'View all transactions',
              onTap: () {},
            ),
            _ProfileMenuItem(
              icon: Icons.card_giftcard,
              title: 'Rewards',
              subtitle: 'Earn & redeem points',
              onTap: () {},
            ),
            _ProfileMenuItem(
              icon: Icons.help,
              title: 'Help & Support',
              subtitle: 'Get help with your queries',
              onTap: () {},
            ),
            _ProfileMenuItem(
              icon: Icons.settings,
              title: 'Settings',
              subtitle: 'App preferences',
              onTap: () {},
            ),
            _ProfileMenuItem(
              icon: Icons.logout,
              title: 'Logout',
              subtitle: '',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileMenuItem extends StatelessWidget {
  const _ProfileMenuItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xFF00BAF2).withOpacity(0.1),
          child: Icon(icon, color: const Color(0xFF00BAF2)),
        ),
        title: Text(title),
        subtitle: subtitle.isNotEmpty ? Text(subtitle) : null,
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}