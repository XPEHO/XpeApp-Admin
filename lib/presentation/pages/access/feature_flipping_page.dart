import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpeapp_admin/data/entities/feature_flipping_entity.dart';
import 'package:xpeapp_admin/presentation/pages/access/widgets/feature_flipping_switch_widget.dart';
import 'package:xpeapp_admin/providers.dart';

class FeatureFlippingPage extends ConsumerWidget {
  const FeatureFlippingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feature Flipping'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          subtitleWidget(
            'Activez ou désactivez les fonctionnalités de l\'application mobile',
          ),
          const Divider(),
          Expanded(
            child: StreamBuilder(
              stream: ref
                  .watch(cloudFirestoreProvider)
                  .collection('featureFlipping')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                List<FeatureFlippingEntity> features = [];
                snapshot.data?.docs.forEach(
                  (element) {
                    features.add(
                      FeatureFlippingEntity.fromJson(
                        element.data()..['idFeature'] = element.id,
                      ),
                    );
                  },
                );

                return Table(
                  children: [
                    const TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Fonctionnalité',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Text(
                            'UAT',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          child: Text(
                            'PROD',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ...features.map(
                      (e) => TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text(e.name),
                              subtitle: Text(e.description),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: FeatureFlippingSwitchWidget(
                              featureId: e.idFeature,
                              type: FeatureFlippingType.uat,
                              featureEnabled: e.uatEnabled,
                              isActivated: true,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: FeatureFlippingSwitchWidget(
                              featureId: e.idFeature,
                              type: FeatureFlippingType.prod,
                              featureEnabled: e.prodEnabled,
                              isActivated: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget subtitleWidget(String title) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: 8,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
