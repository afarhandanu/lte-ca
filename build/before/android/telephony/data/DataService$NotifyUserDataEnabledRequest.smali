.class final Landroid/telephony/data/DataService$NotifyUserDataEnabledRequest;
.super Ljava/lang/Object;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotifyUserDataEnabledRequest"
.end annotation


# instance fields
.field public final blacklist callback:Lcom/android/internal/telephony/IIntegerConsumer;

.field public final blacklist enabled:Z

.field public final blacklist executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(ZLjava/util/concurrent/Executor;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 4

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    iput-boolean p1, p0, Landroid/telephony/data/DataService$NotifyUserDataEnabledRequest;->enabled:Z

    .line 686
    iput-object p2, p0, Landroid/telephony/data/DataService$NotifyUserDataEnabledRequest;->executor:Ljava/util/concurrent/Executor;

    .line 687
    iput-object p3, p0, Landroid/telephony/data/DataService$NotifyUserDataEnabledRequest;->callback:Lcom/android/internal/telephony/IIntegerConsumer;

    .line 688
    return-void
.end method
