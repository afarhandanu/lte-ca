.class public Landroid/widget/RemoteViews$RemoteResponse;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$RemoteResponse$InteractionType;
    }
.end annotation


# static fields
.field public static final blacklist INTERACTION_TYPE_CHECKED_CHANGE:I = 0x1

.field public static final blacklist INTERACTION_TYPE_CLICK:I


# instance fields
.field private blacklist mElementNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFillIntent:Landroid/content/Intent;

.field private blacklist mInteractionType:I

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mViewIds:Landroid/util/IntArray;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->handleViewInteraction(Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mreadFromParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RemoteResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteResponse;Landroid/os/Parcel;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteResponse;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smfromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2

    invoke-static {p0, p1}, Landroid/widget/RemoteViews$RemoteResponse;->fromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 9423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9440
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    return-void
.end method

.method public static whitelist fromFillInIntent(Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2

    .line 9485
    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    .line 9486
    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    .line 9487
    if-eqz p0, :cond_c

    .line 9492
    invoke-virtual {p0}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 9494
    :cond_c
    return-object v0
.end method

.method public static whitelist fromPendingIntent(Landroid/app/PendingIntent;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2

    .line 9455
    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    .line 9456
    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 9457
    return-object v0
.end method

.method private static blacklist fromPendingIntentTemplateAndFillInIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 3

    .line 9499
    new-instance v0, Landroid/widget/RemoteViews$RemoteResponse;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteResponse;-><init>()V

    .line 9500
    iput-object p0, v0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 9501
    iput-object p1, v0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    .line 9502
    invoke-virtual {p1}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 9503
    return-object v0
.end method

.method private static blacklist getAdapterViewAncestor(Landroid/view/View;)Landroid/widget/AdapterView;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation

    .line 9598
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 9600
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 9607
    :goto_a
    if-eqz p0, :cond_1f

    instance-of v1, p0, Landroid/widget/AdapterView;

    if-nez v1, :cond_1f

    instance-of v1, p0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_18

    instance-of v1, p0, Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;

    if-eqz v1, :cond_1f

    .line 9610
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_a

    .line 9613
    :cond_1f
    instance-of v1, p0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_26

    move-object v0, p0

    check-cast v0, Landroid/widget/AdapterView;

    :cond_26
    return-object v0
.end method

.method private blacklist handleViewInteraction(Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V
    .registers 6

    .line 9566
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 9567
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    goto :goto_2e

    .line 9568
    :cond_7
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    const-string v1, "RemoteViews"

    if-eqz v0, :cond_32

    .line 9569
    invoke-static {p1}, Landroid/widget/RemoteViews$RemoteResponse;->getAdapterViewAncestor(Landroid/view/View;)Landroid/widget/AdapterView;

    move-result-object v0

    .line 9570
    if-nez v0, :cond_19

    .line 9571
    const-string p1, "Collection item doesn\'t have AdapterView parent"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9572
    return-void

    .line 9576
    :cond_19
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/PendingIntent;

    if-nez v2, :cond_27

    .line 9577
    const-string p1, "Attempting setOnClickFillInIntent or setOnCheckedChangeFillInIntent without calling setPendingIntentTemplate on parent."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9580
    return-void

    .line 9583
    :cond_27
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 9584
    nop

    .line 9589
    :goto_2e
    invoke-interface {p2, p1, v0, p0}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    .line 9590
    return-void

    .line 9585
    :cond_32
    const-string p1, "Response has neither pendingIntent nor fillInIntent"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9586
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 9554
    invoke-static {p1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    .line 9555
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_17

    :cond_16
    move-object v0, v1

    :goto_17
    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    .line 9556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    .line 9557
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 9558
    if-nez v0, :cond_26

    goto :goto_2a

    :cond_26
    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    :goto_2a
    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 9559
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 9560
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 9543
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 9544
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9545
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    if-eqz v0, :cond_18

    .line 9546
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9548
    :cond_18
    iget p2, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9549
    iget-object p2, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-nez p2, :cond_23

    const/4 p2, 0x0

    goto :goto_29

    :cond_23
    iget-object p2, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    invoke-virtual {p2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p2

    :goto_29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 9550
    iget-object p2, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9551
    return-void
.end method


# virtual methods
.method public whitelist addSharedElement(ILjava/lang/String;)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 4

    .line 9519
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-nez v0, :cond_12

    .line 9520
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 9521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 9523
    :cond_12
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 9524
    iget-object p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9525
    return-object p0
.end method

.method public blacklist getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/content/Intent;",
            "Landroid/app/ActivityOptions;",
            ">;"
        }
    .end annotation

    .line 9618
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    if-nez v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_11

    :cond_a
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mFillIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 9619
    :goto_11
    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 9621
    instance-of v1, p1, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_2d

    iget v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    .line 9623
    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "android.widget.extra.CHECKED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9626
    :cond_2d
    nop

    .line 9628
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9629
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111021c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/high16 v3, 0x10000000

    if-eqz v2, :cond_6e

    .line 9631
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 9633
    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 9635
    sget-object v6, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    invoke-virtual {v1, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 9637
    const/16 v6, 0x1a

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 9639
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 9640
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 9642
    if-eqz v6, :cond_6e

    .line 9643
    invoke-static {v1, v6, v5}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 9645
    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    goto :goto_6f

    .line 9649
    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    if-nez v1, :cond_ac

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    if-eqz v2, :cond_ac

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_ac

    .line 9650
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 9651
    :goto_7f
    if-eqz v2, :cond_8c

    instance-of v4, v2, Landroid/appwidget/AppWidgetHostView;

    if-nez v4, :cond_8c

    .line 9652
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_7f

    .line 9654
    :cond_8c
    instance-of v4, v2, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_ac

    .line 9655
    check-cast v2, Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mViewIds:Landroid/util/IntArray;

    .line 9656
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/widget/RemoteViews$RemoteResponse;->mElementNames:Ljava/util/ArrayList;

    .line 9657
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 9655
    invoke-virtual {v2, v1, v4, v0}, Landroid/appwidget/AppWidgetHostView;->createSharedElementActivityOptions([I[Ljava/lang/String;Landroid/content/Intent;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 9661
    :cond_ac
    if-nez v1, :cond_b5

    .line 9662
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 9663
    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    .line 9665
    :cond_b5
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_c7

    .line 9666
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_d3

    .line 9669
    :cond_c7
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "RemoteViews"

    const-string v3, "getLaunchOptions: view.getDisplay() is null!"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9674
    :goto_d3
    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 9676
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setInteractionType(I)Landroid/widget/RemoteViews$RemoteResponse;
    .registers 2

    .line 9538
    iput p1, p0, Landroid/widget/RemoteViews$RemoteResponse;->mInteractionType:I

    .line 9539
    return-object p0
.end method
