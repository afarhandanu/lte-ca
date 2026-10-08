.class public interface abstract Landroid/telephony/TelephonyCallback$CallAttributesListener;
.super Ljava/lang/Object;
.source "TelephonyCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallAttributesListener"
.end annotation


# virtual methods
.method public whitelist onCallAttributesChanged(Landroid/telephony/CallAttributes;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1561
    const-string p1, "TelephonyCallback"

    const-string/jumbo v0, "onCallAttributesChanged(List<CallState>) should be overridden."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    return-void
.end method

.method public whitelist onCallStatesChanged(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CallState;",
            ">;)V"
        }
    .end annotation

    .line 1592
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_59

    .line 1593
    nop

    .line 1594
    nop

    .line 1595
    nop

    .line 1596
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CallState;

    .line 1597
    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallClassification()I

    move-result v6

    packed-switch v6, :pswitch_data_72

    goto :goto_34

    .line 1602
    :pswitch_25
    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallState()I

    move-result v5

    .line 1603
    goto :goto_34

    .line 1599
    :pswitch_2a
    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallState()I

    move-result v4

    .line 1600
    goto :goto_34

    .line 1605
    :pswitch_2f
    invoke-virtual {v2}, Landroid/telephony/CallState;->getCallState()I

    move-result v3

    .line 1606
    nop

    .line 1610
    :goto_34
    goto :goto_11

    .line 1611
    :cond_35
    new-instance v0, Landroid/telephony/CallAttributes;

    new-instance v2, Landroid/telephony/PreciseCallState;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    .line 1615
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CallState;

    invoke-virtual {v3}, Landroid/telephony/CallState;->getNetworkType()I

    move-result v3

    .line 1616
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CallState;

    invoke-virtual {p1}, Landroid/telephony/CallState;->getCallQuality()Landroid/telephony/CallQuality;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    .line 1611
    invoke-interface {p0, v0}, Landroid/telephony/TelephonyCallback$CallAttributesListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    .line 1617
    goto :goto_70

    .line 1618
    :cond_59
    new-instance p1, Landroid/telephony/CallAttributes;

    new-instance v2, Landroid/telephony/PreciseCallState;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    new-instance v0, Landroid/telephony/CallQuality;

    invoke-direct {v0}, Landroid/telephony/CallQuality;-><init>()V

    invoke-direct {p1, v2, v1, v0}, Landroid/telephony/CallAttributes;-><init>(Landroid/telephony/PreciseCallState;ILandroid/telephony/CallQuality;)V

    invoke-interface {p0, p1}, Landroid/telephony/TelephonyCallback$CallAttributesListener;->onCallAttributesChanged(Landroid/telephony/CallAttributes;)V

    .line 1625
    :goto_70
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
    .end packed-switch
.end method
