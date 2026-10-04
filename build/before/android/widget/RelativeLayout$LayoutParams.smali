.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$LayoutParams$InspectionCompanion;
    }
.end annotation


# instance fields
.field public whitelist alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private greylist mBottom:I

.field private greylist-max-o mInitialRules:[I

.field private greylist-max-o mIsRtlCompatibilityMode:Z

.field private greylist mLeft:I

.field private greylist-max-o mNeedsLayoutResolution:Z

.field private greylist mRight:I

.field private greylist-max-o mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private greylist-max-o mRulesChanged:Z

.field private greylist mTop:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBottom(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeft(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRight(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRules(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .registers 1

    iget-object p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTop(Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 1

    iget p0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBottom(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLeft(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRight(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTop(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 2

    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3

    .line 1391
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1239
    const/16 p1, 0x16

    new-array p2, p1, [I

    iput-object p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1392
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12

    .line 1296
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1298
    sget-object v2, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1301
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1302
    const/4 v3, 0x1

    const/16 v4, 0x11

    if-lt v2, v4, :cond_30

    .line 1303
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_30

    :cond_2e
    move p1, v1

    goto :goto_31

    :cond_30
    :goto_30
    move p1, v3

    :goto_31
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1305
    iget-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1307
    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1309
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    .line 1310
    move v6, v1

    :goto_3c
    if-ge v6, v5, :cond_13d

    .line 1311
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    .line 1312
    const/4 v8, -0x1

    packed-switch v7, :pswitch_data_146

    goto/16 :goto_139

    .line 1380
    :pswitch_48
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4f

    goto :goto_50

    :cond_4f
    move v8, v1

    :goto_50
    const/16 v7, 0x15

    aput v8, p1, v7

    goto/16 :goto_139

    .line 1377
    :pswitch_56
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5d

    goto :goto_5e

    :cond_5d
    move v8, v1

    :goto_5e
    const/16 v7, 0x14

    aput v8, p1, v7

    .line 1378
    goto/16 :goto_139

    .line 1374
    :pswitch_64
    const/16 v8, 0x13

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    .line 1375
    goto/16 :goto_139

    .line 1371
    :pswitch_6e
    const/16 v8, 0x12

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    .line 1372
    goto/16 :goto_139

    .line 1368
    :pswitch_78
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v4

    .line 1369
    goto/16 :goto_139

    .line 1365
    :pswitch_80
    const/16 v8, 0x10

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    .line 1366
    goto/16 :goto_139

    .line 1314
    :pswitch_8a
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1315
    goto/16 :goto_139

    .line 1362
    :pswitch_92
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_99

    goto :goto_9a

    :cond_99
    move v8, v1

    :goto_9a
    const/16 v7, 0xf

    aput v8, p1, v7

    .line 1363
    goto/16 :goto_139

    .line 1359
    :pswitch_a0
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_a7

    goto :goto_a8

    :cond_a7
    move v8, v1

    :goto_a8
    const/16 v7, 0xe

    aput v8, p1, v7

    .line 1360
    goto/16 :goto_139

    .line 1356
    :pswitch_ae
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_b5

    goto :goto_b6

    :cond_b5
    move v8, v1

    :goto_b6
    const/16 v7, 0xd

    aput v8, p1, v7

    .line 1357
    goto/16 :goto_139

    .line 1353
    :pswitch_bc
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_c3

    goto :goto_c4

    :cond_c3
    move v8, v1

    :goto_c4
    const/16 v7, 0xc

    aput v8, p1, v7

    .line 1354
    goto/16 :goto_139

    .line 1350
    :pswitch_ca
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_d1

    goto :goto_d2

    :cond_d1
    move v8, v1

    :goto_d2
    const/16 v7, 0xb

    aput v8, p1, v7

    .line 1351
    goto/16 :goto_139

    .line 1347
    :pswitch_d8
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_df

    goto :goto_e0

    :cond_df
    move v8, v1

    :goto_e0
    const/16 v7, 0xa

    aput v8, p1, v7

    .line 1348
    goto :goto_139

    .line 1344
    :pswitch_e5
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_ec

    goto :goto_ed

    :cond_ec
    move v8, v1

    :goto_ed
    const/16 v7, 0x9

    aput v8, p1, v7

    .line 1345
    goto :goto_139

    .line 1341
    :pswitch_f2
    const/16 v8, 0x8

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    .line 1342
    goto :goto_139

    .line 1338
    :pswitch_fb
    const/4 v8, 0x7

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    .line 1339
    goto :goto_139

    .line 1335
    :pswitch_103
    const/4 v8, 0x6

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    .line 1336
    goto :goto_139

    .line 1332
    :pswitch_10b
    const/4 v8, 0x5

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    .line 1333
    goto :goto_139

    .line 1329
    :pswitch_113
    const/4 v8, 0x4

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    .line 1330
    goto :goto_139

    .line 1326
    :pswitch_11b
    const/4 v8, 0x3

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    .line 1327
    goto :goto_139

    .line 1323
    :pswitch_123
    const/4 v8, 0x2

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v8

    .line 1324
    goto :goto_139

    .line 1320
    :pswitch_12b
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v3

    .line 1321
    goto :goto_139

    .line 1317
    :pswitch_132
    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, p1, v1

    .line 1318
    nop

    .line 1310
    :goto_139
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3c

    .line 1384
    :cond_13d
    iput-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1385
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1387
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1388
    return-void

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_132
        :pswitch_12b
        :pswitch_123
        :pswitch_11b
        :pswitch_113
        :pswitch_10b
        :pswitch_103
        :pswitch_fb
        :pswitch_f2
        :pswitch_e5
        :pswitch_d8
        :pswitch_ca
        :pswitch_bc
        :pswitch_ae
        :pswitch_a0
        :pswitch_92
        :pswitch_8a
        :pswitch_80
        :pswitch_78
        :pswitch_6e
        :pswitch_64
        :pswitch_56
        :pswitch_48
    .end packed-switch
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 1398
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1239
    const/16 p1, 0x16

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1399
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .line 1405
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1239
    const/16 p1, 0x16

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1406
    return-void
.end method

.method public constructor whitelist <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .registers 6

    .line 1415
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1239
    const/16 v0, 0x16

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1285
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1286
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1417
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1418
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1419
    iget-boolean v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1421
    iget-object v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1422
    iget-object p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1424
    return-void
.end method

.method private greylist-max-o hasRelativeRules()Z
    .registers 3

    .line 1525
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, 0x1

    :goto_34
    return v0
.end method

.method private greylist-max-o isRelativeRule(I)Z
    .registers 3

    .line 1531
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x15

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    :goto_1c
    return p1
.end method

.method private greylist-max-o resolveRules(I)V
    .registers 19

    .line 1550
    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    if-ne v3, v2, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    .line 1553
    :goto_b
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x16

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1556
    iget-boolean v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    const/16 v5, 0xb

    const/16 v6, 0x9

    const/4 v7, 0x7

    const/4 v8, 0x5

    const/16 v9, 0x15

    const/16 v10, 0x14

    const/16 v11, 0x11

    const/16 v12, 0x10

    const/16 v13, 0x13

    const/16 v14, 0x12

    if-eqz v4, :cond_bc

    .line 1557
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v14

    if-eqz v3, :cond_42

    .line 1558
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-nez v3, :cond_3e

    .line 1561
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v14

    aput v4, v3, v8

    .line 1563
    :cond_3e
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v3, v14

    .line 1566
    :cond_42
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v13

    if-eqz v3, :cond_5a

    .line 1567
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-nez v3, :cond_56

    .line 1570
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v13

    aput v4, v3, v7

    .line 1572
    :cond_56
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v3, v13

    .line 1575
    :cond_5a
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v12

    if-eqz v3, :cond_72

    .line 1576
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v1

    if-nez v3, :cond_6e

    .line 1579
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v12

    aput v4, v3, v1

    .line 1581
    :cond_6e
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v3, v12

    .line 1584
    :cond_72
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v11

    if-eqz v3, :cond_8a

    .line 1585
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_86

    .line 1588
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v11

    aput v4, v3, v2

    .line 1590
    :cond_86
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v11

    .line 1593
    :cond_8a
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v10

    if-eqz v2, :cond_a2

    .line 1594
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v6

    if-nez v2, :cond_9e

    .line 1597
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v10

    aput v3, v2, v6

    .line 1599
    :cond_9e
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v10

    .line 1602
    :cond_a2
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v9

    if-eqz v2, :cond_19f

    .line 1603
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v5

    if-nez v2, :cond_b6

    .line 1606
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v9

    aput v3, v2, v5

    .line 1608
    :cond_b6
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v9

    goto/16 :goto_19f

    .line 1612
    :cond_bc
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v14

    if-nez v4, :cond_c8

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v13

    if-eqz v4, :cond_dc

    :cond_c8
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    if-nez v4, :cond_d4

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v7

    if-eqz v4, :cond_dc

    .line 1615
    :cond_d4
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v4, v8

    .line 1616
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v4, v7

    .line 1618
    :cond_dc
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v14

    if-eqz v4, :cond_f6

    .line 1620
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v3, :cond_e8

    move v15, v7

    goto :goto_e9

    :cond_e8
    move v15, v8

    :goto_e9
    move/from16 v16, v2

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v14

    aput v2, v4, v15

    .line 1621
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v14

    goto :goto_f8

    .line 1618
    :cond_f6
    move/from16 v16, v2

    .line 1623
    :goto_f8
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v13

    if-eqz v2, :cond_10d

    .line 1625
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v3, :cond_103

    move v7, v8

    :cond_103
    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v13

    aput v4, v2, v7

    .line 1626
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v13

    .line 1629
    :cond_10d
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v12

    if-nez v2, :cond_119

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v11

    if-eqz v2, :cond_12d

    :cond_119
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v1

    if-nez v2, :cond_125

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v16

    if-eqz v2, :cond_12d

    .line 1632
    :cond_125
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v1

    .line 1633
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v16

    .line 1635
    :cond_12d
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v12

    if-eqz v2, :cond_13f

    .line 1637
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v12

    aput v4, v2, v3

    .line 1638
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v12

    .line 1640
    :cond_13f
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v11

    if-eqz v2, :cond_153

    .line 1642
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    xor-int/lit8 v4, v3, 0x1

    iget-object v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v7, v7, v11

    aput v7, v2, v4

    .line 1643
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v11

    .line 1646
    :cond_153
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v10

    if-nez v2, :cond_15f

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v9

    if-eqz v2, :cond_173

    :cond_15f
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v6

    if-nez v2, :cond_16b

    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v5

    if-eqz v2, :cond_173

    .line 1649
    :cond_16b
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v6

    .line 1650
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v5

    .line 1652
    :cond_173
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v10

    if-eqz v2, :cond_18a

    .line 1654
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v3, :cond_17f

    move v4, v5

    goto :goto_180

    :cond_17f
    move v4, v6

    :goto_180
    iget-object v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v7, v7, v10

    aput v7, v2, v4

    .line 1655
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v10

    .line 1657
    :cond_18a
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v2, v2, v9

    if-eqz v2, :cond_19f

    .line 1659
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v3, :cond_195

    move v5, v6

    :cond_195
    iget-object v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v9

    aput v3, v2, v5

    .line 1660
    iget-object v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v2, v9

    .line 1664
    :cond_19f
    :goto_19f
    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1665
    iput-boolean v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1666
    return-void
.end method

.method private greylist-max-o shouldResolveLayoutDirection(I)Z
    .registers 3

    .line 1719
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_a
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_17

    .line 1720
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    .line 1719
    :goto_18
    return p1
.end method


# virtual methods
.method public whitelist addRule(I)V
    .registers 3

    .line 1452
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1453
    return-void
.end method

.method public whitelist addRule(II)V
    .registers 5

    .line 1478
    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->isRelativeRule(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aget v0, v0, p1

    if-eqz v0, :cond_15

    if-nez p2, :cond_15

    .line 1480
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mNeedsLayoutResolution:Z

    .line 1483
    :cond_15
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1484
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1485
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1486
    return-void
.end method

.method public whitelist debug(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ViewGroup.LayoutParams={ width="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", height="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1429
    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " }"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1428
    return-object p1
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    .line 1726
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1727
    const-string v0, "layout:alignWithParent"

    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1728
    return-void
.end method

.method public whitelist getRule(I)I
    .registers 3

    .line 1521
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget p1, v0, p1

    return p1
.end method

.method public whitelist getRules()[I
    .registers 2

    .line 1696
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public greylist-max-o getRules(I)[I
    .registers 2

    .line 1683
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 1684
    iget-object p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object p1
.end method

.method public whitelist removeRule(I)V
    .registers 3

    .line 1505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1506
    return-void
.end method

.method public whitelist resolveLayoutDirection(I)V
    .registers 3

    .line 1710
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->shouldResolveLayoutDirection(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1711
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1715
    :cond_9
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1716
    return-void
.end method
