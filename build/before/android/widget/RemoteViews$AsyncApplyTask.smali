.class Landroid/widget/RemoteViews$AsyncApplyTask;
.super Landroid/os/AsyncTask;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncApplyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/RemoteViews$ViewTree;",
        ">;",
        "Landroid/os/CancellationSignal$OnCancelListener;"
    }
.end annotation


# instance fields
.field private greylist-max-o mActions:[Landroid/widget/RemoteViews$Action;

.field final blacklist mApplyParams:Landroid/widget/RemoteViews$ActionApplyParams;

.field final blacklist mCancelSignal:Landroid/os/CancellationSignal;

.field final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mError:Ljava/lang/Exception;

.field final greylist-max-o mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

.field final greylist-max-o mParent:Landroid/view/ViewGroup;

.field final greylist-max-o mRV:Landroid/widget/RemoteViews;

.field private greylist-max-o mResult:Landroid/view/View;

.field final blacklist mTopLevel:Z

.field private greylist-max-o mTree:Landroid/widget/RemoteViews$ViewTree;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResult(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->startTaskOnExecutor(Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
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

    .line 8528
    iput-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8507
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    .line 8529
    iput-object p2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    .line 8530
    iput-object p3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    .line 8531
    iput-object p4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mContext:Landroid/content/Context;

    .line 8532
    iput-object p5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    .line 8533
    iput-boolean p8, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTopLevel:Z

    .line 8534
    iput-object p6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mApplyParams:Landroid/widget/RemoteViews$ActionApplyParams;

    .line 8535
    iput-object p7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    .line 8536
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;ZLandroid/widget/RemoteViews-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/view/View;Z)V

    return-void
.end method

.method private blacklist startTaskOnExecutor(Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;
    .registers 3

    .line 8628
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 8629
    if-nez p1, :cond_9

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    :cond_9
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 8630
    iget-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    return-object p1
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;
    .registers 9

    .line 8542
    const/4 p1, 0x0

    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    if-nez v0, :cond_18

    .line 8543
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mApplyParams:Landroid/widget/RemoteViews$ActionApplyParams;

    iget-object v6, v0, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Landroid/widget/RemoteViews;->-$$Nest$minflateView(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    .line 8546
    :cond_18
    new-instance v0, Landroid/widget/RemoteViews$ViewTree;

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    invoke-direct {v0, v1, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;Landroid/widget/RemoteViews-IA;)V

    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    .line 8548
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 8549
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8550
    new-array v1, v0, [Landroid/widget/RemoteViews$Action;

    iput-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_7c

    .line 8552
    :try_start_37
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$mhasDrawInstructions(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 8553
    const-string v1, "RemoteViews#initActionAsyncWithDrawInstructions"

    goto :goto_44

    .line 8554
    :cond_42
    const-string v1, "RemoteViews#initActionAsync"

    .line 8552
    :goto_44
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8555
    const/4 v1, 0x0

    :goto_48
    if-ge v1, v0, :cond_6d

    invoke-virtual {p0}, Landroid/widget/RemoteViews$AsyncApplyTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 8557
    iget-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$Action;

    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    iget-object v5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mApplyParams:Landroid/widget/RemoteViews$ActionApplyParams;

    .line 8558
    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/RemoteViews$Action;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_6a
    .catchall {:try_start_37 .. :try_end_6a} :catchall_72

    .line 8555
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 8561
    :cond_6d
    :try_start_6d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8562
    nop

    .line 8563
    goto :goto_79

    .line 8561
    :catchall_72
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8562
    throw v0

    .line 8564
    :cond_77
    iput-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    .line 8566
    :goto_79
    iget-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7b} :catch_7c

    return-object p1

    .line 8567
    :catch_7c
    move-exception v0

    .line 8568
    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    .line 8569
    return-object p1
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 8505
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onCancel()V
    .registers 2

    .line 8624
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->cancel(Z)Z

    .line 8625
    return-void
.end method

.method protected greylist-max-o onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V
    .registers 9

    .line 8575
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 8576
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_6b

    .line 8577
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    if-eqz v0, :cond_15

    .line 8578
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    iget-object v1, p1, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onViewInflated(Landroid/view/View;)V

    .line 8582
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    if-eqz v0, :cond_54

    .line 8583
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mApplyParams:Landroid/widget/RemoteViews$ActionApplyParams;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$ActionApplyParams;->clone()Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8584
    iget-object v1, v0, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    if-nez v1, :cond_29

    .line 8585
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetDEFAULT_INTERACTION_HANDLER()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v1

    iput-object v1, v0, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_29} :catch_68

    .line 8588
    :cond_29
    :try_start_29
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$mhasDrawInstructions(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 8589
    const-string v1, "RemoteViews#applyActionsAsyncWithDrawInstructions"

    goto :goto_36

    .line 8590
    :cond_34
    const-string v1, "RemoteViews#applyActionsAsync"

    .line 8588
    :goto_36
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 8591
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3d
    if-ge v3, v2, :cond_4b

    aget-object v4, v1, v3

    .line 8592
    iget-object v5, p1, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    iget-object v6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6, v0}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_4f

    .line 8591
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 8595
    :cond_4b
    :try_start_4b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8596
    goto :goto_54

    .line 8595
    :catchall_4f
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 8596
    throw v0

    .line 8599
    :cond_54
    :goto_54
    iget-boolean v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTopLevel:Z

    if-eqz v0, :cond_67

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_67

    .line 8600
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Landroid/widget/RemoteViews;->-$$Nest$mfinalizeViewRecycling(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_67} :catch_68

    .line 8604
    :cond_67
    goto :goto_6b

    .line 8602
    :catch_68
    move-exception v0

    .line 8603
    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    .line 8607
    :cond_6b
    :goto_6b
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    if-eqz v0, :cond_83

    .line 8608
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-eqz v0, :cond_7b

    .line 8609
    iget-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onError(Ljava/lang/Exception;)V

    goto :goto_9a

    .line 8611
    :cond_7b
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    iget-object p1, p1, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-interface {v0, p1}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onViewApplied(Landroid/view/View;)V

    goto :goto_9a

    .line 8613
    :cond_83
    iget-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-eqz p1, :cond_9a

    .line 8614
    iget-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    instance-of p1, p1, Landroid/widget/RemoteViews$ActionException;

    if-eqz p1, :cond_92

    .line 8615
    iget-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    check-cast p1, Landroid/widget/RemoteViews$ActionException;

    throw p1

    .line 8617
    :cond_92
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 8620
    :cond_9a
    :goto_9a
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 8505
    check-cast p1, Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    return-void
.end method
