enum ResizeType {
  clip,
  crop,
  scale,
  fill,
}

extension _ResizeX on ResizeType {
  String? get name => {
        ResizeType.clip: 'clip',
        ResizeType.crop: 'crop',
        ResizeType.scale: 'scale',
        ResizeType.fill: 'fill',
      }[this];
}

///
class Resize {
  final int _width;
  final int _height;
  final ResizeType _type;

  ///
  const Resize(
    this._width,
    this._height, {
    ResizeType type = ResizeType.clip,
  })  : assert(type != null, 'Missing resize type'),
        assert(_width > 0, 'Width should be a positive number'),
        assert(_height > 0, 'Height should be a positive number'),
        _type = type;

  ///
  Map<String, Object?> get params {
    return <String, Object?>{
      'resize': _type.name,
      'w': _width,
      'h': _height,
    };
  }
}
