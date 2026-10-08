.class public final synthetic Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/TaskOrganizer$1;

.field public final synthetic blacklist f$1:Landroid/os/IBinder;

.field public final synthetic blacklist f$2:Landroid/window/TransitionRequestInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/TaskOrganizer$1;Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$0:Landroid/window/TaskOrganizer$1;

    iput-object p2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$1:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$2:Landroid/window/TransitionRequestInfo;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$0:Landroid/window/TaskOrganizer$1;

    iget-object v1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$1:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda6;->f$2:Landroid/window/TransitionRequestInfo;

    invoke-static {v0, v1, v2}, Landroid/window/TaskOrganizer$1;->$r8$lambda$n1wm74ERTjqRnzFNw7RcKH6zk_o(Landroid/window/TaskOrganizer$1;Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    return-void
.end method
