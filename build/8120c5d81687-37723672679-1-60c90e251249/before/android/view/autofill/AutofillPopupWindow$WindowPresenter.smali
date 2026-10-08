.class Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
.super Ljava/lang/Object;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowPresenter"
.end annotation


# instance fields
.field final greylist-max-o mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;


# direct methods
.method constructor blacklist <init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p2, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    .line 393
    return-void
.end method


# virtual methods
.method greylist-max-o hide(Landroid/graphics/Rect;)V
    .registers 4

    .line 420
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    invoke-interface {v0, p1}, Landroid/view/autofill/IAutofillWindowPresenter;->hide(Landroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 424
    goto :goto_11

    .line 421
    :catch_6
    move-exception p1

    .line 422
    const-string v0, "AutofillPopupWindow"

    const-string v1, "Error hiding fill window"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 425
    :goto_11
    return-void
.end method

.method greylist-max-o show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .registers 6

    .line 406
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/autofill/IAutofillWindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 410
    goto :goto_11

    .line 407
    :catch_6
    move-exception p1

    .line 408
    const-string p2, "AutofillPopupWindow"

    const-string p3, "Error showing fill window"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 411
    :goto_11
    return-void
.end method
