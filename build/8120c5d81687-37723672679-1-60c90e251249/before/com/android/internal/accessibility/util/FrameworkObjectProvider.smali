.class public Lcom/android/internal/accessibility/util/FrameworkObjectProvider;
.super Ljava/lang/Object;
.source "FrameworkObjectProvider.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .registers 2

    .line 41
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 4

    .line 49
    nop

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 54
    :goto_14
    if-eqz v0, :cond_1a

    .line 55
    const v0, 0x10302d1

    goto :goto_1d

    .line 56
    :cond_1a
    const v0, 0x10302d2

    .line 57
    :goto_1d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public blacklist getDefaultAccessibilityNotificationRingtone(Landroid/content/Context;)Landroid/media/Ringtone;
    .registers 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    const v1, 0x1040230

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/accessibility/util/FrameworkObjectProvider;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 107
    if-nez v0, :cond_2a

    .line 108
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/accessibility/util/FrameworkObjectProvider;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 110
    :cond_2a
    return-object v0
.end method

.method public blacklist getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .registers 3

    .line 90
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getSystemUiContext()Landroid/content/Context;
    .registers 2

    .line 72
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTextToSpeech(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech;
    .registers 4

    .line 81
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v0, p1, p2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    return-object v0
.end method

.method public blacklist makeToastFromText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4

    .line 67
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    return-object p1
.end method
