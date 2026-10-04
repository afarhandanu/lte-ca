.class Landroid/telephony/TelephonyManager$2;
.super Ljava/lang/Object;
.source "TelephonyManager.java"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->uploadCallComposerPicture(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver<",
        "Landroid/os/ParcelUuid;",
        "Landroid/telephony/TelephonyManager$CallComposerException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$fileStream:Ljava/io/InputStream;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/io/InputStream;Landroid/os/OutcomeReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 4968
    iput-object p2, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onError(Landroid/telephony/TelephonyManager$CallComposerException;)V
    .registers 4

    .line 4984
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4989
    goto :goto_e

    .line 4985
    :catch_6
    move-exception v0

    .line 4987
    const-string v0, "TelephonyManager"

    const-string v1, "Error closing file input stream when uploading call composer pic"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4990
    :goto_e
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 4991
    return-void
.end method

.method public bridge synthetic whitelist onError(Ljava/lang/Throwable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4968
    check-cast p1, Landroid/telephony/TelephonyManager$CallComposerException;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$2;->onError(Landroid/telephony/TelephonyManager$CallComposerException;)V

    return-void
.end method

.method public blacklist onResult(Landroid/os/ParcelUuid;)V
    .registers 4

    .line 4972
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$fileStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 4977
    goto :goto_e

    .line 4973
    :catch_6
    move-exception v0

    .line 4975
    const-string v0, "TelephonyManager"

    const-string v1, "Error closing file input stream when uploading call composer pic"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4978
    :goto_e
    iget-object v0, p0, Landroid/telephony/TelephonyManager$2;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-interface {v0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    .line 4979
    return-void
.end method

.method public bridge synthetic whitelist onResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4968
    check-cast p1, Landroid/os/ParcelUuid;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$2;->onResult(Landroid/os/ParcelUuid;)V

    return-void
.end method
