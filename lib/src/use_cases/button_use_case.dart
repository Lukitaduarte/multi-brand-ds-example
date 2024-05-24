import 'package:flutter/material.dart';
import 'package:multi_brand_ds_example/src/design_system/components/button/motriz_button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Default',
  type: MotrizButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=86-1012&mode=dev',
)
Widget buildMotrizButtonUseCase(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: MotrizButton(
      text: context.knobs.string(
        label: 'Content',
        initialValue: 'Continue to Shipping',
      ),
      size: context.knobs.list(
        label: 'ButtonSizeType',
        options: [
          ButtonSizeType.small,
          ButtonSizeType.medium,
          ButtonSizeType.large,
          ButtonSizeType.xLarge,
        ],
        labelBuilder: (item) => item.name,
      ),
      hierarchy: context.knobs.list(
        label: 'ButtonHierarchyType',
        options: [
          ButtonHierarchyType.primary,
          ButtonHierarchyType.secondary,
          ButtonHierarchyType.tertiary,
        ],
        labelBuilder: (item) => item.name,
      ),
      disabled: context.knobs.boolean(
        label: 'Disabled',
        initialValue: false,
      ),
      onPress: () {},
    ),
  );
}

@UseCase(
  name: 'Variants',
  type: MotrizButton,
  designLink:
      'https://www.figma.com/file/EXuEpwiyksLAejYX1qr1v4/Demo-App-featuring-variables?type=design&node-id=86-1012&mode=dev',
)
Widget buildMotrizButtonUseCasePrimaryEnabled(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(
      children: [
        MotrizButton(
          text: 'Primary + Enabled',
          size: context.knobs.list(
            label: 'ButtonSizeType',
            options: [
              ButtonSizeType.small,
              ButtonSizeType.medium,
              ButtonSizeType.large,
              ButtonSizeType.xLarge,
            ],
            labelBuilder: (item) => item.name,
          ),
          hierarchy: ButtonHierarchyType.primary,
          disabled: false,
          onPress: () {},
        ),
        const SizedBox(height: 8),
        MotrizButton(
          text: 'Primary + Disabled',
          size: context.knobs.list(
            label: 'ButtonSizeType',
            options: [
              ButtonSizeType.small,
              ButtonSizeType.medium,
              ButtonSizeType.large,
              ButtonSizeType.xLarge,
            ],
            labelBuilder: (item) => item.name,
          ),
          hierarchy: ButtonHierarchyType.primary,
          disabled: true,
          onPress: () {},
        ),
        const SizedBox(height: 8),
        MotrizButton(
          text: 'Secondary + Enabled',
          size: context.knobs.list(
            label: 'ButtonSizeType',
            options: [
              ButtonSizeType.small,
              ButtonSizeType.medium,
              ButtonSizeType.large,
              ButtonSizeType.xLarge,
            ],
            labelBuilder: (item) => item.name,
          ),
          hierarchy: ButtonHierarchyType.secondary,
          disabled: false,
          onPress: () {},
        ),
        const SizedBox(height: 8),
        MotrizButton(
          text: 'Secondary + Disabled',
          size: context.knobs.list(
            label: 'ButtonSizeType',
            options: [
              ButtonSizeType.small,
              ButtonSizeType.medium,
              ButtonSizeType.large,
              ButtonSizeType.xLarge,
            ],
            labelBuilder: (item) => item.name,
          ),
          hierarchy: ButtonHierarchyType.secondary,
          disabled: true,
          onPress: () {},
        ),
        const SizedBox(height: 8),
        MotrizButton(
          text: 'Tertiary + Enabled',
          size: context.knobs.list(
            label: 'ButtonSizeType',
            options: [
              ButtonSizeType.small,
              ButtonSizeType.medium,
              ButtonSizeType.large,
              ButtonSizeType.xLarge,
            ],
            labelBuilder: (item) => item.name,
          ),
          hierarchy: ButtonHierarchyType.tertiary,
          disabled: false,
          onPress: () {},
        ),
        const SizedBox(height: 8),
        MotrizButton(
          text: 'Tertiary + Disabled',
          size: context.knobs.list(
            label: 'ButtonSizeType',
            options: [
              ButtonSizeType.small,
              ButtonSizeType.medium,
              ButtonSizeType.large,
              ButtonSizeType.xLarge,
            ],
            labelBuilder: (item) => item.name,
          ),
          hierarchy: ButtonHierarchyType.tertiary,
          disabled: true,
          onPress: () {},
        )
      ],
    ),
  );
}
