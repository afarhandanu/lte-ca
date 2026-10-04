.class public final Landroid/view/translation/TranslationResponse;
.super Ljava/lang/Object;
.source "TranslationResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationResponse$Builder;,
        Landroid/view/translation/TranslationResponse$TranslationStatus;,
        Landroid/view/translation/TranslationResponse$BaseBuilder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TRANSLATION_STATUS_CONTEXT_UNSUPPORTED:I = 0x2

.field public static final whitelist TRANSLATION_STATUS_SUCCESS:I = 0x0

.field public static final whitelist TRANSLATION_STATUS_UNKNOWN_ERROR:I = 0x1


# instance fields
.field private final blacklist mFinalResponse:Z

.field private final blacklist mTranslationResponseValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTranslationStatus:I

.field private final blacklist mViewTranslationResponses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultFinalResponse()Z
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponse;->defaultFinalResponse()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultTranslationResponseValues()Landroid/util/SparseArray;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponse;->defaultTranslationResponseValues()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultViewTranslationResponses()Landroid/util/SparseArray;
    .registers 1

    invoke-static {}, Landroid/view/translation/TranslationResponse;->defaultViewTranslationResponses()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 320
    new-instance v0, Landroid/view/translation/TranslationResponse$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationResponse$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/util/SparseArray;Landroid/util/SparseArray;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;Z)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput p1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    .line 191
    iget p1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    if-eqz p1, :cond_55

    iget p1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_55

    iget p1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_14

    goto :goto_55

    .line 194
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "translationStatus was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " but must be one of: TRANSLATION_STATUS_SUCCESS("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), TRANSLATION_STATUS_UNKNOWN_ERROR("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "), TRANSLATION_STATUS_CONTEXT_UNSUPPORTED("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 201
    :cond_55
    :goto_55
    iput-object p2, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    .line 202
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 204
    iput-object p3, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    .line 205
    const-class p1, Landroid/annotation/NonNull;

    iget-object p2, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 207
    iput-boolean p4, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    .line 210
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 289
    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 290
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 291
    const-class v4, Landroid/view/translation/TranslationResponseValue;

    .line 292
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-class v5, Landroid/view/translation/TranslationResponseValue;

    .line 291
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v4

    .line 293
    const-class v5, Landroid/view/translation/ViewTranslationResponse;

    .line 294
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-class v6, Landroid/view/translation/ViewTranslationResponse;

    .line 293
    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object p1

    .line 296
    iput v3, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    .line 298
    iget v3, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    if-eqz v3, :cond_7c

    iget v3, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    if-eq v3, v2, :cond_7c

    iget v3, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3c

    goto :goto_7c

    .line 301
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "translationStatus was "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " but must be one of: TRANSLATION_STATUS_SUCCESS("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), TRANSLATION_STATUS_UNKNOWN_ERROR("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), TRANSLATION_STATUS_CONTEXT_UNSUPPORTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 308
    :cond_7c
    :goto_7c
    iput-object v4, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    .line 309
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 311
    iput-object p1, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    .line 312
    const-class p1, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    invoke-static {p1, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 314
    iput-boolean v0, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    .line 317
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 457
    return-void
.end method

.method private static blacklist defaultFinalResponse()Z
    .registers 1

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist defaultTranslationResponseValues()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method private static blacklist defaultViewTranslationResponses()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public static blacklist translationStatusToString(I)Ljava/lang/String;
    .registers 1

    .line 172
    packed-switch p0, :pswitch_data_12

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :pswitch_8
    const-string p0, "TRANSLATION_STATUS_CONTEXT_UNSUPPORTED"

    return-object p0

    .line 176
    :pswitch_b
    const-string p0, "TRANSLATION_STATUS_UNKNOWN_ERROR"

    return-object p0

    .line 174
    :pswitch_e
    const-string p0, "TRANSLATION_STATUS_SUCCESS"

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTranslationResponseValues()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getTranslationStatus()I
    .registers 2

    .line 217
    iget v0, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    return v0
.end method

.method public whitelist getViewTranslationResponses()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/translation/ViewTranslationResponse;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist isFinalResponse()Z
    .registers 2

    .line 246
    iget-boolean v0, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationResponse { translationStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    .line 256
    invoke-static {v1}, Landroid/view/translation/TranslationResponse;->translationStatusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translationResponseValues = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", viewTranslationResponses = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finalResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 269
    nop

    .line 270
    iget-boolean p2, p0, Landroid/view/translation/TranslationResponse;->mFinalResponse:Z

    if-eqz p2, :cond_9

    const/16 p2, 0x8

    int-to-byte p2, p2

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    .line 271
    :goto_a
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 272
    iget p2, p0, Landroid/view/translation/TranslationResponse;->mTranslationStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object p2, p0, Landroid/view/translation/TranslationResponse;->mTranslationResponseValues:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 274
    iget-object p2, p0, Landroid/view/translation/TranslationResponse;->mViewTranslationResponses:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 275
    return-void
.end method
