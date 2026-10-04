.class public final Landroid/window/ScreenCapture$ScreenCaptureParams;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenCaptureParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$ScreenCaptureParams$Builder;,
        Landroid/window/ScreenCapture$ScreenCaptureParams$CaptureMode;,
        Landroid/window/ScreenCapture$ScreenCaptureParams$ProtectedContentPolicy;,
        Landroid/window/ScreenCapture$ScreenCaptureParams$SecureContentPolicy;
    }
.end annotation


# static fields
.field public static final whitelist CAPTURE_MODE_NONE:I = 0x0

.field public static final whitelist CAPTURE_MODE_REQUIRE_OPTIMIZED:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ScreenCapture$ScreenCaptureParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist PROTECTED_CONTENT_POLICY_CAPTURE:I = 0x1

.field public static final blacklist PROTECTED_CONTENT_POLICY_REDACT:I = 0x0

.field public static final blacklist PROTECTED_CONTENT_POLICY_THROW_EXCEPTION:I = 0x2

.field public static final blacklist SECURE_CONTENT_POLICY_CAPTURE:I = 0x1

.field public static final blacklist SECURE_CONTENT_POLICY_REDACT:I = 0x0

.field public static final blacklist SECURE_CONTENT_POLICY_THROW_EXCEPTION:I = 0x2


# instance fields
.field private final blacklist mCaptureMode:I

.field private final blacklist mDisplayId:I

.field private final blacklist mIncludeSystemOverlays:Z

.field private final blacklist mPixelFormat:I

.field private final blacklist mPreserveDisplayColors:Z

.field private final blacklist mProtectedContentPolicy:I

.field private final blacklist mSecureContentPolicy:I

.field private final blacklist mUseDisplayInstallationOrientation:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 263
    new-instance v0, Landroid/window/ScreenCapture$ScreenCaptureParams$1;

    invoke-direct {v0}, Landroid/window/ScreenCapture$ScreenCaptureParams$1;-><init>()V

    sput-object v0, Landroid/window/ScreenCapture$ScreenCaptureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIIZZZ)V
    .registers 9

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput p1, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mDisplayId:I

    .line 295
    iput p2, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mSecureContentPolicy:I

    .line 296
    iput p3, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mProtectedContentPolicy:I

    .line 297
    iput p4, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mCaptureMode:I

    .line 298
    iput p5, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mPixelFormat:I

    .line 299
    iput-boolean p6, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mUseDisplayInstallationOrientation:Z

    .line 300
    iput-boolean p7, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mIncludeSystemOverlays:Z

    .line 301
    iput-boolean p8, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mPreserveDisplayColors:Z

    .line 302
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIIZZZLandroid/window/ScreenCapture-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/window/ScreenCapture$ScreenCaptureParams;-><init>(IIIIIZZZ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mDisplayId:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mSecureContentPolicy:I

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mProtectedContentPolicy:I

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mCaptureMode:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mPixelFormat:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mUseDisplayInstallationOrientation:Z

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mIncludeSystemOverlays:Z

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mPreserveDisplayColors:Z

    .line 283
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ScreenCapture-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$ScreenCaptureParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCaptureMode()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mCaptureMode:I

    return v0
.end method

.method public whitelist getDisplayId()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mDisplayId:I

    return v0
.end method

.method public whitelist getPixelFormat()I
    .registers 2

    .line 212
    iget v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mPixelFormat:I

    return v0
.end method

.method public blacklist getProtectedContentPolicy()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mProtectedContentPolicy:I

    return v0
.end method

.method public blacklist getSecureContentPolicy()I
    .registers 2

    .line 184
    iget v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mSecureContentPolicy:I

    return v0
.end method

.method public blacklist isIncludeSystemOverlays()Z
    .registers 2

    .line 232
    iget-boolean v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mIncludeSystemOverlays:Z

    return v0
.end method

.method public blacklist isPreserveDisplayColors()Z
    .registers 2

    .line 242
    iget-boolean v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mPreserveDisplayColors:Z

    return v0
.end method

.method public blacklist isUseDisplayInstallationOrientation()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mUseDisplayInstallationOrientation:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 252
    iget p2, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget p2, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mSecureContentPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget p2, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mProtectedContentPolicy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget p2, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mCaptureMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget p2, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mPixelFormat:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-boolean p2, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mUseDisplayInstallationOrientation:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 258
    iget-boolean p2, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mIncludeSystemOverlays:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 259
    iget-boolean p2, p0, Landroid/window/ScreenCapture$ScreenCaptureParams;->mPreserveDisplayColors:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 260
    return-void
.end method
