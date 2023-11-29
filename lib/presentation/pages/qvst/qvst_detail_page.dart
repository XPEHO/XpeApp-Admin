import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:xpeapp_admin/data/entities/qvst/qvst_question_entity.dart';
import 'package:xpeapp_admin/providers.dart';

class QvstDetailPage extends ConsumerWidget {
  final String id;

  const QvstDetailPage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resumeProvider = ref.watch(
      qvstQuestionProvider(id),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détail du QVST'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(qvstServiceProvider).deleteQvst(id);
              // ignore: unused_result
              ref.refresh(qvstQuestionsListProvider);
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.delete),
          )
        ],
      ),
      body: resumeProvider.when(
        data: (questionEntity) {
          return _buildPrimaryQuestion(
            context: context,
            questionEntity: questionEntity,
          );
        },
        error: (error, stackTrace) {
          return Text(
            error.toString(),
            style: const TextStyle(
              color: Colors.red,
            ),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Widget _buildPrimaryQuestion({
    required BuildContext context,
    required QvstQuestionEntity questionEntity,
  }) {
    return Column(
      children: [
        Text(
          questionEntity.question,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          "Thème : ${questionEntity.theme}",
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: questionEntity.answers.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  color: getColorInFunctionOfValue(
                    questionEntity.answers[index].value,
                  ),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          questionEntity.answers[index].answer,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: Text(
                        questionEntity.answers[index].value,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  getColorInFunctionOfValue(String value) {
    switch (value) {
      case '1':
        return Colors.red;
      case '2':
        return Colors.orange;
      case '3':
        return Colors.yellow;
      case '4':
        return Colors.green;
      case '5':
        return Colors.blue;
      default:
        return Colors.white;
    }
  }
}
