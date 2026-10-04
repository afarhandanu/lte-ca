.class Landroid/widget/RemoteViews$SetDrawInstructionAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetDrawInstructionAction"
.end annotation


# instance fields
.field private final blacklist mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$0DD8DjGTmwa9z4mb5SNRypBMsPA(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->lambda$applyActionListener$1(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gIf_NF2-Z1ag-wHVJMdw3z_YhRA(Landroid/widget/RemoteViews$SetDrawInstructionAction;Landroid/widget/RemoteViews$ActionApplyParams;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Landroid/widget/RemoteViews$Action;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->lambda$initActionAsync$4(Landroid/widget/RemoteViews$ActionApplyParams;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$qrtgf9s6P8BYNDi4rw0VW0qGCh0(Landroid/widget/RemoteViews$SetDrawInstructionAction;Landroid/widget/RemoteViews$ActionApplyParams;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Landroid/widget/RemoteViews$Action;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->lambda$apply$2(Landroid/widget/RemoteViews$ActionApplyParams;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Landroid/widget/RemoteViews$Action;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$uowcLIvrIpO2MJYTFjsaoHLBZO8(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->lambda$initActionAsync$3(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;Landroid/widget/RemoteViews$ActionApplyParams;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 6018
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 6019
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 6020
    invoke-static {p2}, Landroid/widget/RemoteViews$DrawInstructions;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/widget/RemoteViews$DrawInstructions;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    goto :goto_15

    .line 6022
    :cond_13
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    .line 6024
    :goto_15
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$DrawInstructions;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 6014
    iput-object p1, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews-IA;)V

    .line 6015
    iput-object p2, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    .line 6016
    return-void
.end method

.method private blacklist applyAction(Landroid/view/View;Ljava/util/function/BiFunction;)Landroid/widget/RemoteViews$Action;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;",
            "Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;",
            "Landroid/widget/RemoteViews$Action;",
            ">;)",
            "Landroid/widget/RemoteViews$Action;"
        }
    .end annotation

    .line 6052
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    if-eqz v0, :cond_4c

    instance-of v0, p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    if-eqz v0, :cond_4c

    .line 6053
    check-cast p1, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;

    .line 6054
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    iget-object v0, v0, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    .line 6055
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 6056
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1

    .line 6058
    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2b} :catch_44

    .line 6059
    :try_start_2b
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews$Action;
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_3a

    .line 6060
    :try_start_36
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_44

    .line 6059
    return-object p1

    .line 6058
    :catchall_3a
    move-exception p1

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception p2

    :try_start_40
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_43
    throw p1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_44

    .line 6060
    :catch_44
    move-exception p1

    .line 6061
    const-string p2, "RemoteViews"

    const-string v0, "Failed to parse draw instructions"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6064
    :cond_4c
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1
.end method

.method private blacklist applyActionListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    .line 6034
    new-instance v0, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda1;-><init>(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->addIdActionListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$IdActionCallbacks;)V

    .line 6048
    return-void
.end method

.method private synthetic blacklist lambda$apply$2(Landroid/widget/RemoteViews$ActionApplyParams;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Landroid/widget/RemoteViews$Action;
    .registers 4

    .line 6071
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)V

    .line 6072
    invoke-direct {p0, p2, p1}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->applyActionListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 6073
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1
.end method

.method static synthetic blacklist lambda$applyActionListener$0(ILjava/lang/String;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;Landroid/widget/RemoteViews$Action;)V
    .registers 6

    .line 6036
    iget v0, p4, Landroid/widget/RemoteViews$Action;->mViewId:I

    if-ne p0, v0, :cond_29

    instance-of p0, p4, Landroid/widget/RemoteViews$SetOnClickResponse;

    if-eqz p0, :cond_29

    .line 6037
    check-cast p4, Landroid/widget/RemoteViews$SetOnClickResponse;

    .line 6038
    iget-object p0, p4, Landroid/widget/RemoteViews$SetOnClickResponse;->mResponse:Landroid/widget/RemoteViews$RemoteResponse;

    .line 6039
    invoke-static {p0}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;

    move-result-object p4

    if-nez p4, :cond_1a

    .line 6040
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, p4}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fputmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;Landroid/content/Intent;)V

    .line 6042
    :cond_1a
    invoke-static {p0}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$fgetmFillIntent(Landroid/widget/RemoteViews$RemoteResponse;)Landroid/content/Intent;

    move-result-object p4

    const-string/jumbo v0, "remotecompose_metadata"

    invoke-virtual {p4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6044
    iget-object p1, p3, Landroid/widget/RemoteViews$ActionApplyParams;->handler:Landroid/widget/RemoteViews$InteractionHandler;

    invoke-static {p0, p2, p1}, Landroid/widget/RemoteViews$RemoteResponse;->-$$Nest$mhandleViewInteraction(Landroid/widget/RemoteViews$RemoteResponse;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 6046
    :cond_29
    return-void
.end method

.method private synthetic blacklist lambda$applyActionListener$1(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;ILjava/lang/String;)V
    .registers 7

    .line 6035
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3, p4, p1, p2}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 6047
    return-void
.end method

.method private synthetic blacklist lambda$initActionAsync$3(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4

    .line 6084
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->setPreparedDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;)V

    .line 6085
    invoke-direct {p0, p1, p3}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->applyActionListener(Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Landroid/widget/RemoteViews$ActionApplyParams;)V

    .line 6086
    return-void
.end method

.method private synthetic blacklist lambda$initActionAsync$4(Landroid/widget/RemoteViews$ActionApplyParams;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Landroid/widget/RemoteViews$Action;
    .registers 6

    .line 6081
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;->prepareDocument(Lcom/android/internal/widget/remotecompose/player/RemoteComposeDocument;)Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;

    move-result-object p3

    .line 6082
    if-nez p3, :cond_b

    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object p1

    goto :goto_16

    .line 6083
    :cond_b
    new-instance v0, Landroid/widget/RemoteViews$RunnableAction;

    new-instance v1, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p3, p1}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda4;-><init>(Landroid/widget/RemoteViews$SetDrawInstructionAction;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer;Lcom/android/internal/widget/remotecompose/player/RemoteComposePlayer$PreparedDocument;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$RunnableAction;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v0

    .line 6082
    :goto_16
    return-object p1
.end method


# virtual methods
.method public blacklist apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 6070
    new-instance p2, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$SetDrawInstructionAction;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->applyAction(Landroid/view/View;Ljava/util/function/BiFunction;)Landroid/widget/RemoteViews$Action;

    .line 6075
    return-void
.end method

.method public blacklist canWriteToProto()Z
    .registers 2

    .line 6102
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    return v0
.end method

.method public blacklist getActionTag()I
    .registers 2

    .line 6097
    const/16 v0, 0x23

    return v0
.end method

.method public final blacklist initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$ActionApplyParams;)Landroid/widget/RemoteViews$Action;
    .registers 4

    .line 6080
    iget-object p1, p1, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    new-instance p2, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p3}, Landroid/widget/RemoteViews$SetDrawInstructionAction$$ExternalSyntheticLambda2;-><init>(Landroid/widget/RemoteViews$SetDrawInstructionAction;Landroid/widget/RemoteViews$ActionApplyParams;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$SetDrawInstructionAction;->applyAction(Landroid/view/View;Ljava/util/function/BiFunction;)Landroid/widget/RemoteViews$Action;

    move-result-object p1

    return-object p1
.end method

.method public blacklist prefersAsyncApply()Z
    .registers 2

    .line 6092
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 6028
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->drawDataParcel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6029
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    invoke-static {v0, p1, p2}, Landroid/widget/RemoteViews$DrawInstructions;->-$$Nest$smwriteToParcel(Landroid/widget/RemoteViews$DrawInstructions;Landroid/os/Parcel;I)V

    .line 6031
    :cond_b
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 8

    .line 6107
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/appwidget/flags/Flags;->drawDataParcel()Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 6108
    :cond_7
    const-wide p2, 0x10b00000016L

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 6109
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    if-eqz v0, :cond_31

    .line 6110
    iget-object v0, p0, Landroid/widget/RemoteViews$SetDrawInstructionAction;->mInstructions:Landroid/widget/RemoteViews$DrawInstructions;

    iget-object v0, v0, Landroid/widget/RemoteViews$DrawInstructions;->mInstructions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 6111
    const-wide v2, 0x20c00000001L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 6112
    goto :goto_1c

    .line 6114
    :cond_31
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6115
    return-void
.end method
