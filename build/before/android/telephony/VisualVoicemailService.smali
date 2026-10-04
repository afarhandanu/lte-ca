.class public abstract Landroid/telephony/VisualVoicemailService;
.super Landroid/app/Service;
.source "VisualVoicemailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;
    }
.end annotation


# static fields
.field public static final greylist-max-o DATA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "data_phone_account_handle"

.field public static final greylist-max-o DATA_SMS:Ljava/lang/String; = "data_sms"

.field public static final greylist-max-o MSG_ON_CELL_SERVICE_CONNECTED:I = 0x1

.field public static final greylist-max-o MSG_ON_SIM_REMOVED:I = 0x3

.field public static final greylist-max-o MSG_ON_SMS_RECEIVED:I = 0x2

.field public static final greylist-max-o MSG_TASK_ENDED:I = 0x4

.field public static final greylist-max-o MSG_TASK_STOPPED:I = 0x5

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.VisualVoicemailService"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "VvmService"


# instance fields
.field private final greylist-max-o mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 156
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/telephony/VisualVoicemailService$1;

    invoke-direct {v1, p0}, Landroid/telephony/VisualVoicemailService$1;-><init>(Landroid/telephony/VisualVoicemailService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/telephony/VisualVoicemailService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private static greylist-max-o getSubId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I
    .registers 4

    .line 290
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 291
    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    .line 292
    nop

    .line 293
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result p0

    .line 292
    return p0
.end method

.method public static final whitelist sendVisualVoicemailSms(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;SLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 284
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 285
    invoke-static {p0, p1}, Landroid/telephony/VisualVoicemailService;->getSubId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result p1

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/telephony/TelephonyManager;->sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 287
    return-void
.end method

.method public static final whitelist setSmsFilterSettings(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 252
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 253
    invoke-static {p0, p1}, Landroid/telephony/VisualVoicemailService;->getSubId(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result p0

    .line 254
    if-nez p2, :cond_12

    .line 255
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->disableVisualVoicemailSmsFilter(I)V

    goto :goto_15

    .line 257
    :cond_12
    invoke-virtual {v0, p0, p2}, Landroid/telephony/TelephonyManager;->enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    .line 259
    :goto_15
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 185
    iget-object p1, p0, Landroid/telephony/VisualVoicemailService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist onCellServiceConnected(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V
.end method

.method public abstract whitelist onSimRemoved(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telecom/PhoneAccountHandle;)V
.end method

.method public abstract whitelist onSmsReceived(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;Landroid/telephony/VisualVoicemailSms;)V
.end method

.method public abstract whitelist onStopped(Landroid/telephony/VisualVoicemailService$VisualVoicemailTask;)V
.end method
