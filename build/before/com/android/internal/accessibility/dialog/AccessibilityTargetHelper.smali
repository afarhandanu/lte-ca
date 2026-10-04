.class public final Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;
.super Ljava/lang/Object;
.source "AccessibilityTargetHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createAccessibilityServiceTarget(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    .registers 4

    .line 286
    invoke-static {p2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 295
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected fragment type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 293
    :pswitch_f
    new-instance v0, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/accessibility/dialog/ToggleAccessibilityServiceTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-object v0

    .line 291
    :pswitch_15
    new-instance v0, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAccessibilityServiceTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-object v0

    .line 288
    :pswitch_1b
    new-instance v0, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/accessibility/dialog/VolumeShortcutToggleAccessibilityServiceTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)V

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_15
        :pswitch_f
    .end packed-switch
.end method

.method private static blacklist getAccessibilityActivityTargets(Landroid/content/Context;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 161
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 163
    nop

    .line 165
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 164
    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 166
    if-nez v0, :cond_18

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 170
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 172
    new-instance v3, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;-><init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityShortcutInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    goto :goto_25

    .line 175
    :cond_3a
    return-object v1
.end method

.method private static blacklist getAccessibilityServiceTargets(Landroid/content/Context;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 123
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 125
    nop

    .line 126
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 127
    if-nez v0, :cond_14

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 131
    :cond_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 133
    invoke-static {v2, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->isValidServiceTarget(Landroid/accessibilityservice/AccessibilityServiceInfo;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 134
    invoke-static {p0, p1, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->createAccessibilityServiceTarget(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityServiceInfo;)Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_3a
    goto :goto_21

    .line 138
    :cond_3b
    return-object v1
.end method

.method private static blacklist getAllowListingFeatureTargets(Landroid/content/Context;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 183
    new-instance v2, Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;

    .line 186
    const-string v1, "com.android.server.accessibility.MagnificationController"

    invoke-static {p0, p1, v1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    .line 190
    const v1, 0x10400fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 191
    const v1, 0x10803ab

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "accessibility_display_magnification_navbar_enabled"

    const-string v6, "com.android.server.accessibility.MagnificationController"

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 193
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 199
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {v3, v4, p0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 200
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 202
    const p0, 0x10401f6

    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 203
    const p0, 0x10803a0

    invoke-virtual {v3, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "accessibility_display_daltonizer_enabled"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 205
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 211
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 210
    invoke-static {v3, v4, p0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 212
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 214
    const p0, 0x10401f7

    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 215
    const p0, 0x10803a2

    invoke-virtual {v3, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "accessibility_display_inversion_enabled"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 217
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->AUTOCLICK_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 223
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 222
    invoke-static {v3, v4, p0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->AUTOCLICK_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 224
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 226
    const p0, 0x1040180

    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 227
    const p0, 0x108039e

    invoke-virtual {v3, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "accessibility_autoclick_enabled"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 229
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MOUSE_KEYS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 235
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-static {v3, v4, p0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MOUSE_KEYS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 236
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 238
    const p0, 0x1040699

    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 239
    const p0, 0x10803ad

    invoke-virtual {v3, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string v10, "accessibility_mouse_keys_enabled"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 241
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-boolean p0, Lcom/android/internal/os/RoSystemProperties;->SUPPORT_ONE_HANDED_MODE:Z

    if-eqz p0, :cond_fa

    .line 244
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 248
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {v3, v4, p0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 249
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 251
    const p0, 0x104070a

    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 252
    const p0, 0x10803af

    invoke-virtual {v3, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string/jumbo v10, "one_handed_mode_activated"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 254
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_fa
    new-instance v2, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 261
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 260
    invoke-static {v3, v4, p0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 262
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 264
    const p0, 0x1040929

    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 265
    const p0, 0x10803b1

    invoke-virtual {v3, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const-string/jumbo v10, "reduce_bright_colors_activated"

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/ToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 267
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 273
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {v3, v4, p0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    sget-object p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 274
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 276
    const p0, 0x10404a5

    invoke-virtual {v3, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 277
    const p0, 0x10803a5

    invoke-virtual {v3, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/accessibility/dialog/InvisibleToggleAllowListingFeatureTarget;-><init>(Landroid/content/Context;IZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 279
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    return-object v0
.end method

.method public static blacklist getInstalledTargets(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getAccessibilityServiceTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getAccessibilityActivityTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getAllowListingFeatureTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    return-object v0
.end method

.method public static blacklist getTargets(Landroid/content/Context;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getInstalledTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 75
    const-string v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 77
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object p0

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 83
    const-string v4, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 84
    nop

    .line 85
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 86
    nop

    .line 87
    invoke-virtual {v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 88
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 89
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    goto :goto_29

    .line 93
    :cond_55
    invoke-virtual {v3}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 94
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_62
    goto :goto_29

    .line 97
    :cond_63
    goto :goto_19

    .line 98
    :cond_64
    return-object p1
.end method

.method public static blacklist isAccessibilityTargetAllowed(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    .line 304
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 305
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityTargetAllowed(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static blacklist isValidServiceTarget(Landroid/accessibilityservice/AccessibilityServiceInfo;I)Z
    .registers 6

    .line 152
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 154
    :goto_b
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1d

    if-gt p0, v3, :cond_1d

    if-nez v0, :cond_1d

    if-eq p1, v2, :cond_1e

    :cond_1d
    move v1, v2

    :cond_1e
    return v1
.end method

.method public static blacklist sendRestrictedDialogIntent(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 4

    .line 312
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 313
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendRestrictedDialogIntent(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method
