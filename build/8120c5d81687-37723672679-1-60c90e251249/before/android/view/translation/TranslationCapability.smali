.class public final Landroid/view/translation/TranslationCapability;
.super Ljava/lang/Object;
.source "TranslationCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationCapability$ModelState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATE_AVAILABLE_TO_DOWNLOAD:I = 0x1

.field public static final whitelist STATE_DOWNLOADING:I = 0x2

.field public static final whitelist STATE_NOT_AVAILABLE:I = 0x4

.field public static final whitelist STATE_ON_DEVICE:I = 0x3

.field public static final blacklist STATE_REMOVED_AND_AVAILABLE:I = 0x3e8


# instance fields
.field private final blacklist mSourceSpec:Landroid/view/translation/TranslationSpec;

.field private final blacklist mState:I

.field private final blacklist mSupportedTranslationFlags:I

.field private final blacklist mTargetSpec:Landroid/view/translation/TranslationSpec;

.field private final blacklist mUiTranslationEnabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 297
    new-instance v0, Landroid/view/translation/TranslationCapability$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationCapability$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ZI)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string/jumbo v0, "sourceSpec should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "targetSpec should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iput p1, p0, Landroid/view/translation/TranslationCapability;->mState:I

    .line 121
    iput-object p2, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    .line 122
    iput-object p3, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    .line 123
    iput-boolean p4, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    .line 124
    iput p5, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    .line 125
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 260
    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 261
    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 262
    sget-object v3, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/translation/TranslationSpec;

    .line 263
    sget-object v4, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/translation/TranslationSpec;

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 266
    iput v2, p0, Landroid/view/translation/TranslationCapability;->mState:I

    .line 268
    iget v2, p0, Landroid/view/translation/TranslationCapability;->mState:I

    if-eq v2, v1, :cond_97

    iget v2, p0, Landroid/view/translation/TranslationCapability;->mState:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_97

    iget v2, p0, Landroid/view/translation/TranslationCapability;->mState:I

    const/4 v6, 0x3

    if-eq v2, v6, :cond_97

    iget v2, p0, Landroid/view/translation/TranslationCapability;->mState:I

    const/4 v7, 0x4

    if-eq v2, v7, :cond_97

    iget v2, p0, Landroid/view/translation/TranslationCapability;->mState:I

    const/16 v8, 0x3e8

    if-ne v2, v8, :cond_43

    goto :goto_97

    .line 273
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state was "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/translation/TranslationCapability;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but must be one of: STATE_AVAILABLE_TO_DOWNLOAD("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), STATE_DOWNLOADING("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), STATE_ON_DEVICE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), STATE_NOT_AVAILABLE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), STATE_REMOVED_AND_AVAILABLE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 282
    :cond_97
    :goto_97
    iput-object v3, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    .line 283
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 285
    iput-object v4, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    .line 286
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-static {v1, v3, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 288
    iput-boolean v0, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    .line 289
    iput p1, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    .line 290
    const-class p1, Landroid/view/translation/TranslationContext$TranslationFlag;

    iget v0, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    invoke-static {p1, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 294
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    return-void
.end method

.method public static blacklist modelStateToString(I)Ljava/lang/String;
    .registers 1

    .line 157
    sparse-switch p0, :sswitch_data_18

    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 167
    :sswitch_8
    const-string p0, "STATE_REMOVED_AND_AVAILABLE"

    return-object p0

    .line 165
    :sswitch_b
    const-string p0, "STATE_NOT_AVAILABLE"

    return-object p0

    .line 163
    :sswitch_e
    const-string p0, "STATE_ON_DEVICE"

    return-object p0

    .line 161
    :sswitch_11
    const-string p0, "STATE_DOWNLOADING"

    return-object p0

    .line 159
    :sswitch_14
    const-string p0, "STATE_AVAILABLE_TO_DOWNLOAD"

    return-object p0

    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_11
        0x3 -> :sswitch_e
        0x4 -> :sswitch_b
        0x3e8 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSourceSpec()Landroid/view/translation/TranslationSpec;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/view/translation/TranslationCapability;->mState:I

    return v0
.end method

.method public whitelist getSupportedTranslationFlags()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    return v0
.end method

.method public whitelist getTargetSpec()Landroid/view/translation/TranslationSpec;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    return-object v0
.end method

.method public whitelist isUiTranslationEnabled()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationCapability { state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationCapability;->mState:I

    .line 225
    invoke-static {v1}, Landroid/view/translation/TranslationCapability;->modelStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiTranslationEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedTranslationFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 239
    nop

    .line 240
    iget-boolean v0, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x8

    int-to-byte v0, v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 241
    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 242
    iget v0, p0, Landroid/view/translation/TranslationCapability;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 244
    iget-object v0, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 245
    iget p2, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    return-void
.end method
