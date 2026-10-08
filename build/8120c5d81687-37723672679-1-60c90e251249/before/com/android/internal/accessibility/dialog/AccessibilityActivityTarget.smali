.class Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;
.super Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
.source "AccessibilityActivityTarget.java"


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ILandroid/accessibilityservice/AccessibilityShortcutInfo;)V
    .registers 15

    .line 37
    nop

    .line 41
    invoke-virtual {p3}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p1, p2, v0}, Lcom/android/internal/accessibility/util/ShortcutUtils;->isShortcutContained(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    .line 42
    invoke-virtual {p3}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-virtual {p3}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 44
    invoke-virtual {p3}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 45
    invoke-virtual {p3}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 46
    invoke-static {p2}, Lcom/android/internal/accessibility/util/ShortcutUtils;->convertToKey(I)Ljava/lang/String;

    move-result-object v10

    .line 37
    const/4 v4, 0x3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;-><init>(Landroid/content/Context;IIZLjava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public blacklist updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V
    .registers 6

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->updateActionItem(Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;I)V

    .line 54
    nop

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;->getUid()I

    move-result v2

    .line 54
    invoke-static {v0, v1, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->isAccessibilityTargetAllowed(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 56
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1e

    move p2, v2

    goto :goto_1f

    :cond_1e
    move p2, v1

    .line 58
    :goto_1f
    if-nez v0, :cond_29

    if-eqz p2, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityActivityTarget;->isShortcutEnabled()Z

    move-result p2

    if-eqz p2, :cond_2a

    :cond_29
    move v1, v2

    .line 59
    :cond_2a
    iget-object p2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mCheckBoxView:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 60
    iget-object p2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 61
    iget-object p2, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 62
    iget-object p1, p1, Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 63
    return-void
.end method
