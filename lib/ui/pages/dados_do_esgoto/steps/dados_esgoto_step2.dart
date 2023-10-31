import 'package:auto_depura/core/bloc/global_bloc.dart';
import 'package:auto_depura/core/extensions/double_to_input_text.dart';
import 'package:auto_depura/core/extensions/string_to_double.dart';
import 'package:auto_depura/core/services/service_locator.dart';
import 'package:auto_depura/ui/pages/widgets/custom_card.dart';
import 'package:auto_depura/ui/widgets/custom_input.dart';
import 'package:flutter/material.dart';

class DadosEsgotoStep2 extends StatefulWidget {
  final Function(CustomCardAction action) onPressed;
  const DadosEsgotoStep2({super.key, required this.onPressed});

  @override
  State<DadosEsgotoStep2> createState() => _DadosEsgotoStep2State();
}

class _DadosEsgotoStep2State extends State<DadosEsgotoStep2> {
  late final TextEditingController controller1;
  late final TextEditingController controller2;
  late final TextEditingController controller3;
  late final TextEditingController controller4;
  final GlobalBloc bloc = serviceLocator<GlobalBloc>();

  @override
  void initState() {
    controller1 = TextEditingController(text: bloc.qe.toText);
    controller2 = TextEditingController(text: bloc.odr.toText);
    controller3 = TextEditingController(text: bloc.dbor.toText);
    controller4 = TextEditingController(text: bloc.odmin.toText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      title: "Dados do Esgoto",
      onPressed: (action) {
        widget.onPressed(action);
        GlobalBloc bloc = serviceLocator<GlobalBloc>();
        bloc.qe = controller1.text.asDouble;
        bloc.odr = controller2.text.asDouble;
        bloc.dbor = controller3.text.asDouble;
        bloc.odmin = controller4.text.asDouble;
      },
      children: [
        CustomInput(
          controller: controller1,
          title: "DBOe",
          hintText: "mg/L",
        ),
        CustomInput(
          controller: controller2,
          title: "Eficiência",
          hintText: "%",
        ),

        
        CustomInput(
          controller: controller3,
          title: "DBOr",
          hintText: "mg/L",
        ),
        CustomInput(
          controller: controller4,
          title: "ODmin",
          hintText: "mg/L",
        ),
      ],
    );
            // const SizedBox(height: 20),
            // CustomCard(
            //   title: "Clique para ajuda em ODr",
            //   singleButtonText: "Ajuda",
            //   onPressed: (action) {
            //     showDialog(
            //       context: context,
            //       builder: (context) => Dialog(
            //         child: Container(
            //           padding: const EdgeInsets.all(AppPaddings.defaultPadding),
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "Title",
            //                 style: AppTextStyles.h1.copyWith(
            //                   color: Colors.black,
            //                 ),
            //               ),
            //               const Divider(
            //                 thickness: 2,
            //                 color: Colors.grey,
            //               ),
            //               RichText(
            //                 text: TextSpan(
            //                   style: AppTextStyles.h3,
            //                   text:
            //                       "Não sendo possível coloetar amostras, sugere-se para esgoto doméstico:\n\n",
            //                   children: [
            //                     TextSpan(
            //                       text: "Esgoto Bruto:\n",
            //                       style: AppTextStyles.h3.copyWith(
            //                         fontWeight: FontWeight.bold,
            //                       ),
            //                     ),
            //                     const TextSpan(text: "- ODe = 0 mg/L"),
            //                     const TextSpan(text: "\nEsgoto Tratado:")
            //                   ],
            //                 ),
            //               )
            //             ],
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            //   children: const [],
            // ),
  }
}
