# TV Key Mapper

## Fix Keyboard Shortcuts on Android TV 14

This app fixes broken keyboard shortcuts after updating from Android TV 11 to 14.

### Features
- **Alt + Esc** → Home
- **Esc** → Back
- **Fn + Print** → Screenshot
- **Alt + F4** → Recent Apps
- Configurable shortcuts and timing
- No root required

---

## 🚀 EASIEST WAY: Get Pre-built APK via GitHub Actions

### Step 1: Upload to GitHub
1. Go to [github.com](https://github.com) and create a **free account**
2. Create a **new repository** (name: `TVKeyMapper`)
3. Upload all files from this ZIP to the repository
4. The `.github/workflows/build.yml` file is already included - it will auto-build!

### Step 2: Trigger Build
- Go to **Actions** tab in your GitHub repo
- Click **"Build TV Key Mapper APK"** workflow
- Click **"Run workflow"** button
- Wait 2-3 minutes

### Step 3: Download APK
- Go to **Releases** section (right side of repo page)
- Download `app-debug.apk`
- Or check **Actions** → latest run → **Artifacts** → download `TVKeyMapper-APK`

---

## Build Instructions (Termux)

```bash
# 1. Install dependencies
pkg update && pkg upgrade -y
pkg install openjdk-17 gradle -y

# 2. Navigate to project
cd TVKeyMapper

# 3. Build debug APK
gradle assembleDebug

# 4. Find APK at:
# app/build/outputs/apk/debug/app-debug.apk
```

---

## Installation on TV

1. Transfer `app-debug.apk` to your TV (USB, cloud storage, or ADB)
2. Install using file manager or: `adb install app-debug.apk`
3. Open TV Key Mapper app
4. Click **"Enable Accessibility Service"**
5. Find **"TV Key Mapper"** in Accessibility settings and turn it ON
6. Allow/Confirm when prompted
7. Your keyboard shortcuts now work!

---

## Troubleshooting

- **Service not staying active**: Make sure battery optimization is disabled for this app
- **Shortcuts not working**: Increase "Combo Timeout" in Settings
- **Some keys not detected**: Different keyboards send different keycodes

---

## Important

This app uses Android Accessibility Service to capture keyboard events globally. 
No data is collected or transmitted - all processing is local.
