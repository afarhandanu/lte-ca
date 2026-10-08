.class public Landroid/window/TaskOrganizer$CreateRootTaskRequest;
.super Ljava/lang/Object;
.source "TaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateRootTaskRequest"
.end annotation


# instance fields
.field public blacklist displayId:I

.field public blacklist launchCookie:Landroid/os/IBinder;

.field public blacklist name:Ljava/lang/String;

.field public blacklist removeWithTaskOrganizer:Z

.field public blacklist reparentOnDisplayRemoval:Z

.field public blacklist windowingMode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist setDisplayId(I)Landroid/window/TaskOrganizer$CreateRootTaskRequest;
    .registers 2

    .line 56
    iput p1, p0, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->displayId:I

    .line 57
    return-object p0
.end method

.method public blacklist setLaunchCookie(Landroid/os/IBinder;)Landroid/window/TaskOrganizer$CreateRootTaskRequest;
    .registers 2

    .line 76
    iput-object p1, p0, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->launchCookie:Landroid/os/IBinder;

    .line 77
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/window/TaskOrganizer$CreateRootTaskRequest;
    .registers 2

    .line 81
    iput-object p1, p0, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->name:Ljava/lang/String;

    .line 82
    return-object p0
.end method

.method public blacklist setRemoveWithTaskOrganizer(Z)Landroid/window/TaskOrganizer$CreateRootTaskRequest;
    .registers 2

    .line 66
    iput-boolean p1, p0, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->removeWithTaskOrganizer:Z

    .line 67
    return-object p0
.end method

.method public blacklist setReparentOnDisplayRemoval(Z)Landroid/window/TaskOrganizer$CreateRootTaskRequest;
    .registers 2

    .line 71
    iput-boolean p1, p0, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->reparentOnDisplayRemoval:Z

    .line 72
    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskOrganizer$CreateRootTaskRequest;
    .registers 2

    .line 61
    iput p1, p0, Landroid/window/TaskOrganizer$CreateRootTaskRequest;->windowingMode:I

    .line 62
    return-object p0
.end method
