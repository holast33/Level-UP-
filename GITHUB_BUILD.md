# LevelUp 30 — GitHub APK Build

## Upload
Upload the contents of this folder to the **root of a GitHub repository**.

## Build
Open **Actions** → **Build Android APK** → **Run workflow**.

The workflow uses Java 17 and Gradle's official GitHub Actions setup. When the build succeeds, the APK is available under the workflow run's **Artifacts** section as `LevelUp30-debug-apk`.

## Important
The Gradle Wrapper files should ideally be generated/committed by running:

```bash
gradle wrapper --gradle-version 8.11.1
```

That creates `gradlew`, `gradlew.bat`, and `gradle/wrapper/gradle-wrapper.jar`.

If the wrapper is missing, the included GitHub workflow falls back to the runner's Gradle installation, so the repository can still be tested in GitHub Actions.
