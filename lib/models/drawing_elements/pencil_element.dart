import 'package:flutter/material.dart';

import '../../enums/drawing_element_type.dart';
import 'drawing_element.dart';
class PencilElement extends DrawingElement {
  final Path path;

  PencilElement({
    required this.path,
    required super.zIndex,
    required super.bounds,
    super.id,
    super.isSelected,
  }) : super(type: DrawingElementType.pencil);

  @override
  PencilElement copyWith({
    int? zIndex,
    Rect? bounds,
    bool? isSelected,
  }) {
    return PencilElement(
      id: id,
      path: path,
      zIndex: zIndex ?? this.zIndex,
      bounds: bounds ?? this.bounds,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
