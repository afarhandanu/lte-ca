.class public Landroid/widget/RemoteViews$ActionApplyParams;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionApplyParams"
.end annotation


# instance fields
.field public blacklist applyThemeResId:I

.field public blacklist colorResources:Landroid/widget/RemoteViews$ColorResources;

.field public blacklist executor:Ljava/util/concurrent/Executor;

.field public blacklist handler:Landroid/widget/RemoteViews$InteractionHandler;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RemoteViews;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8890
    iput-object p1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/widget/RemoteViews$ActionApplyParams;
    .registers 3

    .line 8898
    new-instance v0, Landroid/widget/RemoteViews$ActionApplyParams;

    iget-object v1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;-><init>(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 8899
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;->withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 8900
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;->withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->executor:Ljava/util/concurrent/Executor;

    .line 8901
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;->withExecutor(Ljava/util/concurrent/Executor;)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->applyThemeResId:I

    .line 8902
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$ActionApplyParams;->withThemeResId(I)Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    .line 8898
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 8890
    invoke-virtual {p0}, Landroid/widget/RemoteViews$ActionApplyParams;->clone()Landroid/widget/RemoteViews$ActionApplyParams;

    move-result-object v0

    return-object v0
.end method

.method public blacklist withColorResources(Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$ActionApplyParams;
    .registers 2

    .line 8911
    iput-object p1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->colorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 8912
    return-object p0
.end method

.method public blacklist withExecutor(Ljava/util/concurrent/Executor;)Landroid/widget/RemoteViews$ActionApplyParams;
    .registers 2

    .line 8921
    iput-object p1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->executor:Ljava/util/concurrent/Executor;

    .line 8922
    return-object p0
.end method

.method public blacklist withInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$ActionApplyParams;
    .registers 2

    .line 8906
    iput-object p1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 8907
    return-object p0
.end method

.method public blacklist withThemeResId(I)Landroid/widget/RemoteViews$ActionApplyParams;
    .registers 2

    .line 8916
    iput p1, p0, Landroid/widget/RemoteViews$ActionApplyParams;->applyThemeResId:I

    .line 8917
    return-object p0
.end method
