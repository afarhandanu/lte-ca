.class final Landroid/widget/RemoteViews$ViewContentNavigation;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewContentNavigation"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o mNext:Z


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;IZ)V
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

    .line 2486
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2487
    iput p2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mViewId:I

    .line 2488
    iput-boolean p3, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    .line 2489
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 2491
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mViewId:I

    .line 2493
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    .line 2494
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 5

    .line 2503
    iget p2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2504
    if-nez p1, :cond_9

    return-void

    .line 2507
    :cond_9
    nop

    .line 2508
    :try_start_a
    iget-boolean p2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    if-eqz p2, :cond_12

    const-string/jumbo p2, "showNext"

    goto :goto_15

    :cond_12
    const-string/jumbo p2, "showPrevious"

    .line 2507
    :goto_15
    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Landroid/widget/RemoteViews;->-$$Nest$smgetMethod(Landroid/view/View;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    .line 2508
    invoke-polymorphic {p2, p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Landroid/view/View;)V
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_21

    .line 2511
    nop

    .line 2512
    return-void

    .line 2509
    :catchall_21
    move-exception p1

    .line 2510
    new-instance p2, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {p2, p1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 2520
    const/4 v0, 0x5

    return v0
.end method

.method public greylist-max-o mergeBehavior()I
    .registers 2

    .line 2515
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2497
    iget p2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2498
    iget-boolean p2, p0, Landroid/widget/RemoteViews$ViewContentNavigation;->mNext:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2499
    return-void
.end method
