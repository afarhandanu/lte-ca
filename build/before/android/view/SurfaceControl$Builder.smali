.class public Landroid/view/SurfaceControl$Builder;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallsite:Ljava/lang/String;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mFormat:I

.field private greylist-max-o mHeight:I

.field private blacklist mLocalOwnerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMetadata:Landroid/util/SparseIntArray;

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mParent:Landroid/view/SurfaceControl;

.field private greylist-max-o mSession:Landroid/view/SurfaceSession;

.field private greylist-max-o mWidth:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 1187
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFormat:I

    .line 1192
    const-string v0, "SurfaceControl.Builder"

    iput-object v0, p0, Landroid/view/SurfaceControl$Builder;->mCallsite:Ljava/lang/String;

    .line 1208
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/view/SurfaceSession;)V
    .registers 3

    .line 1200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1184
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 1187
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFormat:I

    .line 1192
    const-string v0, "SurfaceControl.Builder"

    iput-object v0, p0, Landroid/view/SurfaceControl$Builder;->mCallsite:Ljava/lang/String;

    .line 1201
    iput-object p1, p0, Landroid/view/SurfaceControl$Builder;->mSession:Landroid/view/SurfaceSession;

    .line 1202
    return-void
.end method

.method private blacklist isContainerLayer()Z
    .registers 3

    .line 1473
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private blacklist isEffectLayer()Z
    .registers 3

    .line 1449
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private blacklist setFlags(II)Landroid/view/SurfaceControl$Builder;
    .registers 4

    .line 1501
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 1502
    return-object p0
.end method

