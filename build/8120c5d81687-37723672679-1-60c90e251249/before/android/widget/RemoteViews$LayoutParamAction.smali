.class Landroid/widget/RemoteViews$LayoutParamAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParamAction"
.end annotation


# static fields
.field static final blacklist LAYOUT_HEIGHT:I = 0x9

.field static final blacklist LAYOUT_MARGIN_BOTTOM:I = 0x3

.field static final greylist-max-o LAYOUT_MARGIN_END:I = 0x5

.field static final blacklist LAYOUT_MARGIN_LEFT:I = 0x0

.field static final blacklist LAYOUT_MARGIN_RIGHT:I = 0x2

.field static final blacklist LAYOUT_MARGIN_START:I = 0x4

.field static final blacklist LAYOUT_MARGIN_TOP:I = 0x1

.field static final greylist-max-o LAYOUT_WIDTH:I = 0x8


# instance fields
.field final greylist-max-o mProperty:I

.field final greylist-max-o mValue:I

.field final blacklist mValueType:I


# direct methods
.method constructor blacklist <init>(IIFI)V
    .registers 6

    .line 5281
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5282
    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    .line 5283
    iput p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 5284
    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 5285
    invoke-static {p3, p4}, Landroid/util/TypedValue;->createComplexDimension(FI)I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 5286
    return-void
.end method

