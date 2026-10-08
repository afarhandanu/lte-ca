.class Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction$HierarchyOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActivityIntent:Landroid/content/Intent;

.field private blacklist mActivityTypes:[I

.field private blacklist mAlwaysOnTop:Z

.field private blacklist mAppCompatOptions:Landroid/os/Bundle;

.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mCaller:Landroid/os/IBinder;

.field private blacklist mContainer:Landroid/os/IBinder;

.field private blacklist mContainers:[Landroid/os/IBinder;

.field private blacklist mDisallowOverrideBoundsForChildren:Z

.field private blacklist mExcludeInsetsTypes:I

.field private blacklist mForciblyHidingInsetsTypes:I

.field private blacklist mForciblyShowingInsetsTypes:I

.field private blacklist mIncludingParents:Z

.field private blacklist mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

.field private blacklist mIsTrimmableFromRecents:Z

.field private blacklist mKeyguardState:Landroid/window/KeyguardState;

.field private blacklist mLaunchOptions:Landroid/os/Bundle;

.field private blacklist mPendingIntent:Landroid/app/PendingIntent;

.field private blacklist mReparent:Landroid/os/IBinder;

.field private blacklist mReparentLeafTaskIfRelaunch:Z

.field private blacklist mReparentTopOnly:Z

.field private blacklist mSafeRegionBounds:Landroid/graphics/Rect;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

.field private blacklist mToTop:Z

.field private final blacklist mType:I

.field private blacklist mWindowingModes:[I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 2739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2740
    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mType:I

    .line 2741
    return-void
.end method


# virtual methods
.method blacklist build()Landroid/window/WindowContainerTransaction$HierarchyOp;
    .registers 5

    .line 2876
    new-instance v0, Landroid/window/WindowContainerTransaction$HierarchyOp;

    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mType:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;-><init>(ILandroid/window/WindowContainerTransaction-IA;)V

    .line 2877
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainer:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmContainer(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    .line 2878
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainers:[Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmContainers(Landroid/window/WindowContainerTransaction$HierarchyOp;[Landroid/os/IBinder;)V

    .line 2879
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparent:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    .line 2880
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    if-eqz v1, :cond_25

    .line 2881
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    iget-object v3, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    array-length v3, v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_26

    .line 2882
    :cond_25
    move-object v1, v2

    :goto_26
    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmWindowingModes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    .line 2883
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    if-eqz v1, :cond_37

    .line 2884
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    iget-object v2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    goto :goto_38

    .line 2885
    :cond_37
    nop

    :goto_38
    invoke-static {v0, v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmActivityTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;[I)V

    .line 2886
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmInsetsFrameProvider(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/view/InsetsFrameProvider;)V

    .line 2887
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mCaller:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmCaller(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/IBinder;)V

    .line 2888
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mToTop:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmToTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2889
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentTopOnly:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparentTopOnly(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2890
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchOptions:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmLaunchOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V

    .line 2891
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAppCompatOptions:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmAppCompatOptions(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/os/Bundle;)V

    .line 2892
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityIntent:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmActivityIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/Intent;)V

    .line 2893
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmPendingIntent(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/app/PendingIntent;)V

    .line 2894
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAlwaysOnTop:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmAlwaysOnTop(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2895
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmTaskFragmentOperation(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/TaskFragmentOperation;)V

    .line 2896
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mKeyguardState:Landroid/window/KeyguardState;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmKeyguardState(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/window/KeyguardState;)V

    .line 2897
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmShortcutInfo(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/content/pm/ShortcutInfo;)V

    .line 2898
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmBounds(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V

    .line 2899
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mIncludingParents:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmIncludingParents(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2900
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentLeafTaskIfRelaunch:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmReparentLeafTaskIfRelaunch(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2901
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mIsTrimmableFromRecents:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmIsTrimmableFromRecents(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2902
    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mExcludeInsetsTypes:I

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmExcludeInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;I)V

    .line 2903
    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mForciblyShowingInsetsTypes:I

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmForciblyShowingInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;I)V

    .line 2904
    iget v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mForciblyHidingInsetsTypes:I

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmForciblyHidingInsetsTypes(Landroid/window/WindowContainerTransaction$HierarchyOp;I)V

    .line 2905
    iget-object v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mSafeRegionBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmSafeRegionBounds(Landroid/window/WindowContainerTransaction$HierarchyOp;Landroid/graphics/Rect;)V

    .line 2906
    iget-boolean v1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mDisallowOverrideBoundsForChildren:Z

    invoke-static {v0, v1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->-$$Nest$fputmDisallowOverrideBoundsForChildren(Landroid/window/WindowContainerTransaction$HierarchyOp;Z)V

    .line 2907
    return-object v0
.end method

.method blacklist setActivityIntent(Landroid/content/Intent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2799
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityIntent:Landroid/content/Intent;

    .line 2800
    return-object p0
.end method

.method blacklist setActivityTypes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2784
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mActivityTypes:[I

    .line 2785
    return-object p0
.end method

.method blacklist setAlwaysOnTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2809
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAlwaysOnTop:Z

    .line 2810
    return-object p0
.end method

.method blacklist setAppCompatOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2794
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mAppCompatOptions:Landroid/os/Bundle;

    .line 2795
    return-object p0
.end method

.method blacklist setBounds(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2836
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mBounds:Landroid/graphics/Rect;

    .line 2837
    return-object p0
.end method

.method blacklist setCaller(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2764
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mCaller:Landroid/os/IBinder;

    .line 2765
    return-object p0
.end method

.method blacklist setContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2744
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainer:Landroid/os/IBinder;

    .line 2745
    return-object p0
.end method

.method blacklist setContainers([Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2749
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mContainers:[Landroid/os/IBinder;

    .line 2750
    return-object p0
.end method

.method blacklist setDisallowOverrideBoundsForChildren(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2870
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mDisallowOverrideBoundsForChildren:Z

    .line 2871
    return-object p0
.end method

.method blacklist setExcludeInsetsTypes(I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2851
    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mExcludeInsetsTypes:I

    .line 2852
    return-object p0
.end method

.method blacklist setIncludingParents(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2841
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mIncludingParents:Z

    .line 2842
    return-object p0
.end method

.method blacklist setInsetsFrameProvider(Landroid/view/InsetsFrameProvider;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2759
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mInsetsFrameProvider:Landroid/view/InsetsFrameProvider;

    .line 2760
    return-object p0
.end method

.method blacklist setIsTrimmableFromRecents(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2846
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mIsTrimmableFromRecents:Z

    .line 2847
    return-object p0
.end method

.method blacklist setKeyguardState(Landroid/window/KeyguardState;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2821
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mKeyguardState:Landroid/window/KeyguardState;

    .line 2822
    return-object p0
.end method

.method blacklist setLaunchOptions(Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2789
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mLaunchOptions:Landroid/os/Bundle;

    .line 2790
    return-object p0
.end method

.method blacklist setPendingIntent(Landroid/app/PendingIntent;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2804
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    .line 2805
    return-object p0
.end method

.method blacklist setReparentContainer(Landroid/os/IBinder;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2754
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparent:Landroid/os/IBinder;

    .line 2755
    return-object p0
.end method

.method blacklist setReparentLeafTaskIfRelaunch(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2826
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentLeafTaskIfRelaunch:Z

    .line 2827
    return-object p0
.end method

.method blacklist setReparentTopOnly(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2774
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mReparentTopOnly:Z

    .line 2775
    return-object p0
.end method

.method blacklist setSafeRegionBounds(Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2864
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mSafeRegionBounds:Landroid/graphics/Rect;

    .line 2865
    return-object p0
.end method

.method blacklist setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2831
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 2832
    return-object p0
.end method

.method blacklist setSystemBarVisibilityOverride(II)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 3

    .line 2858
    iput p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mForciblyShowingInsetsTypes:I

    .line 2859
    iput p2, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mForciblyHidingInsetsTypes:I

    .line 2860
    return-object p0
.end method

.method blacklist setTaskFragmentOperation(Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2815
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mTaskFragmentOperation:Landroid/window/TaskFragmentOperation;

    .line 2816
    return-object p0
.end method

.method blacklist setToTop(Z)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2769
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mToTop:Z

    .line 2770
    return-object p0
.end method

.method blacklist setWindowingModes([I)Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;
    .registers 2

    .line 2779
    iput-object p1, p0, Landroid/window/WindowContainerTransaction$HierarchyOp$Builder;->mWindowingModes:[I

    .line 2780
    return-object p0
.end method
