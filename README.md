# AlternativeIcons

This is a sample project for the issue, where a `UIApplication.shared.supportsAlternateIcons` return `false`, when running as iPhone-only application on iPadOS 17, even though alternate app icons are included and the property returns `true` on iPhone.

The issue is reported to Apple as: FB13231859

## Feedback content

**Please provide a descriptive title for your feedback:**

iPad running iPhone-only app reports false when asked for UIApplication.shared.supportsAlternateIcons

**Which platform is most relevant for your report?**

iPadOS

**Which technology does your report involve?**

UIKit

**What type of feedback are you reporting?**

Incorrect/Unexpected Behavior

**What build does the issue occur on?**

iPadOS 17 RC Seed (21A329)

**Where does the issue occur?**

On device

**Please describe the issue and what steps we can take to reproduce it:**

I have an iPhone-only app with alternate icons. With the latest version submitted for App Review, it got rejected, because the reviewer couldn’t change app icon when running the app (upscaled) on the iPad. I tried myself, and found the same issue. `UIApplication.shared.supportsAlternateIcons` returns false when running the app on iPad but true when running on iPhone (both running iOS/iPadOS 17 RC).

I reproduced this in a sample project (attached). If run as-is on iPadOS, the text at the top will tell, that alternate icons ARE NOT supported. If adding iPad as platform in the project inspector in Xcode and running the app again, it will show, that alternate icons ARE supported.

This was all done with Xcode 15.0 (15A240d) and the included SDK.
