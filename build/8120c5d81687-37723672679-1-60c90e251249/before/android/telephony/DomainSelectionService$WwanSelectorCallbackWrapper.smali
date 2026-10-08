.class final Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;
.super Ljava/lang/Object;
.source "DomainSelectionService.java"

# interfaces
.implements Landroid/telephony/WwanSelectorCallback;
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WwanSelectorCallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WwanSelectorCallbackWrapper"


# instance fields
.field private final blacklist mCallback:Lcom/android/internal/telephony/IWwanSelectorCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mResultCallback:Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;

.field final synthetic blacklist this$0:Landroid/telephony/DomainSelectionService;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/DomainSelectionService;Lcom/android/internal/telephony/IWwanSelectorCallback;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 686
    iput-object p1, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;->this$0:Landroid/telephony/DomainSelectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p2, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;->mCallback:Lcom/android/internal/telephony/IWwanSelectorCallback;

    .line 688
    iput-object p3, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 689
    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .registers 4

    .line 694
    :try_start_0
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;->mCallback:Lcom/android/internal/telephony/IWwanSelectorCallback;

    invoke-interface {v0}, Lcom/android/internal/telephony/IWwanSelectorCallback;->onCancel()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 697
    goto :goto_20

    .line 695
    :catch_6
    move-exception v0

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCancel e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WwanSelectorCallbackWrapper"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_20
    return-void
.end method

.method public whitelist onDomainSelected(IZ)V
    .registers 4

    .line 720
    :try_start_0
    iget-object v0, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;->mCallback:Lcom/android/internal/telephony/IWwanSelectorCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IWwanSelectorCallback;->onDomainSelected(IZ)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 723
    goto :goto_20

    .line 721
    :catch_6
    move-exception p1

    .line 722
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDomainSelected e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WwanSelectorCallbackWrapper"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_20
    return-void
.end method

.method public whitelist onRequestEmergencyNetworkScan(Ljava/util/List;IZLandroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Landroid/telephony/EmergencyRegistrationResult;",
            ">;)V"
        }
    .end annotation

    .line 706
    if-eqz p4, :cond_5

    :try_start_2
    invoke-virtual {p4, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 707
    :cond_5
    new-instance p4, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;

    iget-object v0, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p4, p0, p5, v0}, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;-><init>(Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    iput-object p4, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;->mResultCallback:Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;

    .line 708
    iget-object p4, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;->mCallback:Lcom/android/internal/telephony/IWwanSelectorCallback;

    .line 709
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p5, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {p5}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, p5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    iget-object p5, p0, Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper;->mResultCallback:Landroid/telephony/DomainSelectionService$WwanSelectorCallbackWrapper$IWwanSelectorResultCallbackAdapter;

    .line 708
    invoke-interface {p4, p1, p2, p3, p5}, Lcom/android/internal/telephony/IWwanSelectorCallback;->onRequestEmergencyNetworkScan([IIZLcom/android/internal/telephony/IWwanSelectorResultCallback;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    .line 713
    goto :goto_41

    .line 711
    :catch_27
    move-exception p1

    .line 712
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onRequestEmergencyNetworkScan e="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WwanSelectorCallbackWrapper"

    invoke-static {p2, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_41
    return-void
.end method
