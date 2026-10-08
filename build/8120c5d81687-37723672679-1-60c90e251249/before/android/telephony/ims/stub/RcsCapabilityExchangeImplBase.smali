.class public Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.super Ljava/lang/Object;
.source "RcsCapabilityExchangeImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;,
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;,
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;,
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$CommandCode;
    }
.end annotation


# static fields
.field public static final whitelist COMMAND_CODE_FETCH_ERROR:I = 0x3

.field public static final whitelist COMMAND_CODE_GENERIC_FAILURE:I = 0x1

.field public static final whitelist COMMAND_CODE_INSUFFICIENT_MEMORY:I = 0x5

.field public static final whitelist COMMAND_CODE_INVALID_PARAM:I = 0x2

.field public static final whitelist COMMAND_CODE_LOST_NETWORK_CONNECTION:I = 0x6

.field public static final whitelist COMMAND_CODE_NOT_FOUND:I = 0x8

.field public static final whitelist COMMAND_CODE_NOT_SUPPORTED:I = 0x7

.field public static final whitelist COMMAND_CODE_NO_CHANGE:I = 0xa

.field public static final whitelist COMMAND_CODE_REQUEST_TIMEOUT:I = 0x4

.field public static final whitelist COMMAND_CODE_SERVICE_UNAVAILABLE:I = 0x9

.field public static final whitelist COMMAND_CODE_SERVICE_UNKNOWN:I = 0x0

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RcsCapExchangeImplBase"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    return-void
.end method


# virtual methods
.method public whitelist publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .registers 4

    .line 475
    const-string p1, "RcsCapExchangeImplBase"

    const-string/jumbo v0, "publishCapabilities called with no implementation."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 p1, 0x7

    :try_start_9
    invoke-interface {p2, p1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onCommandError(I)V
    :try_end_c
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_c} :catch_d

    .line 480
    goto :goto_e

    .line 478
    :catch_d
    move-exception p1

    .line 481
    :goto_e
    return-void
.end method

.method public whitelist sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .line 498
    const-string p1, "RcsCapExchangeImplBase"

    const-string/jumbo p2, "sendOptionsCapabilityRequest called with no implementation."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 p1, 0x7

    :try_start_9
    invoke-interface {p3, p1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;->onCommandError(I)V
    :try_end_c
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_c} :catch_d

    .line 503
    goto :goto_e

    .line 501
    :catch_d
    move-exception p1

    .line 504
    :goto_e
    return-void
.end method

.method public whitelist subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .line 454
    const-string p1, "RcsCapExchangeImplBase"

    const-string/jumbo v0, "subscribeForCapabilities called with no implementation."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 p1, 0x7

    :try_start_9
    invoke-interface {p2, p1}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_c
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_c} :catch_d

    .line 459
    goto :goto_e

    .line 457
    :catch_d
    move-exception p1

    .line 460
    :goto_e
    return-void
.end method
