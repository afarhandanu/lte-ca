.class public Landroid/view/WindowManager$InvalidDisplayException;
.super Ljava/lang/RuntimeException;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidDisplayException"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 694
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 695
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2

    .line 698
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 699
    return-void
.end method
