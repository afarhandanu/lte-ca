.class public final Landroid/window/TransitionRequestInfo$RequestedLocation;
.super Ljava/lang/Object;
.source "TransitionRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestedLocation"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionRequestInfo$RequestedLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mDisplayId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 606
    new-instance v0, Landroid/window/TransitionRequestInfo$RequestedLocation$1;

    invoke-direct {v0}, Landroid/window/TransitionRequestInfo$RequestedLocation$1;-><init>()V

    sput-object v0, Landroid/window/TransitionRequestInfo$RequestedLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/graphics/Rect;)V
    .registers 4

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mBounds:Landroid/graphics/Rect;

    .line 518
    iput p1, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mDisplayId:I

    .line 519
    iput-object p2, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mBounds:Landroid/graphics/Rect;

    .line 520
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mBounds:Landroid/graphics/Rect;

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 595
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 597
    iput v1, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mDisplayId:I

    .line 598
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mBounds:Landroid/graphics/Rect;

    .line 599
    const-class p1, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 603
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 625
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 544
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDisplayId()I
    .registers 2

    .line 539
    iget v0, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mDisplayId:I

    return v0
.end method

.method public blacklist setBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$RequestedLocation;
    .registers 4

    .line 555
    iput-object p1, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mBounds:Landroid/graphics/Rect;

    .line 556
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 558
    return-object p0
.end method

.method public blacklist setDisplayId(I)Landroid/window/TransitionRequestInfo$RequestedLocation;
    .registers 2

    .line 549
    iput p1, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mDisplayId:I

    .line 550
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestedLocation { displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bounds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 579
    iget v0, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget-object v0, p0, Landroid/window/TransitionRequestInfo$RequestedLocation;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 581
    return-void
.end method
