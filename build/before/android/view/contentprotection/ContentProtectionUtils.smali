.class public final Landroid/view/contentprotection/ContentProtectionUtils;
.super Ljava/lang/Object;
.source "ContentProtectionUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getEventTextLower(Landroid/view/contentcapture/ContentCaptureEvent;)Ljava/lang/String;
    .registers 1

    .line 34
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureEvent;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 35
    if-nez p0, :cond_8

    .line 36
    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getHintTextLower(Landroid/view/contentcapture/ViewNode;)Ljava/lang/String;
    .registers 2

    .line 57
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 58
    return-object v0

    .line 60
    :cond_4
    invoke-virtual {p0}, Landroid/view/contentcapture/ViewNode;->getHint()Ljava/lang/String;

    move-result-object p0

    .line 61
    if-nez p0, :cond_b

    .line 62
    return-object v0

    .line 64
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getViewNodeTextLower(Landroid/view/contentcapture/ViewNode;)Ljava/lang/String;
    .registers 2

    .line 44
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 45
    return-object v0

    .line 47
    :cond_4
    invoke-virtual {p0}, Landroid/view/contentcapture/ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 48
    if-nez p0, :cond_b

    .line 49
    return-object v0

    .line 51
    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
