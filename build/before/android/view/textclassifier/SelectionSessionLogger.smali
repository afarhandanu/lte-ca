.class public final Landroid/view/textclassifier/SelectionSessionLogger;
.super Ljava/lang/Object;
.source "SelectionSessionLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;
    }
.end annotation


# static fields
.field private static final greylist-max-o CLASSIFIER_ID:Ljava/lang/String; = "androidtc"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist isPlatformLocalTextClassifierSmartSelection(Ljava/lang/String;)Z
    .registers 2

    .line 33
    nop

    .line 34
    invoke-static {p0}, Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;->getClassifierId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 33
    const-string v0, "androidtc"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
