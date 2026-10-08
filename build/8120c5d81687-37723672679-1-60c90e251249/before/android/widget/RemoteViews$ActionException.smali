.class public Landroid/widget/RemoteViews$ActionException;
.super Ljava/lang/RuntimeException;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionException"
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/lang/Exception;)V
    .registers 2

    .line 654
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 655
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 2

    .line 657
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 658
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 663
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 664
    return-void
.end method
