.class public interface abstract Landroid/view/ViewRootImpl$ActivityConfigCallback;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityConfigCallback"
.end annotation


# virtual methods
.method public greylist-max-o onConfigurationChanged(Landroid/content/res/Configuration;I)V
    .registers 3

    .line 498
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not implemented"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;ILandroid/window/ActivityWindowInfo;)V
    .registers 4

    .line 509
    invoke-interface {p0, p1, p2}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    .line 510
    return-void
.end method
