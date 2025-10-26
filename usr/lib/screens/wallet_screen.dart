import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
        backgroundColor: const Color(0xFF00BAF2),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Wallet Balance
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF00BAF2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallet Balance',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '₹ 500.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Add Money',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Quick Actions
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _WalletAction(
                  icon: Icons.send,
                  label: 'Send Money',
                  onTap: () {},
                ),
                _WalletAction(
                  icon: Icons.request_page,
                  label: 'Request Money',
                  onTap: () {},
                ),
                _WalletAction(
                  icon: Icons.qr_code,
                  label: 'Scan & Pay',
                  onTap: () {},
                ),
                _WalletAction(
                  icon: Icons.history,
                  label: 'History',
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Transaction History
            const Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                final transactions = [
                  {'title': 'Sent to Jane Smith', 'amount': '-₹ 50', 'type': 'debit'},
                  {'title': 'Received from Bob', 'amount': '+₹ 100', 'type': 'credit'},
                  {'title': 'Mobile Recharge', 'amount': '-₹ 20', 'type': 'debit'},
                  {'title': 'Cashback', 'amount': '+₹ 5', 'type': 'credit'},
                  {'title': 'Electricity Bill', 'amount': '-₹ 150', 'type': 'debit'},
                ];
                final transaction = transactions[index];
                return ListTile(
                  leading: Icon(
                    transaction['type'] == 'credit' ? Icons.arrow_downward : Icons.arrow_upward,
                    color: transaction['type'] == 'credit' ? Colors.green : Colors.red,
                  ),
                  title: Text(transaction['title']!),
                  subtitle: Text('Today'),
                  trailing: Text(
                    transaction['amount']!,
                    style: TextStyle(
                      color: transaction['type'] == 'credit' ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _WalletAction extends StatelessWidget {
  const _WalletAction({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xFF00BAF2).withOpacity(0.1),
          child: IconButton(
            icon: Icon(icon, color: const Color(0xFF00BAF2)),
            onPressed: onTap,
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}