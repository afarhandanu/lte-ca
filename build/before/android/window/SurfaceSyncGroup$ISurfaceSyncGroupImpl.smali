.class Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;
.super Landroid/window/ISurfaceSyncGroup$Stub;
.source "SurfaceSyncGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SurfaceSyncGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISurfaceSyncGroupImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/SurfaceSyncGroup;


# direct methods
.method private constructor blacklist <init>(Landroid/window/SurfaceSyncGroup;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 762
    iput-object p1, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-direct {p0}, Landroid/window/ISurfaceSyncGroup$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/SurfaceSyncGroup;Landroid/window/SurfaceSyncGroup-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;-><init>(Landroid/window/SurfaceSyncGroup;)V

    return-void
.end method


# virtual methods
.method public blacklist addToSync(Landroid/window/ISurfaceSyncGroup;Z)Z
    .registers 5

    .line 779
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/window/SurfaceSyncGroup;->add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method blacklist getSurfaceSyncGroup()Landroid/window/SurfaceSyncGroup;
    .registers 2

    .line 784
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    return-object v0
.end method

.method public blacklist onAddedToSyncGroup(Landroid/os/IBinder;Z)Z
    .registers 8

    .line 766
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 767
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v2}, Landroid/window/SurfaceSyncGroup;->-$$Nest$fgetmTrackName(Landroid/window/SurfaceSyncGroup;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAddedToSyncGroup token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 768
    invoke-interface {p1}, Landroid/os/IBinder;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 767
    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 770
    :cond_2d
    iget-object v2, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Landroid/window/SurfaceSyncGroup;->-$$Nest$maddSyncToWm(Landroid/window/SurfaceSyncGroup;Landroid/os/IBinder;ZLandroid/window/ISurfaceSyncGroupCompletedListener;)Z

    move-result p1

    .line 771
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 772
    iget-object p2, p0, Landroid/window/SurfaceSyncGroup$ISurfaceSyncGroupImpl;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {p2}, Landroid/window/SurfaceSyncGroup;->-$$Nest$fgetmTrackName(Landroid/window/SurfaceSyncGroup;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v0, v1, p2, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 774
    :cond_47
    return p1
.end method
