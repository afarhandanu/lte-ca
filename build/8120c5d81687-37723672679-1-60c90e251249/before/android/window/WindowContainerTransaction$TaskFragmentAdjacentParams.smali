.class public Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskFragmentAdjacentParams"
.end annotation


# static fields
.field private static final blacklist DELAY_PRIMARY_LAST_ACTIVITY_REMOVAL:Ljava/lang/String; = "android:transaction.adjacent.option.delay_primary_removal"

.field private static final blacklist DELAY_SECONDARY_LAST_ACTIVITY_REMOVAL:Ljava/lang/String; = "android:transaction.adjacent.option.delay_secondary_removal"


# instance fields
.field private blacklist mDelayPrimaryLastActivityRemoval:Z

.field private blacklist mDelaySecondaryLastActivityRemoval:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2926
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 3

    .line 2928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2929
    const-string v0, "android:transaction.adjacent.option.delay_primary_removal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    .line 2931
    const-string v0, "android:transaction.adjacent.option.delay_secondary_removal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    .line 2933
    return-void
.end method


# virtual methods
.method public blacklist setShouldDelayPrimaryLastActivityRemoval(Z)V
    .registers 2

    .line 2937
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    .line 2938
    return-void
.end method

.method public blacklist setShouldDelaySecondaryLastActivityRemoval(Z)V
    .registers 2

    .line 2942
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    .line 2943
    return-void
.end method

.method public blacklist shouldDelayPrimaryLastActivityRemoval()Z
    .registers 2

    .line 2954
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    return v0
.end method

.method public blacklist shouldDelaySecondaryLastActivityRemoval()Z
    .registers 2

    .line 2962
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    return v0
.end method

.method blacklist toBundle()Landroid/os/Bundle;
    .registers 4

    .line 2967
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2968
    const-string v1, "android:transaction.adjacent.option.delay_primary_removal"

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2969
    const-string v1, "android:transaction.adjacent.option.delay_secondary_removal"

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2970
    return-object v0
.end method
