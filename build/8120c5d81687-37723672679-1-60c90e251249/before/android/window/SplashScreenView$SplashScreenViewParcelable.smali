.class public Landroid/window/SplashScreenView$SplashScreenViewParcelable;
.super Ljava/lang/Object;
.source "SplashScreenView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashScreenViewParcelable"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/SplashScreenView$SplashScreenViewParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBackgroundColor:I

.field private blacklist mBrandingBitmap:Landroid/graphics/Bitmap;

.field private blacklist mBrandingHeight:I

.field private blacklist mBrandingWidth:I

.field private blacklist mClientCallback:Landroid/os/RemoteCallback;

.field private blacklist mIconAnimationDurationMillis:J

.field private blacklist mIconAnimationStartMillis:J

.field private blacklist mIconBackground:Landroid/graphics/Bitmap;

.field private blacklist mIconBitmap:Landroid/graphics/Bitmap;

.field private blacklist mIconSize:I

.field private blacklist mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBrandingBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrandingHeight(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I
    .registers 1

    iget p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBrandingWidth(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)I
    .registers 1

    iget p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientCallback(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/os/RemoteCallback;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconAnimationDurationMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J
    .registers 3

    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconAnimationStartMillis(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)J
    .registers 3

    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconBackground(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIconBitmap(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfacePackage(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 816
    new-instance v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable$1;

    invoke-direct {v0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable$1;-><init>()V

    sput-object v0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 779
    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->readParcel(Landroid/os/Parcel;)V

    .line 780
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/SplashScreenView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/SplashScreenView;)V
    .registers 5

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 726
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v1

    .line 727
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    iput v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    .line 728
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getInitBackgroundColor()I

    move-result v2

    iput v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    .line 729
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_26

    :cond_25
    move-object v2, v0

    :goto_26
    iput-object v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    .line 730
    invoke-static {p1}, Landroid/window/SplashScreenView;->-$$Nest$fgetmSurfacePackageCopy(Landroid/window/SplashScreenView;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v2

    iput-object v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 731
    iget-object v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    if-nez v2, :cond_46

    .line 733
    if-eqz v1, :cond_43

    .line 734
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_44

    :cond_43
    nop

    :goto_44
    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 737
    :cond_46
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 738
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    .line 739
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    .line 740
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getBrandingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    iget v2, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    invoke-direct {p0, v0, v1, v2}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawableWithSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    .line 743
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationStart()Ljava/time/Instant;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 744
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationStart()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    .line 746
    :cond_78
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationDuration()Ljava/time/Duration;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 747
    invoke-virtual {p1}, Landroid/window/SplashScreenView;->getIconAnimationDuration()Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    .line 749
    :cond_88
    return-void
.end method

.method private blacklist copyDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 4

    .line 752
    if-eqz p1, :cond_13

    .line 753
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 755
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 756
    invoke-direct {p0, p1, v1, v0}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->copyDrawableWithSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 758
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist copyDrawableWithSize(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 7

    .line 762
    const/4 v0, 0x0

    if-eqz p1, :cond_23

    .line 763
    if-lez p2, :cond_22

    if-gtz p3, :cond_8

    goto :goto_22

    .line 767
    :cond_8
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 768
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 769
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 770
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 771
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 772
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 773
    return-object p1

    .line 764
    :cond_22
    :goto_22
    return-object v0

    .line 775
    :cond_23
    return-object v0
.end method

.method private blacklist readParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    .line 784
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    .line 785
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 786
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    .line 788
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    .line 791
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    .line 792
    sget-object v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    iput-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 793
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallback;

    iput-object p1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    .line 794
    return-void
.end method


# virtual methods
.method public blacklist clearIfNeeded()V
    .registers 3

    .line 830
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 831
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 832
    iput-object v1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 834
    :cond_c
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    .line 835
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 836
    iput-object v1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    .line 838
    :cond_17
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 798
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getBackgroundColor()I
    .registers 2

    .line 845
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    return v0
.end method

.method blacklist getIconSize()I
    .registers 2

    .line 841
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    return v0
.end method

.method public blacklist setClientCallback(Landroid/os/RemoteCallback;)V
    .registers 2

    .line 853
    iput-object p1, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    .line 854
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 803
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 804
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 806
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    iget v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 808
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mBrandingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 809
    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationStartMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 810
    iget-wide v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconAnimationDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 811
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mIconBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 812
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 813
    iget-object v0, p0, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->mClientCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 814
    return-void
.end method
