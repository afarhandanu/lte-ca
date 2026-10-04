.class Landroid/widget/DatePickerCalendarDelegate$ClickActionDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "DatePickerCalendarDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClickActionDelegate"
.end annotation


# instance fields
.field private final blacklist mClickAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4

    .line 236
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 237
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 238
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-direct {v0, p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$ClickActionDelegate;->mClickAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 239
    return-void
.end method


# virtual methods
.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 243
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 245
    iget-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$ClickActionDelegate;->mClickAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 246
    return-void
.end method
