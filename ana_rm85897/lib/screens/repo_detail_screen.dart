import 'package:flutter/material.dart';
import 'package:githubrepo/components/all.dart';
import 'package:githubrepo/constants/spacings.dart';
import 'package:githubrepo/constants/typography.dart';
import 'package:githubrepo/mocks/repositories_mock.dart';
import 'package:githubrepo/models/repository.dart';
import 'package:githubrepo/utils/extensions/theme_data_extensions.dart';

class RepoDetailScreen extends StatefulWidget {
  const RepoDetailScreen({super.key});

  @override
  State<RepoDetailScreen> createState() => _RepoDetailScreenState();
}

class _RepoDetailScreenState extends State<RepoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Repository repository = kRepositoriesMock.first;
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Descrição',),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(Spacings.m),
            width: MediaQuery.of(context).size.width,
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAvatar(
                avatarUrl: repository.owner?.avatar,
                radius: Spacings.xs * 2,
              ),
              CustomText(
                text: 'Repositorio',
                color: context.colors.kTextSecondaryColor, 
                style: TypographyType.label
                ),
                CustomText(
                  text: repository.name ?? '-', 
                  style: TypographyType.header
                  ),
                  CustomText(
                    text: 'Dono do Repositorio', 
                    color: context.colors.kTextSecondaryColor,
                    style: TypographyType.label
                    ),
                    CustomText(
                      text: repository.owner?.login ?? '-', 
                      style: TypographyType.title
                      )
            ]),
          ),
        ),
    );
  }
}