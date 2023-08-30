# Vonage Client SDK (iOS)

The Client SDK is intended to provide a ready solution for developers to build Programmable Conversation applications across multiple Channels including: Messages, Voice, SIP, websockets, and App.

## Libraries

This Swift Package has three libraries Voice, Chat and Combined. You must only use **One** library.

- `VonageClientSDKVoice` This is the Voice library.
- `VonageClientSDKChat` This is the Chat library. **In beta stage**.
- `VonageClientSDK` This is the Combined library. **In beta stage**.

## Installation Notes

In order for these libraries to work you need to:

- Click on your build target in XCode
- Go to Build Settings > All > Linking > Other Linker Flags
- Add the `-ObjC` flag both for Debug and Release configurations

## Documentation

- [Vonage Developer Center](https://developer.vonage.com/en/vonage-client-sdk/overview)
- [Reference Apps](https://github.com/Vonage-Community/reference-client_sdk-ios-android-js-node-deno-usecases)
