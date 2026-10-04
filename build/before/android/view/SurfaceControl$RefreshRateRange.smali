.class public final Landroid/view/SurfaceControl$RefreshRateRange;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRateRange"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLOAT_TOLERANCE:F = 0.01f

.field public static final blacklist TAG:Ljava/lang/String; = "RefreshRateRange"


# instance fields
.field public blacklist max:F

.field public blacklist min:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2288
    new-instance v0, Landroid/view/SurfaceControl$RefreshRateRange$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$RefreshRateRange$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl$RefreshRateRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .registers 7

    .line 2220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2221
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_23

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_23

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v1, p2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_15

    goto :goto_23

    .line 2227
    :cond_15
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1e

    .line 2229
    nop

    .line 2230
    nop

    .line 2231
    move v3, p2

    move p2, p1

    move p1, v3

    .line 2233
    :cond_1e
    iput p1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 2234
    iput p2, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 2235
    return-void

    .line 2222
    :cond_23
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong values for min and max when initializing RefreshRateRange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RefreshRateRange"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    iput v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iput v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 2225
    return-void
.end method


# virtual methods
.method public blacklist copyFrom(Landroid/view/SurfaceControl$RefreshRateRange;)V
    .registers 3

    .line 2268
    iget v0, p1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iput v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 2269
    iget p1, p1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iput p1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 2270
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2285
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 2242
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 2243
    return v0

    .line 2246
    :cond_4
    instance-of v1, p1, Landroid/view/SurfaceControl$RefreshRateRange;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2247
    return v2

    .line 2250
    :cond_a
    check-cast p1, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2251
    iget v1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v3, p1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1d

    iget v1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    iget p1, p1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2256
    iget v0, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2279
    iget p2, p0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2280
    iget p2, p0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2281
    return-void
.end method