.method constructor blacklist <init>(IIII)V
    .registers 6

    .line 5296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5297
    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    .line 5298
    iput p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 5299
    iput p4, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 5300
    iput p3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 5301
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 5303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 5304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    .line 5305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    .line 5306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    .line 5307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 5308
    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoInputStream;",
            ")",
            "Landroid/widget/RemoteViews$PendingResources<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5459
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 5461
    const-wide v1, 0x10b00000004L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 5462
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    const-wide v5, 0x10900000001L

    if-eq v3, v4, :cond_7d

    .line 5463
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_90

    .line 5481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5482
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5481
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 5477
    :pswitch_3e
    nop

    .line 5478
    const-wide v3, 0x10500000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5477
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5479
    goto :goto_e

    .line 5473
    :pswitch_50
    nop

    .line 5474
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5473
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5475
    goto :goto_e

    .line 5469
    :pswitch_62
    nop

    .line 5470
    const-wide v3, 0x10500000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5469
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5471
    goto :goto_e

    .line 5465
    :pswitch_74
    nop

    .line 5466
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v3

    .line 5465
    invoke-virtual {v0, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 5467
    goto :goto_e

    .line 5485
    :cond_7d
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 5487
    const/4 p0, 0x1

    new-array p0, p0, [J

    const/4 v1, 0x0

    aput-wide v5, p0, v1

    invoke-static {v0, p0}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 5489
    new-instance p0, Landroid/widget/RemoteViews$LayoutParamAction$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$LayoutParamAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object p0

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_74
        :pswitch_62
        :pswitch_50
        :pswitch_3e
    .end packed-switch
.end method

.method private blacklist getPixelOffset(Landroid/view/View;)I
    .registers 4

    .line 5379
    :try_start_0
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4c

    .line 5397
    iget p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    goto :goto_43

    .line 5381
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_44

    .line 5384
    :try_start_17
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    .line 5386
    :try_start_1b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5384
    return v0

    .line 5386
    :catchall_1f
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5387
    throw v0

    .line 5389
    :pswitch_24
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    if-nez v0, :cond_29

    .line 5390
    return v1

    .line 5392
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    .line 5394
    :pswitch_34
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 5395
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 5394
    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result p1
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_44

    return p1

    .line 5397
    :goto_43
    return p1

    .line 5399
    :catchall_44
    move-exception p1

    .line 5400
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_34
        :pswitch_24
        :pswitch_9
    .end packed-switch
.end method

.method private blacklist getPixelSize(Landroid/view/View;)I
    .registers 4

    .line 5406
    :try_start_0
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4c

    .line 5424
    iget p1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    goto :goto_43

    .line 5408
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_44

    .line 5411
    :try_start_17
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1f

    .line 5413
    :try_start_1b
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5411
    return v0

    .line 5413
    :catchall_1f
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5414
    throw v0

    .line 5416
    :pswitch_24
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    if-nez v0, :cond_29

    .line 5417
    return v1

    .line 5419
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    .line 5421
    :pswitch_34
    iget v0, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    .line 5422
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 5421
    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1
    :try_end_42
    .catchall {:try_start_1b .. :try_end_42} :catchall_44

    return p1

    .line 5424
    :goto_43
    return p1

    .line 5426
    :catchall_44
    move-exception p1

    .line 5427
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_34
        :pswitch_24
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5490
    const-wide p3, 0x10900000001L

    invoke-static {p2, p0, p3, p4}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result p1

    .line 5492
    new-instance p2, Landroid/widget/RemoteViews$LayoutParamAction;

    .line 5493
    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-wide v0, 0x10500000002L

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 5494
    const-wide v0, 0x10500000003L

    invoke-virtual {p0, v0, v1, p3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5495
    const-wide v1, 0x10500000004L

    invoke-virtual {p0, v1, v2, p3}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {p2, p1, p4, v0, p0}, Landroid/widget/RemoteViews$LayoutParamAction;-><init>(IIII)V

    .line 5492
    return-object p2
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 5

    .line 5319
    iget p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5320
    if-nez p1, :cond_9

    .line 5321
    return-void

    .line 5323
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 5324
    if-nez p2, :cond_10

    .line 5325
    return-void

    .line 5327
    :cond_10
    iget p3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    packed-switch p3, :pswitch_data_ae

    .line 5373
    :pswitch_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown property "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5369
    :pswitch_30
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelSize(Landroid/view/View;)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5370
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5371
    goto/16 :goto_ac

    .line 5365
    :pswitch_3b
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelSize(Landroid/view/View;)I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5366
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5367
    goto :goto_ac

    .line 5359
    :pswitch_45
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_ac

    .line 5360
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 5361
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 5353
    :pswitch_57
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_ac

    .line 5354
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 5355
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 5347
    :pswitch_69
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_ac

    .line 5348
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5349
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 5341
    :pswitch_7a
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_ac

    .line 5342
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5343
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 5335
    :pswitch_8b
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_ac

    .line 5336
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5337
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ac

    .line 5329
    :pswitch_9c
    instance-of p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p3, :cond_ac

    .line 5330
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$LayoutParamAction;->getPixelOffset(Landroid/view/View;)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 5331
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5375
    :cond_ac
    :goto_ac
    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_8b
        :pswitch_7a
        :pswitch_69
        :pswitch_57
        :pswitch_45
        :pswitch_15
        :pswitch_15
        :pswitch_3b
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 5443
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o getActionTag()I
    .registers 2

    .line 5433
    const/16 v0, 0x13

    return v0
.end method

.method public greylist-max-o getUniqueKey()Ljava/lang/String;
    .registers 3

    .line 5438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/RemoteViews$Action;->getUniqueKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 5311
    iget p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5312
    iget p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5313
    iget p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5314
    iget p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5315
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 8

    .line 5448
    const-wide v0, 0x10b00000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5449
    iget p2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mViewId:I

    .line 5450
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 5449
    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5451
    const-wide p2, 0x10500000002L

    iget v2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mProperty:I

    invoke-virtual {p1, p2, p3, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5452
    const-wide p2, 0x10500000003L

    iget v2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValue:I

    invoke-virtual {p1, p2, p3, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5453
    const-wide p2, 0x10500000004L

    iget v2, p0, Landroid/widget/RemoteViews$LayoutParamAction;->mValueType:I

    invoke-virtual {p1, p2, p3, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5454
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5455
    return-void
.end method
