// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductEntityAdapter extends TypeAdapter<ProductEntity> {
  @override
  final int typeId = 1;

  @override
  ProductEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductEntity(
      idProduct: fields[0] as int,
      titleProduct: fields[1] as String,
      descriptionProduct: fields[2] as String,
      priceProduct: fields[3] as int,
      discountPercentageProduct: fields[4] as double,
      ratingProduct: fields[5] as double,
      stockProduct: fields[6] as int,
      brandProduct: fields[7] as String,
      categoryProduct: fields[8] as String,
      image: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.idProduct)
      ..writeByte(1)
      ..write(obj.titleProduct)
      ..writeByte(2)
      ..write(obj.descriptionProduct)
      ..writeByte(3)
      ..write(obj.priceProduct)
      ..writeByte(4)
      ..write(obj.discountPercentageProduct)
      ..writeByte(5)
      ..write(obj.ratingProduct)
      ..writeByte(6)
      ..write(obj.stockProduct)
      ..writeByte(7)
      ..write(obj.brandProduct)
      ..writeByte(8)
      ..write(obj.categoryProduct)
      ..writeByte(9)
      ..write(obj.image);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
