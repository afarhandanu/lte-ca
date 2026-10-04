.class public final synthetic Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;

.field public final synthetic blacklist f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;->f$0:Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;

    iput-object p2, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;->f$0:Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;

    iget-object v1, p0, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;->$r8$lambda$D96iV7XpO4irrRdm4PEy81Tg-Cw(Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;Ljava/util/function/Consumer;)V

    return-void
.end method
