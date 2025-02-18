# example-app

## 4.1.0

### Minor Changes

- 58037cd: Adds web partitions to throw error on function calls

### Patch Changes

- Updated dependencies [58037cd]
  - @infinitered/react-native-mlkit-document-scanner@3.1.0
  - @infinitered/react-native-mlkit-object-detection@3.1.0
  - @infinitered/react-native-mlkit-face-detection@3.1.0
  - @infinitered/react-native-mlkit-image-labeling@3.1.0

## 4.0.0

### Major Changes

- b668ab0: Upgrade to expo 52

### Patch Changes

- Updated dependencies [b668ab0]
- Updated dependencies [83b7e6e]
- Updated dependencies [b668ab0]
  - @infinitered/react-native-mlkit-object-detection@3.0.0
  - @infinitered/react-native-mlkit-face-detection@3.0.0
  - @infinitered/react-native-mlkit-image-labeling@3.0.0
  - @infinitered/react-native-mlkit-document-scanner@3.0.0

## 3.0.0

### Major Changes

- 70cd8da: Updating app features for store release.

### Patch Changes

- 70cd8da: RNMLKitImage will now scale image to fill container by default. scaleFactor no longer accepts numbers.
  - @infinitered/react-native-mlkit-document-scanner@2.0.1
  - @infinitered/react-native-mlkit-face-detection@2.0.1
  - @infinitered/react-native-mlkit-image-labeling@2.0.1
  - @infinitered/react-native-mlkit-object-detection@2.0.1

## 2.0.0

### Major Changes

- 1e282e0: Update modules and example app to be compatible with Expo v51. Increases minimum deployment target to 13.4.

  To ensure that your app will be compatible, make sure your minimum deployment version is set higher than 13.4 by
  using the `expo-build-properties` plugin in your `app.json`.

  ```json
  {
    "plugins": [
      [
        "expo-build-properties",
        {
          "ios": {
            "deploymentTarget": "13.4"
          }
        }
      ]
    ]
  }
  ```

### Patch Changes

- Updated dependencies [1e282e0]
  - @infinitered/react-native-mlkit-document-scanner@2.0.0
  - @infinitered/react-native-mlkit-object-detection@2.0.0
  - @infinitered/react-native-mlkit-face-detection@2.0.0
  - @infinitered/react-native-mlkit-image-labeling@2.0.0

## 1.0.0

### Major Changes

- 4048d34: Updated modules to be compatible with Expo 50

### Minor Changes

- 4048d34: Upgrade expo and related deps to v50.
- 4048d34: Bump expo to v50

### Patch Changes

- Updated dependencies [4048d34]
- Updated dependencies [4048d34]
- Updated dependencies [4048d34]
  - @infinitered/react-native-mlkit-document-scanner@1.0.0
  - @infinitered/react-native-mlkit-object-detection@1.0.0
  - @infinitered/react-native-mlkit-face-detection@1.0.0
  - @infinitered/react-native-mlkit-image-labeling@1.0.0
