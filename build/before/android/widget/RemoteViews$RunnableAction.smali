.class final Landroid/widget/RemoteViews$RunnableAction;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunnableAction"
.end annotation


# instance fields
.field private final greylist-max-o mRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 4067
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 4068
    iput-object p1, p0, Landroid/widget/RemoteViews$RunnableAction;->mRunnable:Ljava/lang/Runnable;

    .line 4069
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    .line 4073
    iget-object p1, p0, Landroid/widget/RemoteViews$RunnableAction;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4074
    return-void
.end method
