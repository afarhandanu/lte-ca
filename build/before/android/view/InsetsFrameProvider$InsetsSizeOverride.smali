.class public Landroid/view/InsetsFrameProvider$InsetsSizeOverride;
.super Ljava/lang/Object;
.source "InsetsFrameProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsFrameProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetsSizeOverride"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsFrameProvider$InsetsSizeOverride;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mInsetsSize:Landroid/graphics/Insets;

.field private final blacklist mWindowType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 412
    new-instance v0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride$1;

    invoke-direct {v0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride$1;-><init>()V

    sput-object v0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/graphics/Insets;)V
    .registers 3

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput p1, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mWindowType:I

    .line 399
    iput-object p2, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mInsetsSize:Landroid/graphics/Insets;

    .line 400
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mWindowType:I

    .line 393
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Insets;

    iput-object p1, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mInsetsSize:Landroid/graphics/Insets;

    .line 394
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInsetsSize()Landroid/graphics/Insets;
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mInsetsSize:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getWindowType()I
    .registers 2

    .line 404
    iget v0, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mWindowType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 447
    iget v0, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mWindowType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mInsetsSize:Landroid/graphics/Insets;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypedInsetsSize: {windowType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mWindowType:I

    .line 439
    const-string/jumbo v3, "type"

    invoke-static {v1, v3, v2}, Landroid/view/ViewDebug;->intToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", insetsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mInsetsSize:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 431
    iget v0, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mWindowType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget-object v0, p0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->mInsetsSize:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 433
    return-void
.end method
