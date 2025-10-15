import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:source_helper/source_helper.dart';

import 'enum_utils.dart';
import 'helper_core.dart';
import 'type_helpers/generic_factory_helper.dart';
import 'type_helpers/json_converter_helper.dart';
import 'unsupported_type_error.dart';

mixin JSONSchemaHelper implements HelperCore {

  Iterable<String> createGetJsonSchema(Set<FieldElement2> accessibleFieldSet) sync* {
    assert(config.createGetJsonSchema);

    final buffer = StringBuffer();

    final functionName =
    '${prefix}getJsonSchema';

buffer..write(
      'String '
      '$functionName()',
    )..writeln(' => {')
    ..writeln('};');

    yield buffer.toString();
  }
}
