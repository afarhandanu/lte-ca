.class public final Lcom/android/internal/accessibility/util/ShortcutUtils;
.super Ljava/lang/Object;
.source "ShortcutUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AccessibilityShortcutUtils"

.field private static final blacklist sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertToKey(I)Ljava/lang/String;
    .registers 4

    .line 207
    sparse-switch p0, :sswitch_data_32

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported user shortcut type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :sswitch_1c
    const-string p0, "accessibility_key_gesture_targets"

    goto :goto_30

    .line 209
    :sswitch_1f
    const-string p0, "accessibility_gesture_targets"

    goto :goto_30

    .line 214
    :sswitch_22
    const-string p0, "accessibility_qs_targets"

    goto :goto_30

    .line 213
    :sswitch_25
    const-string p0, "accessibility_magnification_two_finger_triple_tap_enabled"

    goto :goto_30

    .line 211
    :sswitch_28
    const-string p0, "accessibility_display_magnification_enabled"

    goto :goto_30

    .line 210
    :sswitch_2b
    const-string p0, "accessibility_shortcut_target_service"

    goto :goto_30

    .line 208
    :sswitch_2e
    const-string p0, "accessibility_button_targets"

    .line 207
    :goto_30
    return-object p0

    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_2b
        0x4 -> :sswitch_28
        0x8 -> :sswitch_25
        0x10 -> :sswitch_22
        0x20 -> :sswitch_1f
        0x40 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static blacklist convertToType(Ljava/lang/String;)I
    .registers 5

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_80

    :cond_a
    goto :goto_51

    :sswitch_b
    const-string v0, "accessibility_display_magnification_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_52

    :sswitch_15
    const-string v0, "accessibility_key_gesture_targets"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x6

    goto :goto_52

    :sswitch_1f
    const-string v0, "accessibility_magnification_two_finger_triple_tap_enabled"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    goto :goto_52

    :sswitch_29
    const-string v0, "accessibility_button_targets"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_52

    :sswitch_33
    const-string v0, "accessibility_qs_targets"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_52

    :sswitch_3d
    const-string v0, "accessibility_gesture_targets"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_52

    :sswitch_47
    const-string v0, "accessibility_shortcut_target_service"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_52

    :goto_51
    const/4 v0, -0x1

    :goto_52
    packed-switch v0, :pswitch_data_9e

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported user shortcut key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :pswitch_6e
    const/16 v1, 0x40

    goto :goto_7e

    .line 237
    :pswitch_71
    const/16 v1, 0x8

    goto :goto_7e

    .line 235
    :pswitch_74
    goto :goto_7e

    .line 233
    :pswitch_75
    move v1, v2

    goto :goto_7e

    .line 232
    :pswitch_77
    const/16 v1, 0x10

    goto :goto_7e

    .line 231
    :pswitch_7a
    const/16 v1, 0x20

    goto :goto_7e

    .line 230
    :pswitch_7d
    move v1, v3

    .line 229
    :goto_7e
    return v1

    nop

    :sswitch_data_80
    .sparse-switch
        -0x6f8248d1 -> :sswitch_47
        -0x3f36d8e5 -> :sswitch_3d
        -0x3977748a -> :sswitch_33
        -0x87f9bfa -> :sswitch_29
        0x1edc733a -> :sswitch_1f
        0x3ff75dbb -> :sswitch_15
        0x6e8c1b57 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_75
        :pswitch_74
        :pswitch_71
        :pswitch_6e
    .end packed-switch
.end method

.method public static blacklist getButtonMode(Landroid/content/Context;I)I
    .registers 4

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_button_mode"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static blacklist getEnabledShortcutTypes(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8

    .line 187
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 188
    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 190
    :cond_c
    nop

    .line 191
    sget-object v1, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    array-length v2, v1

    move v3, v0

    :goto_11
    if-ge v0, v2, :cond_23

    aget v4, v1, v0

    .line 192
    invoke-virtual {p0, v4}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 193
    or-int/2addr v3, v4

    .line 191
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 196
    :cond_23
    return v3
