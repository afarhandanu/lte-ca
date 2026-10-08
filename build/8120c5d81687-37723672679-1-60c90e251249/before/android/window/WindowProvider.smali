.class public interface abstract Landroid/window/WindowProvider;
.super Ljava/lang/Object;
.source "WindowProvider.java"


# static fields
.field public static final blacklist KEY_IS_WINDOW_PROVIDER_SERVICE:Ljava/lang/String; = "android.window.WindowProvider.isWindowProviderService"

.field public static final blacklist KEY_REPARENT_TO_DEFAULT_DISPLAY_WITH_DISPLAY_REMOVAL:Ljava/lang/String; = "android.window.WindowProvider.reparentToDefaultDisplayWithDisplayRemoval"


# virtual methods
.method public blacklist getFallbackWindowType()I
    .registers 2

    .line 74
    const/4 v0, -0x1

    return v0
.end method

.method public abstract blacklist getWindowContextOptions()Landroid/os/Bundle;
.end method

.method public abstract blacklist getWindowContextToken()Landroid/os/IBinder;
.end method

.method public abstract blacklist getWindowType()I
.end method

.method public blacklist isSelfOrSubWindowType(I)Z
    .registers 3

    .line 83
    invoke-interface {p0}, Landroid/window/WindowProvider;->getWindowType()I

    move-result v0

    if-eq v0, p1, :cond_f

    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSubWindowType(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method
