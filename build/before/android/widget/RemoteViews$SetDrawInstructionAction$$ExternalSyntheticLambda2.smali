.class public final synthetic Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/RemoteViews$SetDrawInstructionAction;

.field public final synthetic blacklist f$1:Landroid/widget/RemoteViews$ActionApplyParams;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/RemoteViews$SetDrawInstructionAction;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda2;->f$0:Landroid/widget/RemoteViews$SetDrawInstructionAction;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda2;->f$1:Landroid/widget/RemoteViews$ActionApplyParams;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda2;->f$0:Landroid/widget/RemoteViews$SetDrawInstructionAction;

    iget-object v1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda2;->f$1:Landroid/widget/RemoteViews$ActionApplyParams;

    check-cast p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    check-cast p2, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-static {v0, v1, p1, p2}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->$r8$lambda$gIf_NF2-Z1ag-wHVJMdw3z_YhRA(Landroid/widget/RemoteViews$SetDrawInstructionAction;Landroid/widget/RemoteViews$ActionApplyParams;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1
.end method
