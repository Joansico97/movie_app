phony: clean gen fix run

clean:
	@echo "╠ Cleaning project..."
	flutter clean
	@echo "╠ Get dependencies..."
	flutter pub get

gen:
	@echo "╠ Running generator..."
	flutter packages pub run build_runner build --delete-conflicting-outputs

fix:
	@echo "╠ Applying fix..."
	dart fix

fix_gen:
	@echo "╠ Fixing gen..."
	mkdir ./.dart_tool/flutter_gen
	echo "version: 1.0.0" > ./.dart_tool/flutter_gen/pubspec.yaml

gen_l10n:
	@echo "╠ Generating translations..."
	flutter pub run intl_utils:generate

run:
	@echo "╠ Running..."
	flutter run --release