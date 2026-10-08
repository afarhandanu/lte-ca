.class public Landroid/telephony/CellBroadcastIntents;
.super Ljava/lang/Object;
.source "CellBroadcastIntents.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ACTION_AREA_INFO_UPDATED:Ljava/lang/String; = "android.telephony.action.AREA_INFO_UPDATED"

.field private static final blacklist EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "CellBroadcastIntents"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method private static blacklist putPhoneIdAndSubIdExtra(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 4

    .line 107
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result p0

    .line 108
    const/4 v0, -0x1

    if-eq p0, v0, :cond_12

    .line 109
    const-string/jumbo v0, "subscription"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    :cond_12
    const-string/jumbo p0, "phone"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    const-string p0, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public static whitelist sendSmsCbReceivedBroadcast(Landroid/content/Context;Landroid/os/UserHandle;Landroid/telephony/SmsCbMessage;Landroid/content/BroadcastReceiver;Landroid/os/Handler;II)V
    .registers 16

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "message"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    invoke-static {p0, v1, p6}, Landroid/telephony/CellBroadcastIntents;->putPhoneIdAndSubIdExtra(Landroid/content/Context;Landroid/content/Intent;I)V

    .line 91
    nop

    .line 92
    nop

    .line 93
    const-string v2, "android.permission.RECEIVE_SMS"

    const-string v3, "android:receive_sms"

    if-eqz p1, :cond_26

    .line 94
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2f

    .line 98
    :cond_26
    move-object v4, p3

    move-object v5, p4

    move v6, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 101
    :goto_2f
    return-void
.end method
