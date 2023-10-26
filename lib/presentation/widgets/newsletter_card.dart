import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:xpeapp_admin/data/entities/newsletter_entity.dart';

class NewsletterCard extends StatelessWidget {
  final NewsletterEntity newsletter;

  const NewsletterCard({
    super.key,
    required this.newsletter,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          '/newsletter/detail',
          arguments: newsletter.id,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              tileColor: Colors.white,
              style: ListTileStyle.list,
              title: Text(
                'Newsletter du ${DateFormat('dd/MM/yyyy').format(newsletter.date.toDate())}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(
                Icons.newspaper,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
