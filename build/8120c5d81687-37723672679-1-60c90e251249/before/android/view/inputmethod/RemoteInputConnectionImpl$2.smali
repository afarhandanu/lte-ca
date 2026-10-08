.class Landroid/view/inputmethod/RemoteInputConnectionImpl$2;
.super Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;


# direct methods
.method public static synthetic blacklist $r8$lambda$FgHJIyr_9NbH2GcXXcFYeEqqfWg(Landroid/view/inputmethod/RemoteInputConnectionImpl$2;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->lambda$sendKeyEvent$2(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UKtYcgSeQepr2cNrO3skczAeg78(Landroid/view/inputmethod/RemoteInputConnectionImpl$2;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->lambda$commitText$0(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$idysj34chVvVrD-BzdV-XDIwN0Y(Landroid/view/inputmethod/RemoteInputConnectionImpl$2;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->lambda$replaceText$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1441
    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IRemoteComputerControlInputConnection$Stub;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$commitText$0(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 1448
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1449
    return-void

    .line 1451
    :cond_9
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 1452
    if-eqz p1, :cond_22

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_22

    .line 1456
    :cond_1e
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1457
    return-void

    .line 1453
    :cond_22
    :goto_22
    const-string p1, "RemoteInputConnectionImpl"

    const-string p2, "commitText on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    return-void
.end method

.method private synthetic blacklist lambda$replaceText$1(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;I)V
    .registers 12

    .line 1465
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1466
    return-void

    .line 1468
    :cond_9
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1469
    if-eqz v0, :cond_27

    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_27

    .line 1473
    :cond_1e
    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    invoke-interface/range {v0 .. v5}, Landroid/view/inputmethod/InputConnection;->replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    .line 1475
    return-void

    .line 1470
    :cond_27
    :goto_27
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "replaceText on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    return-void
.end method

.method private synthetic blacklist lambda$sendKeyEvent$2(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 4

    .line 1483
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1484
    return-void

    .line 1486
    :cond_9
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-virtual {p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    .line 1487
    if-eqz p1, :cond_22

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    invoke-static {v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_22

    .line 1491
    :cond_1e
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1492
    return-void

    .line 1488
    :cond_22
    :goto_22
    const-string p1, "RemoteInputConnectionImpl"

    const-string/jumbo p2, "sendKeyEvent on inactive InputConnection"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    return-void
.end method


# virtual methods
.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 6

    .line 1447
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$2;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    const-string p1, "commitTextFromComputerControl"

    invoke-static {v0, p1, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1458
    return-void
.end method

.method public blacklist replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;I)V
    .registers 14

    .line 1464
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$2;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;I)V

    const-string/jumbo p1, "replaceTextFromComputerControl"

    invoke-static {v0, p1, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1476
    return-void
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .registers 5

    .line 1482
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->this$0:Landroid/view/inputmethod/RemoteInputConnectionImpl;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$2;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    const-string/jumbo p1, "sendKeyEventFromComputerControl"

    invoke-static {v0, p1, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->-$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1493
    return-void
.end method
