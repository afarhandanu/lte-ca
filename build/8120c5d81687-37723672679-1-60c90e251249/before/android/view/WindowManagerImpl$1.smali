.class Landroid/view/WindowManagerImpl$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "WindowManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerImpl;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# direct methods
.method constructor blacklist <init>(Landroid/view/WindowManagerImpl;Landroid/view/WindowManager$KeyboardShortcutsReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 260
    iput-object p2, p0, Landroid/view/WindowManagerImpl$1;->val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist send(ILandroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    const-class p1, Landroid/view/KeyboardShortcutGroup;

    .line 264
    const-string/jumbo v0, "shortcuts_array"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 266
    iget-object p2, p0, Landroid/view/WindowManagerImpl$1;->val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;

    invoke-interface {p2, p1}, Landroid/view/WindowManager$KeyboardShortcutsReceiver;->onKeyboardShortcutsReceived(Ljava/util/List;)V

    .line 267
    return-void
.end method
