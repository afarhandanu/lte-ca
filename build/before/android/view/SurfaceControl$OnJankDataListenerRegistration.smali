.class public Landroid/view/SurfaceControl$OnJankDataListenerRegistration;
.super Ljava/lang/Object;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnJankDataListenerRegistration"
.end annotation


# static fields
.field public static final blacklist NONE:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

.field private static final blacklist sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private final blacklist mFreeNativeResources:Ljava/lang/Runnable;

.field private blacklist mListener:Landroid/view/SurfaceControl$OnJankDataListener;

.field private final blacklist mNativeObject:J

.field private blacklist mRemoved:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 617
    new-instance v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->NONE:Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    .line 631
    nop

    .line 633
    const-class v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 634
    invoke-static {}, Landroid/view/SurfaceControl;->-$$Nest$smnativeGetJankDataListenerWrapperFinalizer()J

    move-result-wide v1

    .line 632
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 631
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mRemoved:Z

    .line 641
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    .line 642
    new-instance v0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 643
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$OnJankDataListener;)V
    .registers 7

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mRemoved:Z

    .line 646
    iget-wide v0, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    invoke-static {v0, v1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeCreateJankDataListenerWrapper(JLandroid/view/SurfaceControl$OnJankDataListener;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    .line 647
    iget-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1c

    new-instance p1, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_24

    .line 648
    :cond_1c
    sget-object p1, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object p1

    :goto_24
    iput-object p1, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mFreeNativeResources:Ljava/lang/Runnable;

    .line 650
    iput-object p2, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mListener:Landroid/view/SurfaceControl$OnJankDataListener;

    .line 651
    return-void
.end method

.method static synthetic blacklist lambda$new$0()V
    .registers 0

    .line 642
    return-void
.end method

.method static synthetic blacklist lambda$new$1()V
    .registers 0

    .line 647
    return-void
.end method


# virtual methods
.method public whitelist flush()V
    .registers 3

    .line 661
    iget-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->-$$Nest$smnativeFlushJankData(J)V

    .line 662
    return-void
.end method

.method public blacklist release()V
    .registers 3

    .line 687
    iget-boolean v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mRemoved:Z

    if-nez v0, :cond_9

    .line 688
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->removeAfter(J)V

    .line 690
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mListener:Landroid/view/SurfaceControl$OnJankDataListener;

    .line 691
    iget-object v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 692
    return-void
.end method

.method public whitelist removeAfter(J)V
    .registers 5

    .line 678
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mRemoved:Z

    .line 679
    iget-wide v0, p0, Landroid/view/SurfaceControl$OnJankDataListenerRegistration;->mNativeObject:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->-$$Nest$smnativeRemoveJankDataListener(JJ)V

    .line 680
    return-void
.end method
