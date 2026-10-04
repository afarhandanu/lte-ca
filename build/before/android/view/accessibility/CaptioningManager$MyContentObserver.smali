.class Landroid/view/accessibility/CaptioningManager$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor blacklist <init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    .line 324
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 326
    iput-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    .line 327
    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 331
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 332
    const/16 p2, 0x2f

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 333
    const-string p2, "accessibility_captioning_enabled"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 334
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifyEnabledChanged(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_6e

    .line 335
    :cond_1e
    const-string p2, "accessibility_captioning_locale"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 336
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifyLocaleChanged(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_6e

    .line 337
    :cond_2c
    const-string p2, "accessibility_captioning_font_scale"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 338
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifyFontScaleChanged(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_6e

    .line 339
    :cond_3a
    const-string/jumbo p2, "odi_captions_enabled"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 340
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifySystemAudioCaptionChanged(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_6e

    .line 341
    :cond_49
    const-string/jumbo p2, "odi_captions_volume_ui_enabled"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 342
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$mnotifySystemAudioCaptionUiChanged(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_6e

    .line 346
    :cond_58
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$fgetmStyleChangedRunnable(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 347
    iget-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager;->-$$Nest$fgetmStyleChangedRunnable(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    :goto_6e
    return-void
.end method
