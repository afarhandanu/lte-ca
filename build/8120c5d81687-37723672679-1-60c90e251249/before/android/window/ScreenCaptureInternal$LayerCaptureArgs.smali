.class public Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;
.super Landroid/window/ScreenCaptureInternal$CaptureArgs;
.source "ScreenCaptureInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCaptureInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayerCaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mChildrenOnly:Z

.field private final blacklist mNativeLayer:J


# direct methods
.method private constructor blacklist <init>(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;)V
    .registers 4

    .line 714
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/window/ScreenCaptureInternal$CaptureArgs;-><init>(Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;Landroid/window/ScreenCaptureInternal-IA;)V

    .line 715
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->-$$Nest$fgetmChildrenOnly(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;->mChildrenOnly:Z

    .line 716
    invoke-static {p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->-$$Nest$fgetmLayer(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;)Landroid/view/SurfaceControl;

    move-result-object p1

    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v0, p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;->mNativeLayer:J

    .line 717
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;Landroid/window/ScreenCaptureInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;-><init>(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;)V

    return-void
.end method
