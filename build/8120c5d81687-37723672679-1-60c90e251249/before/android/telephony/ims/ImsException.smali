.class public final Landroid/telephony/ims/ImsException;
.super Ljava/lang/Exception;
.source "ImsException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsException$ImsErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CODE_ERROR_INVALID_SUBSCRIPTION:I = 0x3

.field public static final whitelist CODE_ERROR_SERVICE_UNAVAILABLE:I = 0x1

.field public static final whitelist CODE_ERROR_UNSPECIFIED:I = 0x0

.field public static final whitelist CODE_ERROR_UNSUPPORTED_OPERATION:I = 0x2


# instance fields
.field private blacklist mCode:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 86
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/telephony/ims/ImsException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    iput v0, p0, Landroid/telephony/ims/ImsException;->mCode:I

    .line 87
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 96
    invoke-static {p1, p2}, Landroid/telephony/ims/ImsException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 77
    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/ims/ImsException;->mCode:I

    .line 97
    iput p2, p0, Landroid/telephony/ims/ImsException;->mCode:I

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 110
    invoke-static {p1, p2}, Landroid/telephony/ims/ImsException;->getMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/ims/ImsException;->mCode:I

    .line 111
    iput p2, p0, Landroid/telephony/ims/ImsException;->mCode:I

    .line 112
    return-void
.end method

.method private static blacklist getMessage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    const-string p0, " (code: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist getCode()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/telephony/ims/ImsException;->mCode:I

    return v0
.end method
