.class final Landroid/widget/RemoteViews$ResourceReflectionAction;
.super Landroid/widget/RemoteViews$BaseReflectionAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceReflectionAction"
.end annotation


# static fields
.field static final blacklist COLOR_RESOURCE:I = 0x2

.field static final blacklist DIMEN_RESOURCE:I = 0x1

.field static final blacklist STRING_RESOURCE:I = 0x3


# instance fields
.field private final blacklist mResId:I

.field private final blacklist mResourceType:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;III)V
    .registers 6

    .line 3373
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(ILjava/lang/String;I)V

    .line 3374
    iput p4, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    .line 3375
    iput p5, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    .line 3376
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 3379
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BaseReflectionAction;-><init>(Landroid/os/Parcel;)V

    .line 3380
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    .line 3381
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    .line 3382
    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/widget/RemoteViews$PendingResources;
    .registers 7
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

    .line 3470
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 3472
    const-wide v1, 0x10b00000008L

    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 3473
    :goto_e
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_87

    .line 3474
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    packed-switch v3, :pswitch_data_9a

    .line 3499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled field while reading RemoteViews proto!\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3500
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3499
    const-string v4, "RemoteViews"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 3494
    :pswitch_39
    nop

    .line 3495
    const-wide v3, 0x10500000005L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3494
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3497
    goto :goto_e

    .line 3490
    :pswitch_4b
    nop

    .line 3491
    const-wide v3, 0x10900000004L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3490
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3492
    goto :goto_e

    .line 3485
    :pswitch_59
    nop

    .line 3486
    const-wide v3, 0x10500000003L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3485
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3488
    goto :goto_e

    .line 3480
    :pswitch_6b
    nop

    .line 3481
    const-wide v3, 0x10900000002L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3480
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3483
    goto :goto_e

    .line 3476
    :pswitch_79
    nop

    .line 3477
    const-wide v3, 0x10900000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v5

    .line 3476
    invoke-virtual {v0, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 3478
    goto :goto_e

    .line 3503
    :cond_87
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 3505
    const/4 p0, 0x3

    new-array p0, p0, [J

    fill-array-data p0, :array_a8

    invoke-static {v0, p0}, Landroid/widget/RemoteViews;->-$$Nest$smcheckContainsKeys(Landroid/util/LongSparseArray;[J)V

    .line 3509
    new-instance p0, Landroid/widget/RemoteViews$ResourceReflectionAction$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$ResourceReflectionAction$$ExternalSyntheticLambda0;-><init>(Landroid/util/LongSparseArray;)V

    return-object p0

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_79
        :pswitch_6b
        :pswitch_59
        :pswitch_4b
        :pswitch_39
    .end packed-switch

    :array_a8
    .array-data 8
        0x10900000001L
        0x10900000002L
        0x10500000005L
    .end array-data
.end method

.method static synthetic blacklist lambda$createFromProto$0(Landroid/util/LongSparseArray;Landroid/content/Context;Landroid/content/res/Resources;Landroid/widget/RemoteViews$HierarchyRootData;I)Landroid/widget/RemoteViews$Action;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3510
    const-wide p3, 0x10900000001L

    invoke-static {p2, p0, p3, p4}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result v1

    .line 3513
    const-wide p3, 0x10900000004L

    invoke-virtual {p0, p3, p4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_1b

    .line 3514
    invoke-static {p2, p0, p3, p4}, Landroid/widget/RemoteViews;->-$$Nest$smgetAsIdentifier(Landroid/content/res/Resources;Landroid/util/LongSparseArray;J)I

    move-result p1

    move v5, p1

    goto :goto_1c

    .line 3515
    :cond_1b
    move v5, v0

    .line 3516
    :goto_1c
    move p1, v0

    new-instance v0, Landroid/widget/RemoteViews$ResourceReflectionAction;

    .line 3517
    const-wide p2, 0x10900000002L

    invoke-virtual {p0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 3518
    const-wide p2, 0x10500000005L

    invoke-virtual {p0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3520
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 3519
    const-wide p2, 0x10500000003L

    invoke-virtual {p0, p2, p3, p1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ResourceReflectionAction;-><init>(ILjava/lang/String;III)V

    .line 3516
    return-object v0
.end method


# virtual methods
.method public blacklist canWriteToProto()Z
    .registers 2

    .line 3450
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 3445
    const/16 v0, 0x18

    return v0
.end method

.method protected blacklist getParameterValue(Landroid/view/View;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 3394
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 3396
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3398
    :try_start_c
    iget v2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_100

    .line 3434
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    goto/16 :goto_dc

    .line 3423
    :pswitch_16
    iget p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    packed-switch p1, :pswitch_data_10a

    .line 3429
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_38

    .line 3425
    :pswitch_1e
    iget p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez p1, :cond_23

    :goto_22
    goto :goto_2a

    :cond_23
    iget p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_22

    :goto_2a
    return-object v0

    .line 3427
    :pswitch_2b
    iget p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez p1, :cond_30

    :goto_2f
    goto :goto_37

    :cond_30
    iget p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :goto_37
    return-object v0

    .line 3429
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "string resources must be used as STRING or CHAR_SEQUENCE, not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3411
    :pswitch_52
    iget v1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    sparse-switch v1, :sswitch_data_112

    .line 3418
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_80

    .line 3415
    :sswitch_5a
    iget v1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v1, :cond_5f

    .line 3416
    :goto_5e
    goto :goto_6a

    :cond_5f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_5e

    .line 3415
    :goto_6a
    return-object v0

    .line 3413
    :sswitch_6b
    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez v0, :cond_70

    :goto_6f
    goto :goto_7b

    :cond_70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_6f

    :goto_7b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3418
    :goto_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color resources must be used as INT or COLOR_STATE_LIST, not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3400
    :pswitch_99
    iget p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    packed-switch p1, :pswitch_data_11c

    .line 3406
    :pswitch_9e
    new-instance p1, Landroid/widget/RemoteViews$ActionException;

    goto :goto_c3

    .line 3404
    :pswitch_a1
    iget p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez p1, :cond_a7

    const/4 p1, 0x0

    goto :goto_ad

    :cond_a7
    iget p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_ad
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 3402
    :pswitch_b2
    iget p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-nez p1, :cond_b7

    :goto_b6
    goto :goto_be

    :cond_b7
    iget p1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_b6

    :goto_be
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3406
    :goto_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dimen resources must be used as INT or FLOAT, not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3434
    :goto_dc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown resource type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_f6
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_c .. :try_end_f6} :catch_fd
    .catchall {:try_start_c .. :try_end_f6} :catchall_f6

    .line 3438
    :catchall_f6
    move-exception p1

    .line 3439
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3436
    :catch_fd
    move-exception p1

    .line 3437
    throw p1

    nop

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_99
        :pswitch_52
        :pswitch_16
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x9
        :pswitch_2b
        :pswitch_1e
    .end packed-switch

    :sswitch_data_112
    .sparse-switch
        0x4 -> :sswitch_6b
        0xf -> :sswitch_5a
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x4
        :pswitch_b2
        :pswitch_9e
        :pswitch_a1
    .end packed-switch
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 3386
    invoke-super {p0, p1, p2}, Landroid/widget/RemoteViews$BaseReflectionAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3387
    iget p2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3388
    iget p2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3389
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 8

    .line 3455
    const-wide v0, 0x10b00000008L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3456
    iget p2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mViewId:I

    .line 3457
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 3456
    const-wide v2, 0x10900000001L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3458
    const-wide v2, 0x10900000002L

    iget-object p2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3459
    const-wide v2, 0x10500000005L

    iget p2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mType:I

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3460
    const-wide v2, 0x10500000003L

    iget p2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResourceType:I

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3461
    iget p2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    if-eqz p2, :cond_47

    .line 3462
    iget p2, p0, Landroid/widget/RemoteViews$ResourceReflectionAction;->mResId:I

    .line 3463
    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p2

    .line 3462
    const-wide v2, 0x10900000004L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3465
    :cond_47
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3466
    return-void
.end method
