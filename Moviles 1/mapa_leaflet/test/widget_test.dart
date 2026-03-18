import 'package:flutter_test/flutter_test.dart';
import 'package:mapa_leaflet/app.dart';

void main() {
  testWidgets('App se renderiza correctamente', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    expect(find.text('Mapa Leaflet'), findsOneWidget);
  });
}
