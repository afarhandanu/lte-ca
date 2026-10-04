.class public final Landroid/view/ViewRootImpl$NoPreloadHolder;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoPreloadHolder"
.end annotation


# static fields
.field public static final blacklist sAlwaysSeqId:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 795
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 797
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->alwaysSeqIdLayoutWear()Z

    move-result v0

    goto :goto_1d

    :cond_19
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->alwaysSeqIdLayout()Z

    move-result v0

    :goto_1d
    sput-boolean v0, Landroid/view/ViewRootImpl$NoPreloadHolder;->sAlwaysSeqId:Z

    .line 798
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
