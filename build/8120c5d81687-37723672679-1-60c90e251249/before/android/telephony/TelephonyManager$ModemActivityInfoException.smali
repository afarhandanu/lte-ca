.class public Landroid/telephony/TelephonyManager$ModemActivityInfoException;
.super Ljava/lang/Exception;
.source "TelephonyManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModemActivityInfoException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$ModemActivityInfoException$ModemActivityInfoError;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_INVALID_INFO_RECEIVED:I = 0x2

.field public static final whitelist ERROR_MODEM_RESPONSE_ERROR:I = 0x3

.field public static final whitelist ERROR_PHONE_NOT_AVAILABLE:I = 0x1

.field public static final whitelist ERROR_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2

    .line 13114
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13115
    iput p1, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    .line 13116
    return-void
.end method


# virtual methods
.method public whitelist getErrorCode()I
    .registers 2

    .line 13119
    iget v0, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 13124
    iget v0, p0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;->mErrorCode:I

    packed-switch v0, :pswitch_data_14

    .line 13129
    const-string v0, "UNDEFINED"

    return-object v0

    .line 13128
    :pswitch_8
    const-string v0, "ERROR_MODEM_RESPONSE_ERROR"

    return-object v0

    .line 13127
    :pswitch_b
    const-string v0, "ERROR_INVALID_INFO_RECEIVED"

    return-object v0

    .line 13126
    :pswitch_e
    const-string v0, "ERROR_PHONE_NOT_AVAILABLE"

    return-object v0

    .line 13125
    :pswitch_11
    const-string v0, "ERROR_UNKNOWN"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