.method private blacklist unsetBufferSize()V
    .registers 2

    .line 1290
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mWidth:I

    .line 1291
    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mHeight:I

    .line 1292
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/SurfaceControl;
    .registers 14

    .line 1216
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mWidth:I

    if-ltz v0, :cond_59

    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mHeight:I

    if-ltz v0, :cond_59

    .line 1220
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mWidth:I

    if-gtz v0, :cond_10

    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mHeight:I

    if-lez v0, :cond_1c

    :cond_10
    invoke-direct {p0}, Landroid/view/SurfaceControl$Builder;->isEffectLayer()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-direct {p0}, Landroid/view/SurfaceControl$Builder;->isContainerLayer()Z

    move-result v0

    if-nez v0, :cond_51

    .line 1225
    :cond_1c
    iget-object v0, p0, Landroid/view/SurfaceControl$Builder;->mName:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 1226
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "SurfaceControl"

    const-string v2, "Missing name for SurfaceControl"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    :cond_2c
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    const/high16 v1, 0xf0000

    and-int/2addr v0, v1

    if-nez v0, :cond_36

    .line 1230
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    .line 1233
    :cond_36
    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/view/SurfaceControl$Builder;->mSession:Landroid/view/SurfaceSession;

    iget-object v3, p0, Landroid/view/SurfaceControl$Builder;->mName:Ljava/lang/String;

    iget v4, p0, Landroid/view/SurfaceControl$Builder;->mWidth:I

    iget v5, p0, Landroid/view/SurfaceControl$Builder;->mHeight:I

    iget v6, p0, Landroid/view/SurfaceControl$Builder;->mFormat:I

    iget v7, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    iget-object v8, p0, Landroid/view/SurfaceControl$Builder;->mParent:Landroid/view/SurfaceControl;

    iget-object v9, p0, Landroid/view/SurfaceControl$Builder;->mMetadata:Landroid/util/SparseIntArray;

    iget-object v10, p0, Landroid/view/SurfaceControl$Builder;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    iget-object v11, p0, Landroid/view/SurfaceControl$Builder;->mCallsite:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILandroid/view/SurfaceControl;Landroid/util/SparseIntArray;Ljava/lang/ref/WeakReference;Ljava/lang/String;Landroid/view/SurfaceControl-IA;)V

    return-object v1

    .line 1221
    :cond_51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only buffer layers can set a valid buffer size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1217
    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "width and height must be positive or unset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setBLASTLayer()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 1456
    const/high16 v0, 0x40000

    const/high16 v1, 0xf0000

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setBufferSize(II)Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 1279
    if-ltz p1, :cond_10

    if-ltz p2, :cond_10

    .line 1283
    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mWidth:I

    .line 1284
    iput p2, p0, Landroid/view/SurfaceControl$Builder;->mHeight:I

    .line 1286
    const/4 p1, 0x0

    const/high16 p2, 0xf0000

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceControl$Builder;->setFlags(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    return-object p1

    .line 1280
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "width and height must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1496
    iput-object p1, p0, Landroid/view/SurfaceControl$Builder;->mCallsite:Ljava/lang/String;

    .line 1497
    return-object p0
.end method

.method public blacklist setColorLayer()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 1444
    invoke-direct {p0}, Landroid/view/SurfaceControl$Builder;->unsetBufferSize()V

    .line 1445
    const/high16 v0, 0x20000

    const/high16 v1, 0xf0000

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setContainerLayer()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 1468
    invoke-direct {p0}, Landroid/view/SurfaceControl$Builder;->unsetBufferSize()V

    .line 1469
    const/high16 v0, 0x80000

    const/high16 v1, 0xf0000

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setEffectLayer()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 1432
    iget v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 1433
    invoke-direct {p0}, Landroid/view/SurfaceControl$Builder;->unsetBufferSize()V

    .line 1434
    const/high16 v0, 0x20000

    const/high16 v1, 0xf0000

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setFlags(I)Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1484
    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 1485
    return-object p0
.end method

.method public whitelist setFormat(I)Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1300
    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFormat:I

    .line 1301
    return-object p0
.end method

.method public whitelist setHidden(Z)Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1380
    if-eqz p1, :cond_9

    .line 1381
    iget p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    goto :goto_f

    .line 1383
    :cond_9
    iget p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 1385
    :goto_f
    return-object p0
.end method

.method public blacklist setLocalOwnerView(Landroid/view/View;)Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 1266
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/SurfaceControl$Builder;->mLocalOwnerView:Ljava/lang/ref/WeakReference;

    .line 1267
    return-object p0
.end method

.method public greylist-max-o setMetadata(II)Landroid/view/SurfaceControl$Builder;
    .registers 4

    .line 1411
    iget-object v0, p0, Landroid/view/SurfaceControl$Builder;->mMetadata:Landroid/util/SparseIntArray;

    if-nez v0, :cond_b

    .line 1412
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Builder;->mMetadata:Landroid/util/SparseIntArray;

    .line 1414
    :cond_b
    iget-object v0, p0, Landroid/view/SurfaceControl$Builder;->mMetadata:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1415
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1245
    iput-object p1, p0, Landroid/view/SurfaceControl$Builder;->mName:Ljava/lang/String;

    .line 1246
    return-object p0
.end method

.method public whitelist setOpaque(Z)Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1365
    if-eqz p1, :cond_9

    .line 1366
    iget p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    goto :goto_f

    .line 1368
    :cond_9
    iget p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 1370
    :goto_f
    return-object p0
.end method

.method public whitelist setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1399
    iput-object p1, p0, Landroid/view/SurfaceControl$Builder;->mParent:Landroid/view/SurfaceControl;

    .line 1400
    return-object p0
.end method

.method public greylist-max-o setProtected(Z)Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1315
    if-eqz p1, :cond_9

    .line 1316
    iget p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    goto :goto_f

    .line 1318
    :cond_9
    iget p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    and-int/lit16 p1, p1, -0x801

    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 1320
    :goto_f
    return-object p0
.end method

.method public greylist-max-o setSecure(Z)Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1332
    if-eqz p1, :cond_9

    .line 1333
    iget p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    goto :goto_f

    .line 1335
    :cond_9
    iget p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Landroid/view/SurfaceControl$Builder;->mFlags:I

    .line 1337
    :goto_f
    return-object p0
.end method
