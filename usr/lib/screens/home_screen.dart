import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paytm'),
        backgroundColor: const Color(0xFF00BAF2),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Balance Card
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF00BAF2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Balance',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        '₹ 500.00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.account_balance_wallet,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
            // Quick Actions
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Quick Actions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              padding: const EdgeInsets.all(16),
              children: const [
                _QuickActionItem(icon: Icons.phone_android, label: 'Recharge'),
                _QuickActionItem(icon: Icons.lightbulb, label: 'Electricity'),
                _QuickActionItem(icon: Icons.wifi, label: 'DTH'),
                _QuickActionItem(icon: Icons.credit_card, label: 'Pay Bills'),
                _QuickActionItem(icon: Icons.send, label: 'Money Transfer'),
                _QuickActionItem(icon: Icons.shopping_cart, label: 'Shopping'),
                _QuickActionItem(icon: Icons.movie, label: 'Movies'),
                _QuickActionItem(icon: Icons.more_horiz, label: 'More'),
              ],
            ),
            // Recent Transactions
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Recent Transactions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: Icon(Icons.arrow_downward, color: Colors.green),
                  title: Text('Received from John Doe'),
                  subtitle: Text('2 hours ago'),
                  trailing: Text('+₹ 100'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickActionItem extends StatelessWidget {
  const _QuickActionItem({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF00BAF2).withOpacity(0.1),
          child: Icon(icon, color: const Color(0xFF00BAF2)),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}