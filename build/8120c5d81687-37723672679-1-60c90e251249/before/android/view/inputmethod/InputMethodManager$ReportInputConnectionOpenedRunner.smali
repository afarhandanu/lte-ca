.class abstract Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ReportInputConnectionOpenedRunner"
.end annotation


# instance fields
.field blacklist mSequenceNum:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;->mSequenceNum:I

    .line 337
    return-void
.end method
