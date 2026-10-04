.class final Landroid/view/PendingInsetsController$ShowRequest;
.super Ljava/lang/Object;
.source "PendingInsetsController.java"

# interfaces
.implements Landroid/view/PendingInsetsController$PendingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PendingInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ShowRequest"
.end annotation


# instance fields
.field private final blacklist mTypes:I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput p1, p0, Landroid/view/PendingInsetsController$ShowRequest;->mTypes:I

    .line 276
    return-void
.end method


# virtual methods
.method public blacklist replay(Landroid/view/InsetsController;)V
    .registers 3

    .line 280
    iget v0, p0, Landroid/view/PendingInsetsController$ShowRequest;->mTypes:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->show(I)V

    .line 281
    return-void
.end method
