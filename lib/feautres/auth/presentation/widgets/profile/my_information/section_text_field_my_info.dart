import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/feautres/auth/presentation/bloc/auth_listen_bloc/auth_listen_bloc.dart';
import 'package:store_app/feautres/auth/presentation/widgets/profile/my_information/custom_text_field_my_info.dart';
import 'package:store_app/generated/l10n.dart';

class SectionTextFieldMyInfo extends StatelessWidget {
  const SectionTextFieldMyInfo({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // !========= fullname =============
        CustomTextFieldMyInfo(
          onChanged: (fullName) {},
          titleLable: S.of(context).fullName,
        ),
        // !========= email =============
        BlocBuilder<AuthListenBloc, AuthListenState>(
          builder: (context, state) {
            String emailAddress = '';
            if (state.status == AuthStatus.authenticated) {
              emailAddress = state.userEntity!.email;
            }
            return CustomTextFieldMyInfo(
              controller: TextEditingController(text: emailAddress),
              onChanged: (emailAddress) {},
              titleLable: S.of(context).emailAddress,
            );
          },
        ),
        // !========= address =============
        CustomTextFieldMyInfo(
          onChanged: (address) {},
          titleLable: S.of(context).address,
        ),
        // !========= country =============
        CustomTextFieldMyInfo(
          onChanged: (country) {},
          titleLable: S.of(context).country,
        ),
        // !========= city =============
        CustomTextFieldMyInfo(
          onChanged: (city) {},
          titleLable: S.of(context).city,
        ),
        // !========= zipCode =============
        CustomTextFieldMyInfo(
          onChanged: (zipCode) {},
          titleLable: S.of(context).zipCode,
        ),
      ],
    );
  }
}
