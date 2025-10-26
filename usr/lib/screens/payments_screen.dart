import 'package:flutter/material.dart';

class PaymentsScreen extends StatelessWidget {
  const PaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pay'),
        backgroundColor: const Color(0xFF00BAF2),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _PaymentOption(
            icon: Icons.phone_android,
            title: 'Mobile Recharge',
            subtitle: 'Prepaid & Postpaid',
            onTap: () {},
          ),
          _PaymentOption(
            icon: Icons.lightbulb,
            title: 'Electricity Bill',
            subtitle: 'Pay your electricity bills',
            onTap: () {},
          ),
          _PaymentOption(
            icon: Icons.wifi,
            title: 'DTH Recharge',
            subtitle: 'TV & Internet',
            onTap: () {},
          ),
          _PaymentOption(
            icon: Icons.credit_card,
            title: 'Credit Card Bill',
            subtitle: 'Pay credit card dues',
            onTap: () {},
          ),
          _PaymentOption(
            icon: Icons.gas_meter,
            title: 'Gas Bill',
            subtitle: 'Piped gas & cylinder',
            onTap: () {},
          ),
          _PaymentOption(
            icon: Icons.water_drop,
            title: 'Water Bill',
            subtitle: 'Municipal water charges',
            onTap: () {},
          ),
          _PaymentOption(
            icon: Icons.school,
            title: 'Education Fee',
            subtitle: 'School & college fees',
            onTap: () {},
          ),
          _PaymentOption(
            icon: Icons.insurance,
            title: 'Insurance',
            subtitle: 'Life & health insurance',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _PaymentOption extends StatelessWidget {
  const _PaymentOption({
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
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}