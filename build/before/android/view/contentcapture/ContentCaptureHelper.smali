.class public final Landroid/view/contentcapture/ContentCaptureHelper;
.super Ljava/lang/Object;
.source "ContentCaptureHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field public static blacklist sDebug:Z

.field public static blacklist sVerbose:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-class v0, Landroid/view/contentcapture/ContentCaptureHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureHelper;->TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    .line 43
    sput-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains only static methods"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getDefaultLoggingLevel()I
    .registers 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getLoggingLevelAsString(I)Ljava/lang/String;
    .registers 3

    .line 96
    packed-switch p0, :pswitch_data_20

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :pswitch_17
    const-string p0, "VERBOSE"

    return-object p0

    .line 100
    :pswitch_1a
    const-string p0, "DEBUG"

    return-object p0

    .line 98
    :pswitch_1d
    const-string p0, "OFF"

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method public static blacklist getSanitizedString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    .line 50
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1b

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_chars"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1b
    return-object p0
.end method

.method public static blacklist setLoggingLevel()V
    .registers 3

    .line 65
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureHelper;->getDefaultLoggingLevel()I

    move-result v0

    .line 66
    const-string v1, "content_capture"

    const-string v2, "logging_level"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 68
    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    .line 69
    return-void
.end method

.method public static blacklist setLoggingLevel(I)V
    .registers 4

    .line 75
    sget-object v0, Landroid/view/contentcapture/ContentCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting logging level to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/view/contentcapture/ContentCaptureHelper;->getLoggingLevelAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    sput-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    .line 77
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_46

    .line 88
    sget-object v0, Landroid/view/contentcapture/ContentCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLoggingLevel(): invalud level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void

    .line 79
    :pswitch_3f
    sput-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    .line 82
    :pswitch_41
    sput-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    .line 83
    return-void

    .line 86
    :pswitch_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_44
        :pswitch_41
        :pswitch_3f
    .end packed-switch
.end method

.method public static blacklist toList(Ljava/util/Set;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 113
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method

.method public static blacklist toSet(Ljava/util/List;)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 121
    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method
