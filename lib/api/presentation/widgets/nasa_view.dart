import 'package:api_project/api/domain/entity.dart';
import 'package:flutter/material.dart';

class NasaView extends StatelessWidget {
  final NasaEntity entity;
  const NasaView({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            entity.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Image.network(
            entity.hdUrl,
            height: 200,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          const SizedBox(height: 5),
          Text(
            entity.date,
            style: const TextStyle(fontSize: 12),
          ),
          const SizedBox(height: 10),
          Text(
            entity.explanation,
            maxLines: 15,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
