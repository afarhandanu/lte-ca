.class public final Landroid/telephony/ims/SipDelegateConfiguration$Builder;
.super Ljava/lang/Object;
.source "SipDelegateConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SipDelegateConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mConfig:Landroid/telephony/ims/SipDelegateConfiguration;


# direct methods
.method public constructor whitelist <init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V
    .registers 13

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration;

    const/4 v6, 0x0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Landroid/telephony/ims/SipDelegateConfiguration-IA;)V

    iput-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 247
    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .registers 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p1}, Landroid/telephony/ims/SipDelegateConfiguration;->copyAndIncrementVersion()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    .line 261
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/telephony/ims/SipDelegateConfiguration;
    .registers 2

    .line 526
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    return-object v0
.end method

.method public whitelist setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 336
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmHomeDomain(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 337
    return-object p0
.end method

.method public whitelist setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 352
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmImei(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 353
    return-object p0
.end method

.method public whitelist setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 365
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration;Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)V

    .line 366
    return-object p0
.end method

.method public whitelist setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmMaxUdpPayloadSize(Landroid/telephony/ims/SipDelegateConfiguration;I)V

    .line 301
    return-object p0
.end method

.method public whitelist setNatSocketAddress(Ljava/net/InetSocketAddress;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 381
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmNatAddress(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/net/InetSocketAddress;)V

    .line 382
    return-object p0
.end method

.method public whitelist setPrivateUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 324
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmPrivateUserIdentifier(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 325
    return-object p0
.end method

.method public whitelist setPublicGruuUri(Landroid/net/Uri;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 394
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmGruu(Landroid/telephony/ims/SipDelegateConfiguration;Landroid/net/Uri;)V

    .line 395
    return-object p0
.end method

.method public whitelist setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 312
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmPublicUserIdentifier(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 313
    return-object p0
.end method

.method public whitelist setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 518
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmAssociatedUriHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 519
    return-object p0
.end method

.method public whitelist setSipAuthenticationHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 406
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmSipAuthHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 407
    return-object p0
.end method

.method public whitelist setSipAuthenticationNonce(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 418
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmSipAuthNonce(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 419
    return-object p0
.end method

.method public whitelist setSipCniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 506
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmCniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 507
    return-object p0
.end method

.method public whitelist setSipCompactFormEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 272
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmIsSipCompactFormEnabled(Landroid/telephony/ims/SipDelegateConfiguration;Z)V

    .line 273
    return-object p0
.end method

.method public whitelist setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 466
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmContactUserParam(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 467
    return-object p0
.end method

.method public whitelist setSipKeepaliveEnabled(Z)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 286
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmIsSipKeepaliveEnabled(Landroid/telephony/ims/SipDelegateConfiguration;Z)V

    .line 287
    return-object p0
.end method

.method public whitelist setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 479
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmPaniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 480
    return-object p0
.end method

.method public whitelist setSipPathHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 442
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmPathHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 443
    return-object p0
.end method

.method public whitelist setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 492
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmPlaniHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 493
    return-object p0
.end method

.method public whitelist setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 430
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmServiceRouteHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 431
    return-object p0
.end method

.method public whitelist setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;
    .registers 3

    .line 454
    iget-object v0, p0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->mConfig:Landroid/telephony/ims/SipDelegateConfiguration;

    invoke-static {v0, p1}, Landroid/telephony/ims/SipDelegateConfiguration;->-$$Nest$fputmUserAgentHeader(Landroid/telephony/ims/SipDelegateConfiguration;Ljava/lang/String;)V

    .line 455
    return-object p0
.end method
