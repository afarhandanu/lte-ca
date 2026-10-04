.class Landroid/telephony/SmsManager$2;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/SmsManager;

.field final synthetic blacklist val$deliveryIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$destinationAddress:Ljava/lang/String;

.field final synthetic blacklist val$expectMore:Z

.field final synthetic blacklist val$finalPriority:I

.field final synthetic blacklist val$finalValidity:I

.field final synthetic blacklist val$persistMessage:Z

.field final synthetic blacklist val$scAddress:Ljava/lang/String;

.field final synthetic blacklist val$sentIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$text:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 888
    iput-object p1, p0, Landroid/telephony/SmsManager$2;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$2;->val$destinationAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$2;->val$scAddress:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$2;->val$text:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/SmsManager$2;->val$sentIntent:Landroid/app/PendingIntent;

    iput-object p6, p0, Landroid/telephony/SmsManager$2;->val$deliveryIntent:Landroid/app/PendingIntent;

    iput-boolean p7, p0, Landroid/telephony/SmsManager$2;->val$persistMessage:Z

    iput p8, p0, Landroid/telephony/SmsManager$2;->val$finalPriority:I

    iput-boolean p9, p0, Landroid/telephony/SmsManager$2;->val$expectMore:Z

    iput p10, p0, Landroid/telephony/SmsManager$2;->val$finalValidity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .registers 3

    .line 909
    iget-object v0, p0, Landroid/telephony/SmsManager$2;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 910
    return-void
.end method

.method public blacklist onSuccess(I)V
    .registers 15

    .line 892
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->-$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_23

    .line 894
    iget-object v1, p0, Landroid/telephony/SmsManager$2;->this$0:Landroid/telephony/SmsManager;

    .line 895
    invoke-static {v1}, Landroid/telephony/SmsManager;->-$$Nest$mgetAttributionTag(Landroid/telephony/SmsManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/SmsManager$2;->val$destinationAddress:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsManager$2;->val$scAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/SmsManager$2;->val$text:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/SmsManager$2;->val$sentIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/telephony/SmsManager$2;->val$deliveryIntent:Landroid/app/PendingIntent;

    iget-boolean v9, p0, Landroid/telephony/SmsManager$2;->val$persistMessage:Z

    iget v10, p0, Landroid/telephony/SmsManager$2;->val$finalPriority:I

    iget-boolean v11, p0, Landroid/telephony/SmsManager$2;->val$expectMore:Z

    iget v12, p0, Landroid/telephony/SmsManager$2;->val$finalValidity:I

    .line 894
    const/4 v2, 0x0

    move v1, p1

    invoke-interface/range {v0 .. v12}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    .line 904
    :cond_23
    goto :goto_4a

    .line 900
    :catch_24
    move-exception v0

    move-object p1, v0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendTextMessageInternal: Couldn\'t send SMS, exception - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 902
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 901
    const-string v0, "SmsManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object p1, p0, Landroid/telephony/SmsManager$2;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v0, 0x1f

    invoke-static {p1, v0}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 905
    :goto_4a
    return-void
.end method
