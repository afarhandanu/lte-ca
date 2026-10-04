.class public final Landroid/view/translation/TranslationResponse$Builder;
.super Landroid/view/translation/TranslationResponse$BaseBuilder;
.source "TranslationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mFinalResponse:Z

.field private blacklist mTranslationResponseValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTranslationStatus:I

.field private blacklist mViewTranslationResponses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewTranslationResponses(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor whitelist <init>(I)V
    .registers 6

    .line 354
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$BaseBuilder;-><init>()V

    .line 345
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 355
    iput p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    .line 357
    iget p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    if-eqz p1, :cond_59

    iget p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_59

    iget p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_18

    goto :goto_59

    .line 360
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "translationStatus was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: TRANSLATION_STATUS_SUCCESS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), TRANSLATION_STATUS_UNKNOWN_ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), TRANSLATION_STATUS_CONTEXT_UNSUPPORTED("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_59
    :goto_59
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 444
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 448
    return-void

    .line 445
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/translation/TranslationResponse;
    .registers 7

    .line 423
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    .line 424
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 426
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 427
    invoke-static {}, Landroid/view/translation/TranslationResponse;->-$$Nest$smdefaultTranslationResponseValues()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    .line 429
    :cond_1b
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2a

    .line 430
    invoke-static {}, Landroid/view/translation/TranslationResponse;->-$$Nest$smdefaultViewTranslationResponses()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    .line 432
    :cond_2a
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_39

    .line 433
    invoke-static {}, Landroid/view/translation/TranslationResponse;->-$$Nest$smdefaultFinalResponse()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mFinalResponse:Z

    .line 435
    :cond_39
    new-instance v0, Landroid/view/translation/TranslationResponse;

    iget v1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    iget-object v2, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    iget-object v3, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    iget-boolean v4, p0, Landroid/view/translation/TranslationResponse$Builder;->mFinalResponse:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/translation/TranslationResponse;-><init>(ILandroid/util/SparseArray;Landroid/util/SparseArray;Z)V

    .line 440
    return-object v0
.end method

.method public whitelist setFinalResponse(Z)Landroid/view/translation/TranslationResponse$Builder;
    .registers 6

    .line 415
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    .line 416
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 417
    iput-boolean p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mFinalResponse:Z

    .line 418
    return-object p0
.end method

.method public bridge synthetic whitelist setTranslationResponseValue(ILandroid/view/translation/TranslationResponseValue;)Landroid/view/translation/TranslationResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 336
    invoke-super {p0, p1, p2}, Landroid/view/translation/TranslationResponse$BaseBuilder;->setTranslationResponseValue(ILandroid/view/translation/TranslationResponseValue;)Landroid/view/translation/TranslationResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setTranslationResponseValues(Landroid/util/SparseArray;)Landroid/view/translation/TranslationResponse$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;)",
            "Landroid/view/translation/TranslationResponse$Builder;"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    .line 390
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 391
    iput-object p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationResponseValues:Landroid/util/SparseArray;

    .line 392
    return-object p0
.end method

.method public greylist setTranslationStatus(I)Landroid/view/translation/TranslationResponse$Builder;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    .line 378
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 379
    iput p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mTranslationStatus:I

    .line 380
    return-object p0
.end method

.method public bridge synthetic whitelist setViewTranslationResponse(ILandroid/view/translation/ViewTranslationResponse;)Landroid/view/translation/TranslationResponse$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 336
    invoke-super {p0, p1, p2}, Landroid/view/translation/TranslationResponse$BaseBuilder;->setViewTranslationResponse(ILandroid/view/translation/ViewTranslationResponse;)Landroid/view/translation/TranslationResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setViewTranslationResponses(Landroid/util/SparseArray;)Landroid/view/translation/TranslationResponse$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;)",
            "Landroid/view/translation/TranslationResponse$Builder;"
        }
    .end annotation

    .line 401
    invoke-direct {p0}, Landroid/view/translation/TranslationResponse$Builder;->checkNotUsed()V

    .line 402
    iget-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponse$Builder;->mBuilderFieldsSet:J

    .line 403
    iput-object p1, p0, Landroid/view/translation/TranslationResponse$Builder;->mViewTranslationResponses:Landroid/util/SparseArray;

    .line 404
    return-object p0
.end method
