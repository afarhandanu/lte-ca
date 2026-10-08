.class public Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;
.super Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraDimFrameworkFeatureInfo"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 742
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 743
    return-void
.end method

.method private blacklist launchExtraDimDialog(Landroid/content/Context;)V
    .registers 4

    .line 772
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.action.LAUNCH_REMOVE_EXTRA_DIM_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 774
    nop

    .line 775
    const v1, 0x104003a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 774
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 776
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 777
    return-void
.end method


# virtual methods
.method public blacklist activateShortcut(Landroid/content/Context;I)Z
    .registers 6

    .line 751
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->evenDimmer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 752
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11101b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 754
    invoke-direct {p0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->launchExtraDimDialog(Landroid/content/Context;)V

    .line 755
    return v1

    .line 759
    :cond_18
    new-instance v0, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    .line 760
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2, p2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 761
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 762
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 763
    return v1

    .line 765
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ExtraDimFrameworkFeatureInfo;->getSettingOffValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    .line 766
    const/4 p1, 0x0

    return p1
.end method
