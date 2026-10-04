.class Lcom/android/internal/accessibility/AccessibilityShortcutController$1;
.super Landroid/database/ContentObserver;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public blacklist onChange(ZLjava/util/Collection;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;II)V"
        }
    .end annotation

    .line 217
    iget-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-static {p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->-$$Nest$fgetmUserId(Lcom/android/internal/accessibility/AccessibilityShortcutController;)I

    move-result p1

    if-ne p4, p1, :cond_d

    .line 218
    iget-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;->this$0:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->onSettingsChanged()V

    .line 220
    :cond_d
    return-void
.end method
