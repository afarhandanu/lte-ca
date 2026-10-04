.class Landroid/view/HandwritingInitiator$DelegationCallback;
.super Ljava/lang/Object;
.source "HandwritingInitiator.java"

# interfaces
.implements Landroid/view/inputmethod/ConnectionlessHandwritingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelegationCallback"
.end annotation


# instance fields
.field private final blacklist mDelegatePackageName:Ljava/lang/String;

.field private final blacklist mView:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/HandwritingInitiator;


# direct methods
.method private constructor blacklist <init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1110
    iput-object p1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->this$0:Landroid/view/HandwritingInitiator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    iput-object p2, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    .line 1112
    iput-object p3, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mDelegatePackageName:Ljava/lang/String;

    .line 1113
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;Landroid/view/HandwritingInitiator-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/HandwritingInitiator$DelegationCallback;-><init>(Landroid/view/HandwritingInitiator;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist onError(I)V
    .registers 4

    .line 1122
    packed-switch p1, :pswitch_data_26

    goto :goto_25

    .line 1128
    :pswitch_4
    iget-object p1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->this$0:Landroid/view/HandwritingInitiator;

    invoke-static {p1}, Landroid/view/HandwritingInitiator;->-$$Nest$fgetmImm(Landroid/view/HandwritingInitiator;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object v0, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mDelegatePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->prepareStylusHandwritingDelegation(Landroid/view/View;Ljava/lang/String;)V

    .line 1129
    iget-object p1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_25

    .line 1124
    :pswitch_1b
    iget-object p1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1125
    nop

    .line 1132
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist onResult(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1117
    iget-object p1, p0, Landroid/view/HandwritingInitiator$DelegationCallback;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHandwritingDelegatorCallback()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1118
    return-void
.end method
