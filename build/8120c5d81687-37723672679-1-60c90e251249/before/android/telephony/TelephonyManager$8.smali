.class Landroid/telephony/TelephonyManager$8;
.super Landroid/os/ResultReceiver;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->sendUssdRequest(Ljava/lang/String;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

.field final synthetic blacklist val$telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/telephony/TelephonyManager;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 11286
    iput-object p3, p0, Landroid/telephony/TelephonyManager$8;->val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$8;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    .line 11289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USSD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11290
    const-string/jumbo v0, "ussdResponse cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11291
    const-string v0, "USSD_RESPONSE"

    const-class v1, Landroid/telephony/UssdResponse;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/UssdResponse;

    .line 11293
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3c

    .line 11294
    iget-object p1, p0, Landroid/telephony/TelephonyManager$8;->val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

    iget-object v0, p0, Landroid/telephony/TelephonyManager$8;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/UssdResponse;->getUssdRequest()Ljava/lang/String;

    move-result-object v1

    .line 11295
    invoke-virtual {p2}, Landroid/telephony/UssdResponse;->getReturnMessage()Ljava/lang/CharSequence;

    move-result-object p2

    .line 11294
    invoke-virtual {p1, v0, v1, p2}, Landroid/telephony/TelephonyManager$UssdResponseCallback;->onReceiveUssdResponse(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_47

    .line 11297
    :cond_3c
    iget-object v0, p0, Landroid/telephony/TelephonyManager$8;->val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$8;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    .line 11298
    invoke-virtual {p2}, Landroid/telephony/UssdResponse;->getUssdRequest()Ljava/lang/String;

    move-result-object p2

    .line 11297
    invoke-virtual {v0, v1, p2, p1}, Landroid/telephony/TelephonyManager$UssdResponseCallback;->onReceiveUssdResponseFailed(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)V

    .line 11300
    :goto_47
    return-void
.end method
