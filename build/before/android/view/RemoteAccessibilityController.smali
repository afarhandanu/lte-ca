.class Landroid/view/RemoteAccessibilityController;
.super Ljava/lang/Object;
.source "RemoteAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RemoteAccessibilityController"


# instance fields
.field private blacklist mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

.field private blacklist mHostId:I

.field private blacklist mHostView:Landroid/view/View;

.field private final blacklist mMatrixValues:[F

.field private blacklist mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectionWrapper(Landroid/view/RemoteAccessibilityController;)Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    .registers 1

    iget-object p0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnectionWrapper(Landroid/view/RemoteAccessibilityController;Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)V
    .registers 2

    iput-object p1, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnUiThread(Landroid/view/RemoteAccessibilityController;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/RemoteAccessibilityController;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/View;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mMatrixValues:[F

    .line 38
    iput-object p1, p0, Landroid/view/RemoteAccessibilityController;->mHostView:Landroid/view/View;

    .line 39
    return-void
.end method

.method private blacklist getRemoteAccessibilityEmbeddedConnection()Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    return-object v0
.end method

.method private blacklist runOnUiThread(Ljava/lang/Runnable;)V
    .registers 5

    .line 42
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_16

    .line 44
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    .line 46
    :cond_16
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 48
    :goto_19
    return-void
.end method

.method private blacklist setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    .registers 4

    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_15

    .line 135
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->disassociateEmbeddedHierarchy()V

    .line 137
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->unlinkToDeath()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    .line 140
    :cond_15
    if-eqz p1, :cond_25

    if-eqz p2, :cond_25

    .line 141
    new-instance v0, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;-><init>(Landroid/view/RemoteAccessibilityController;Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    .line 143
    iget-object p1, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {p1}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->linkToDeath()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    .line 147
    :cond_25
    goto :goto_3f

    .line 145
    :catch_26
    move-exception p1

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while setRemoteEmbeddedConnection "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteAccessibilityController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_3f
    return-void
.end method


# virtual methods
.method blacklist alreadyAssociated(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;)Z
    .registers 3

    .line 68
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    if-nez v0, :cond_6

    .line 69
    const/4 p1, 0x0

    return p1

    .line 71
    :cond_6
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-static {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->-$$Nest$fgetmConnection(Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;)Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method blacklist assosciateHierarchy(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;I)V
    .registers 4

    .line 52
    iput p3, p0, Landroid/view/RemoteAccessibilityController;->mHostId:I

    .line 55
    :try_start_2
    iget p3, p0, Landroid/view/RemoteAccessibilityController;->mHostId:I

    invoke-interface {p1, p2, p3}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->associateEmbeddedHierarchy(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object p2

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/RemoteAccessibilityController;->setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 60
    goto :goto_25

    .line 58
    :catch_c
    move-exception p1

    .line 59
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error in associateEmbeddedHierarchy "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteAccessibilityController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_25
    return-void
.end method

.method blacklist connected()Z
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method blacklist disassosciateHierarchy()V
    .registers 2

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/RemoteAccessibilityController;->setRemoteAccessibilityEmbeddedConnection(Landroid/view/accessibility/IAccessibilityEmbeddedConnection;Landroid/os/IBinder;)V

    .line 65
    return-void
.end method

.method blacklist getLeashToken()Landroid/os/IBinder;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mConnectionWrapper:Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    invoke-virtual {v0}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->getLeashToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method blacklist setWindowMatrix(Landroid/graphics/Matrix;Z)V
    .registers 4

    .line 156
    if-nez p2, :cond_b

    iget-object p2, p0, Landroid/view/RemoteAccessibilityController;->mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 157
    return-void

    .line 161
    :cond_b
    nop

    .line 162
    :try_start_c
    invoke-direct {p0}, Landroid/view/RemoteAccessibilityController;->getRemoteAccessibilityEmbeddedConnection()Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;

    move-result-object p2

    .line 163
    if-nez p2, :cond_13

    .line 164
    return-void

    .line 166
    :cond_13
    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 167
    invoke-virtual {p2}, Landroid/view/RemoteAccessibilityController$RemoteAccessibilityEmbeddedConnection;->getConnection()Landroid/view/accessibility/IAccessibilityEmbeddedConnection;

    move-result-object p2

    iget-object v0, p0, Landroid/view/RemoteAccessibilityController;->mMatrixValues:[F

    invoke-interface {p2, v0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection;->setWindowMatrix([F)V

    .line 168
    iget-object p2, p0, Landroid/view/RemoteAccessibilityController;->mWindowMatrixForEmbeddedHierarchy:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_26} :catch_27

    .line 171
    goto :goto_40

    .line 169
    :catch_27
    move-exception p1

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while setScreenMatrix "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteAccessibilityController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_40
    return-void
.end method
