.class public final synthetic Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/window/BackEvent;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/window/BackEvent;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;->f$0:Landroid/window/BackEvent;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;->f$0:Landroid/window/BackEvent;

    check-cast p1, Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->lambda$onBackStarted$0(Landroid/window/BackEvent;Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method
