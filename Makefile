init:
	(cd packages && dart pub get)
	(cd template/server && dart pub get)

gen:
	(cd packages/nucleoid && dart pub run build_runner build -d)

fmt:
	dart format .