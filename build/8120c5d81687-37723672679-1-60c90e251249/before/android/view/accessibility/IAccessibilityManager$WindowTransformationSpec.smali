.class public Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;
.super Ljava/lang/Object;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowTransformationSpec"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist magnificationSpec:Landroid/view/MagnificationSpec;

.field public blacklist transformationMatrix:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2171
    new-instance v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec$1;

    invoke-direct {v0}, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 2218
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2219
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 2220
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 2222
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2213
    nop

    .line 2214
    iget-object v0, p0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v0}, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 2215
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 2196
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2199
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5b

    .line 2200
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 2205
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 2208
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2200
    return-void

    .line 2206
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2201
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    .line 2202
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 2205
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 2208
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2202
    return-void

    .line 2206
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2203
    :cond_40
    :try_start_40
    sget-object v2, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MagnificationSpec;

    iput-object v2, p0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_59

    .line 2205
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_53

    .line 2208
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2209
    nop

    .line 2210
    return-void

    .line 2206
    :cond_53
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2205
    :catchall_59
    move-exception v2

    goto :goto_63

    .line 2199
    :cond_5b
    :try_start_5b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_59

    .line 2205
    :goto_63
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6c

    .line 2206
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2208
    :cond_6c
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2209
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 2185
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 2186
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2187
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->transformationMatrix:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2188
    iget-object v1, p0, Landroid/view/accessibility/IAccessibilityManager$WindowTransformationSpec;->magnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2189
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 2190
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2191
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2192
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2193
    return-void
.end method
