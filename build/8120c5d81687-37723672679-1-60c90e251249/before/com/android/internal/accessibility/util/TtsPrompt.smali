.class public Lcom/android/internal/accessibility/util/TtsPrompt;
.super Ljava/lang/Object;
.source "TtsPrompt.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final blacklist RETRY_MILLIS:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "TtsPrompt"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDismiss:Z

.field private final blacklist mFrameworkObjectProvider:Lcom/android/internal/accessibility/util/FrameworkObjectProvider;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mLanguageReady:Z

.field private blacklist mRetryCount:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public static synthetic blacklist $r8$lambda$8TM1IQxrjnXqW5TnB3-LHUhmvl8(Lcom/android/internal/accessibility/util/TtsPrompt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/accessibility/util/TtsPrompt;->play()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$naSHlk0Cl04yJGLYWCK9Rd9qZLI(Lcom/android/internal/accessibility/util/TtsPrompt;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/accessibility/util/TtsPrompt;->waitForTtsReady()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/accessibility/util/FrameworkObjectProvider;Ljava/lang/CharSequence;)V
    .registers 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mRetryCount:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mLanguageReady:Z

    .line 50
    iput-object p1, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p3, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/util/FrameworkObjectProvider;

    .line 53
    iput-object p4, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mText:Ljava/lang/CharSequence;

    .line 54
    iget-object p1, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/util/FrameworkObjectProvider;

    iget-object p2, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/accessibility/util/FrameworkObjectProvider;->getTextToSpeech(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 55
    return-void
.end method

.method private blacklist initTextToSpeech()V
    .registers 3

    .line 75
    iget-boolean v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mDismiss:Z

    if-eqz v0, :cond_5

    return-void

    .line 78
    :cond_5
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 80
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    .line 83
    return-void
.end method

.method private blacklist play()V
    .registers 5

    .line 86
    iget-boolean v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mDismiss:Z

    if-eqz v0, :cond_5

    .line 87
    return-void

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mText:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    .line 90
    if-eqz v0, :cond_1b

    .line 91
    const-string v0, "TtsPrompt"

    const-string v1, "Tts play fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct {p0}, Lcom/android/internal/accessibility/util/TtsPrompt;->playNotificationTone()V

    .line 94
    :cond_1b
    return-void
.end method

.method private blacklist playNotificationTone()V
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/util/FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/util/FrameworkObjectProvider;->getDefaultAccessibilityNotificationRingtone(Landroid/content/Context;)Landroid/media/Ringtone;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->playNotificationTone(Landroid/content/Context;Landroid/media/Ringtone;)V

    .line 140
    return-void
.end method

.method private blacklist waitForTtsReady()V
    .registers 5

    .line 101
    iget-boolean v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mDismiss:Z

    if-eqz v0, :cond_5

    .line 102
    return-void

    .line 104
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mLanguageReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_20

    .line 105
    iget-object v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    .line 108
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1d

    const/4 v3, -0x2

    if-eq v0, v3, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput-boolean v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mLanguageReady:Z

    .line 112
    :cond_20
    iget-boolean v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mLanguageReady:Z

    if-eqz v0, :cond_53

    .line 113
    iget-object v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getVoice()Landroid/speech/tts/Voice;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_41

    .line 116
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 117
    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getFeatures()Ljava/util/Set;

    move-result-object v0

    .line 118
    const-string/jumbo v3, "notInstalled"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    move v1, v2

    goto :goto_42

    :cond_41
    nop

    .line 119
    :goto_42
    if-eqz v1, :cond_53

    .line 120
    iget-object v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/accessibility/util/TtsPrompt$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/accessibility/util/TtsPrompt$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void

    .line 125
    :cond_53
    iget v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mRetryCount:I

    if-nez v0, :cond_62

    .line 126
    const-string v0, "TtsPrompt"

    const-string v1, "Tts not ready to speak."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/android/internal/accessibility/util/TtsPrompt;->playNotificationTone()V

    .line 128
    return-void

    .line 131
    :cond_62
    iget v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mRetryCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mRetryCount:I

    .line 132
    iget-object v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/accessibility/util/TtsPrompt$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/accessibility/util/TtsPrompt$$ExternalSyntheticLambda0;-><init>()V

    .line 133
    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 132
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .registers 4

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mDismiss:Z

    .line 60
    iget-object v0, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/accessibility/util/TtsPrompt$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/internal/accessibility/util/TtsPrompt$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 61
    return-void
.end method

.method public whitelist onInit(I)V
    .registers 4

    .line 65
    if-eqz p1, :cond_22

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tts init fail, status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TtsPrompt"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/android/internal/accessibility/util/TtsPrompt;->playNotificationTone()V

    .line 68
    return-void

    .line 70
    :cond_22
    invoke-direct {p0}, Lcom/android/internal/accessibility/util/TtsPrompt;->initTextToSpeech()V

    .line 71
    iget-object p1, p0, Lcom/android/internal/accessibility/util/TtsPrompt;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/accessibility/util/TtsPrompt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/accessibility/util/TtsPrompt$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    return-void
.end method
