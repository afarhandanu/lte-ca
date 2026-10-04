.class Landroid/widget/RemoteViews$SetRemoteInputsAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetRemoteInputsAction"
.end annotation


# instance fields
.field final blacklist mRemoteInputs:[Landroid/os/Parcelable;


# direct methods
.method public constructor blacklist <init>(I[Landroid/app/RemoteInput;)V
    .registers 4

    .line 5506
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5507
    iput p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    .line 5508
    iput-object p2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    .line 5509
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 5511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    .line 5513
    sget-object v0, Landroid/app/RemoteInput;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    .line 5514
    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    .line 5523
    iget p2, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5524
    if-nez p1, :cond_9

    return-void

    .line 5526
    :cond_9
    const p2, 0x10204b9

    iget-object p3, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 5527
    return-void
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 5531
    const/16 v0, 0x12

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 5517
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5518
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteInputsAction;->mRemoteInputs:[Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 5519
    return-void
.end method
