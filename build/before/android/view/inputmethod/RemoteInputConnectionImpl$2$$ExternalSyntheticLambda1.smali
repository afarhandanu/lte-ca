.class public final synthetic Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl$2;

.field public final synthetic blacklist f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

.field public final synthetic blacklist f$2:Ljava/lang/CharSequence;

.field public final synthetic blacklist f$3:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/inputmethod/RemoteInputConnectionImpl$2;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl$2;

    iput-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iput-object p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    iput p4, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;->f$0:Landroid/view/inputmethod/RemoteInputConnectionImpl$2;

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/inputmethod/InputConnectionCommandHeader;

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;->f$2:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$2$$ExternalSyntheticLambda1;->f$3:I

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$2;->$r8$lambda$UKtYcgSeQepr2cNrO3skczAeg78(Landroid/view/inputmethod/RemoteInputConnectionImpl$2;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    return-void
.end method
