.class public final Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;
.super Ljava/lang/Object;
.source "InputMethodInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetadataReadBytesTracker"
.end annotation


# instance fields
.field private blacklist mRemainingBytes:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$monReadBytes(Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;->onReadBytes(I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 1285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1282
    const v0, 0x32000

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;->mRemainingBytes:I

    .line 1286
    return-void
.end method

.method private blacklist onReadBytes(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1289
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;->mRemainingBytes:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;->mRemainingBytes:I

    .line 1290
    iget p1, p0, Landroid/view/inputmethod/InputMethodInfo$MetadataReadBytesTracker;->mRemainingBytes:I

    if-ltz p1, :cond_a

    .line 1295
    return-void

    .line 1291
    :cond_a
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "The input method service has metadata exceeds the  204800 byte limit"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
