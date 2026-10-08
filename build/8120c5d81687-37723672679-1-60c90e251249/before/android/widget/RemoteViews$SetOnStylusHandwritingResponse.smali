.class Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnStylusHandwritingResponse"
.end annotation


# instance fields
.field final blacklist mPendingIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor blacklist <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V
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

    .line 2011
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2012
    iput p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    .line 2013
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2014
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

    .line 2016
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 2017
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    .line 2018
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2019
    return-void
.end method

.method static synthetic blacklist lambda$apply$0(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 3

    .line 2040
    iget-object p2, p2, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 5

    .line 2028
    iget p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2029
    if-nez p1, :cond_9

    return-void

    .line 2031
    :cond_9
    iget-object p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result p2

    if-eqz p2, :cond_33

    .line 2032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot use setOnStylusHandwritingPendingIntent for collection item (id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteViews"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    return-void

    .line 2037
    :cond_33
    iget-object p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_4f

    .line 2038
    iget-object p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p2}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object p2

    .line 2039
    new-instance v0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p3}, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setHandwritingDelegatorCallback(Ljava/lang/Runnable;)V

    .line 2041
    iget-object p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAllowedHandwritingDelegatePackage(Ljava/lang/String;)V

    .line 2042
    goto :goto_56

    .line 2043
    :cond_4f
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setHandwritingDelegatorCallback(Ljava/lang/Runnable;)V

    .line 2044
    invoke-virtual {p1, p2}, Landroid/view/View;->setAllowedHandwritingDelegatePackage(Ljava/lang/String;)V

    .line 2046
    :goto_56
    return-void
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 2050
    const/16 v0, 0x22

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2022
    iget p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2023
    iget-object p2, p0, Landroid/widget/RemoteViews$SetOnStylusHandwritingResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p2, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 2024
    return-void
.end method
