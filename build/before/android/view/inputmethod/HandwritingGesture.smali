.class public abstract Landroid/view/inputmethod/HandwritingGesture;
.super Ljava/lang/Object;
.source "HandwritingGesture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/HandwritingGesture$GestureTypeFlags;,
        Landroid/view/inputmethod/HandwritingGesture$GestureType;,
        Landroid/view/inputmethod/HandwritingGesture$Granularity;
    }
.end annotation


# static fields
.field public static final blacklist GESTURE_TYPE_DELETE:I = 0x4

.field public static final blacklist GESTURE_TYPE_DELETE_RANGE:I = 0x40

.field public static final blacklist GESTURE_TYPE_INSERT:I = 0x2

.field public static final blacklist GESTURE_TYPE_INSERT_MODE:I = 0x80

.field public static final blacklist GESTURE_TYPE_JOIN_OR_SPLIT:I = 0x10

.field public static final blacklist GESTURE_TYPE_NONE:I = 0x0

.field public static final blacklist GESTURE_TYPE_REMOVE_SPACE:I = 0x8

.field public static final blacklist GESTURE_TYPE_SELECT:I = 0x1

.field public static final blacklist GESTURE_TYPE_SELECT_RANGE:I = 0x20

.field public static final whitelist GRANULARITY_CHARACTER:I = 0x2

.field static final blacklist GRANULARITY_UNDEFINED:I = 0x0

.field public static final whitelist GRANULARITY_WORD:I = 0x1


# instance fields
.field blacklist mFallbackText:Ljava/lang/String;

.field blacklist mType:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/HandwritingGesture;->mType:I

    .line 55
    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/view/inputmethod/HandwritingGesture;
    .registers 4

    .line 257
    nop

    .line 259
    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    .line 260
    :try_start_5
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 262
    sget-object p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/ParcelableHandwritingGesture;

    invoke-virtual {p0}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->get()Landroid/view/inputmethod/HandwritingGesture;

    move-result-object p0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1f

    .line 264
    if-eqz v0, :cond_1e

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    :cond_1e
    return-object p0

    .line 264
    :catchall_1f
    move-exception p0

    goto :goto_23

    :catchall_21
    move-exception p0

    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_28

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    :cond_28
    throw p0
.end method


# virtual methods
.method public final whitelist getFallbackText()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/view/inputmethod/HandwritingGesture;->mFallbackText:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getGestureType()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/view/inputmethod/HandwritingGesture;->mType:I

    return v0
.end method

.method public final blacklist toByteArray()[B
    .registers 4

    .line 228
    instance-of v0, p0, Landroid/os/Parcelable;

    if-eqz v0, :cond_38

    .line 231
    move-object v0, p0

    check-cast v0, Landroid/os/Parcelable;

    .line 232
    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_30

    .line 235
    nop

    .line 237
    :try_start_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_28

    .line 238
    :try_start_14
    invoke-static {p0}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->of(Landroid/view/inputmethod/HandwritingGesture;)Landroid/view/inputmethod/ParcelableHandwritingGesture;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->writeToParcel(Landroid/os/Parcel;I)V

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_26

    .line 241
    if-eqz v0, :cond_25

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    :cond_25
    return-object v1

    .line 241
    :catchall_26
    move-exception v1

    goto :goto_2a

    :catchall_28
    move-exception v1

    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_2f

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    :cond_2f
    throw v1

    .line 233
    :cond_30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Gesture that contains FD is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not Parcelable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
