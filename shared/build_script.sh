case "$PLATFORM_NAME" in
    iphoneos)
        TARGET=iphone
        TASK=compileKonanKotlinArithmeticParserIphone
        ;;
    iphonesimulator)
        TARGET=iphone_sim
        TASK=compileKonanKotlinArithmeticParserIphone_sim
        ;;
    *)
        echo "Unknown platform: $PLATFORM_NAME"
        exit 1
        ;;
esac

mkdir -p "$SRCROOT/build/konan/bin/"
rm -f "$SRCROOT/build/konan/bin/xcode"
ln -s "$TARGET" "$SRCROOT/build/konan/bin/xcode"

"$SRCROOT/../gradlew" -p "$SRCROOT" "$TASK"
