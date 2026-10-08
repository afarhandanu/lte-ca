.class public final Landroid/util/NtpTrustedTime$NtpConfig;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NtpConfig"
.end annotation


# instance fields
.field private final blacklist mServerUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTimeout:Ljava/time/Duration;


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;Ljava/time/Duration;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;",
            "Ljava/time/Duration;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 92
    nop

    .line 93
    :try_start_22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URI;

    .line 92
    invoke-static {v1}, Landroid/util/NtpTrustedTime;->-$$Nest$smvalidateNtpServerUri(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/net/URISyntaxException; {:try_start_22 .. :try_end_2f} :catch_31

    .line 97
    nop

    .line 98
    goto :goto_15

    .line 95
    :catch_31
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad server URI"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 99
    :cond_3a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/util/NtpTrustedTime$NtpConfig;->mServerUris:Ljava/util/List;

    .line 101
    invoke-virtual {p2}, Ljava/time/Duration;->isNegative()Z

    move-result p1

    if-nez p1, :cond_4f

    invoke-virtual {p2}, Ljava/time/Duration;->isZero()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 104
    iput-object p2, p0, Landroid/util/NtpTrustedTime$NtpConfig;->mTimeout:Ljava/time/Duration;

    .line 105
    return-void

    .line 102
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "timeout < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Server URIs is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public blacklist getServerUris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpConfig;->mServerUris:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTimeout()Ljava/time/Duration;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpConfig;->mTimeout:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NtpConnectionInfo{mServerUris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime$NtpConfig;->mServerUris:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime$NtpConfig;->mTimeout:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