.end method

.method public static blacklist getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object p1

    .line 311
    const-string v0, "accessibility_display_magnification_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 313
    const-string v0, "accessibility_magnification_two_finger_triple_tap_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4a

    .line 320
    :cond_15
    nop

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 320
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 327
    :cond_29
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 328
    sget-object p2, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 329
    :goto_33
    sget-object p0, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_45

    .line 330
    sget-object p0, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 332
    :cond_45
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 314
    :cond_4a
    :goto_4a
    nop

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 314
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_58

    move v0, p1

    .line 316
    :cond_58
    if-eqz v0, :cond_61

    const-string p0, "com.android.server.accessibility.MagnificationController"

    invoke-static {p0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_65

    .line 317
    :cond_61
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    .line 316
    :goto_65
    return-object p0
.end method

.method public static blacklist isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4

    .line 141
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 146
    return v0

    .line 149
    :cond_14
    sget-object p1, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 150
    :goto_19
    sget-object p0, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_30

    .line 151
    sget-object p0, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 153
    const/4 p0, 0x1

    return p0

    .line 155
    :cond_2f
    goto :goto_19

    .line 157
    :cond_30
    return v0
.end method

.method public static blacklist isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 4

    .line 171
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 172
    if-eqz p0, :cond_14

    .line 173
    nop

    .line 174
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 173
    return p0

    .line 176
    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist optInValueToSettings(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    new-instance v0, Ljava/util/StringJoiner;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {p0, p1, p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isComponentIdExistingInSettings(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 85
    return-void

    .line 88
    :cond_1e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 89
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 91
    :cond_27
    invoke-virtual {v0, p2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    return-void
.end method

.method public static blacklist optOutValueFromSettings(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    new-instance v0, Ljava/util/StringJoiner;

    const/16 v1, 0x3a

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    invoke-static {p1}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 116
    return-void

    .line 119
    :cond_1e
    sget-object v2, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 120
    :cond_23
    :goto_23
    sget-object v1, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 121
    sget-object v1, Lcom/android/internal/accessibility/util/ShortcutUtils;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v1}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 123
    goto :goto_23

    .line 125
    :cond_3e
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    goto :goto_23

    .line 128
    :cond_42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    return-void
.end method

.method public static blacklist setButtonMode(Landroid/content/Context;II)Z
    .registers 5

    .line 360
    invoke-static {p0, p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getButtonMode(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    .line 361
    return v1

    .line 363
    :cond_8
    and-int/lit8 v0, p1, 0x3

    if-eq v0, p1, :cond_25

    .line 367
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to set button mode to unexpected value "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccessibilityShortcutUtils"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return v1

    .line 370
    :cond_25
    nop

    .line 371
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 370
    const-string v0, "accessibility_button_mode"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static blacklist updateInvisibleToggleAccessibilityServiceEnableState(Landroid/content/Context;Ljava/util/Set;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 256
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 257
    if-nez v0, :cond_b

    return-void

    .line 259
    :cond_b
    nop

    .line 260
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 262
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 263
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 264
    invoke-static {v2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_37

    .line 266
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_37
    goto :goto_19

    .line 270
    :cond_38
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 271
    sget-object v2, Lcom/android/internal/accessibility/common/ShortcutConstants;->USER_SHORTCUT_TYPES:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_41
    if-ge v4, v3, :cond_50

    aget v5, v2, v4

    .line 276
    nop

    .line 277
    invoke-static {p0, v5, p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->getShortcutTargetsFromSettings(Landroid/content/Context;II)Ljava/util/Set;

    move-result-object v5

    .line 276
    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 280
    :cond_50
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 282
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 284
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 285
    nop

    .line 287
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 285
    invoke-static {p0, v2, v3, p2}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;ZI)V

    .line 291
    :cond_72
    goto :goto_54

    .line 292
    :cond_73
    return-void
.end method
