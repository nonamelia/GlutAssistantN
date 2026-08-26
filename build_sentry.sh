flutter build apk \
 --flavor=build \
 --obfuscate \
 --split-debug-info=symbols \
 --target-platform=android-arm64 \
 --split-per-abi \
 --dart-define=SENTRY_DSN="$SENTRY_DSN" \
 --extra-gen-snapshot-options=--save-obfuscation-map=build/mapping.json

dart run sentry_dart_plugin

read -r -p "按 Enter 键退出..."
