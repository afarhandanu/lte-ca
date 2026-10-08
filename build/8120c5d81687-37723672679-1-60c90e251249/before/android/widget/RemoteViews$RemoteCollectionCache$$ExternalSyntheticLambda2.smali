.class public final synthetic Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:Z


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/CompletableFuture;IIZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/CompletableFuture;

    iput p2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;->f$2:I

    iput-boolean p4, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;->f$3:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/CompletableFuture;

    iget v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;->f$2:I

    iget-boolean v3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda2;->f$3:Z

    check-cast p1, Landroid/os/IBinder;

    invoke-static {v0, v1, v2, v3, p1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->lambda$getItemsFutureFromIntent$2(Ljava/util/concurrent/CompletableFuture;IIZLandroid/os/IBinder;)V

    return-void
.end method
