.class public Landroid/window/ImeBackCallbackProxy;
.super Ljava/lang/Object;
.source "ImeBackCallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ImeBackCallbackProxy$DefaultImeOnBackAnimationCallback;,
        Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;
    }
.end annotation


# static fields
.field static final blacklist RESULT_CODE_REGISTER:I = 0x0

.field static final blacklist RESULT_CODE_UNREGISTER:I = 0x1

.field static final blacklist RESULT_KEY_CALLBACK:Ljava/lang/String; = "callback"

.field static final blacklist RESULT_KEY_ID:Ljava/lang/String; = "id"

.field static final blacklist RESULT_KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final blacklist TAG:Ljava/lang/String; = "ImeBackCallbackProxy"


# instance fields
.field private final blacklist mImeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mQueuedReceive:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmQueuedReceive(Landroid/window/ImeBackCallbackProxy;)Ljava/util/ArrayDeque;
    .registers 1

    iget-object p0, p0, Landroid/window/ImeBackCallbackProxy;->mQueuedReceive:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreceive(Landroid/window/ImeBackCallbackProxy;ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/window/ImeBackCallbackProxy;->receive(ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Handler;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mQueuedReceive:Ljava/util/ArrayDeque;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Landroid/window/ImeBackCallbackProxy$1;

    invoke-direct {v0, p0, p1}, Landroid/window/ImeBackCallbackProxy$1;-><init>(Landroid/window/ImeBackCallbackProxy;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 81
    return-void
.end method

.method private blacklist receive(ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V
    .registers 6

    .line 110
    const-string v0, "id"

    if-nez p1, :cond_1e

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 112
    const-string/jumbo v0, "priority"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 113
    nop

    .line 114
    const-string v1, "callback"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 113
    invoke-static {p2}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object p2

    .line 115
    invoke-direct {p0, p2, v0, p1, p3}, Landroid/window/ImeBackCallbackProxy;->registerReceivedCallback(Landroid/window/IOnBackInvokedCallback;IILandroid/window/WindowOnBackInvokedDispatcher;)V

    goto :goto_29

    .line 116
    :cond_1e
    const/4 v1, 0x1

    if-ne p1, v1, :cond_29

    .line 117
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 118
    invoke-direct {p0, p1, p3}, Landroid/window/ImeBackCallbackProxy;->unregisterReceivedCallback(ILandroid/window/OnBackInvokedDispatcher;)V

    goto :goto_2a

    .line 116
    :cond_29
    :goto_29
    nop

    .line 120
    :goto_2a
    return-void
.end method

.method private blacklist registerReceivedCallback(Landroid/window/IOnBackInvokedCallback;IILandroid/window/WindowOnBackInvokedDispatcher;)V
    .registers 8

    .line 128
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    .line 133
    nop

    .line 134
    new-instance p2, Landroid/window/ImeBackCallbackProxy$DefaultImeOnBackAnimationCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Landroid/window/ImeBackCallbackProxy$DefaultImeOnBackAnimationCallback;-><init>(Landroid/window/IOnBackInvokedCallback;II)V

    move v2, v0

    move-object v0, p2

    move p2, v2

    goto :goto_13

    .line 136
    :cond_e
    new-instance v0, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;

    invoke-direct {v0, p1, p3, p2}, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;-><init>(Landroid/window/IOnBackInvokedCallback;II)V

    .line 138
    :goto_13
    invoke-direct {p0, p3, p4}, Landroid/window/ImeBackCallbackProxy;->unregisterCallback(ILandroid/window/OnBackInvokedDispatcher;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received IME callback that\'s already registered. Unregistering and reregistering. (callbackId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " current callbacks: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    const-string p3, "ImeBackCallbackProxy"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_47
    iget-object p1, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p4, v0, p2}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 145
    return-void
.end method

.method private blacklist unregisterCallback(ILandroid/window/OnBackInvokedDispatcher;)Z
    .registers 6

    .line 158
    nop

    .line 159
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;

    .line 160
    invoke-static {v1}, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->-$$Nest$mgetId(Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;)I

    move-result v2

    if-ne v2, p1, :cond_1b

    .line 161
    nop

    .line 162
    goto :goto_1d

    .line 164
    :cond_1b
    goto :goto_7

    .line 159
    :cond_1c
    const/4 v1, 0x0

    .line 165
    :goto_1d
    if-nez v1, :cond_21

    .line 166
    const/4 p1, 0x0

    return p1

    .line 168
    :cond_21
    invoke-interface {p2, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 169
    iget-object p1, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist unregisterReceivedCallback(ILandroid/window/OnBackInvokedDispatcher;)V
    .registers 4

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/window/ImeBackCallbackProxy;->unregisterCallback(ILandroid/window/OnBackInvokedDispatcher;)Z

    move-result p2

    if-nez p2, :cond_2e

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ime callback not found. Ignoring unregisterReceivedCallback. callbackId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " remaining callbacks: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    const-string p2, "ImeBackCallbackProxy"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_2e
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 4

    .line 204
    invoke-virtual {p0}, Landroid/window/ImeBackCallbackProxy;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 205
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;

    .line 206
    invoke-virtual {p0}, Landroid/window/ImeBackCallbackProxy;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 207
    goto :goto_c

    .line 209
    :cond_20
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mQueuedReceive:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 211
    return-void
.end method

.method public blacklist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 7

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImeBackCallbackProxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 222
    iget-object v1, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "mImeCallbacks: []"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_8f

    .line 225
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mImeCallbacks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 228
    goto :goto_6a

    .line 230
    :cond_8f
    :goto_8f
    return-void
.end method

.method protected blacklist getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;
    .registers 2

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResultReceiver()Landroid/os/ResultReceiver;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mResultReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public blacklist preliminaryClear()V
    .registers 4

    .line 180
    invoke-virtual {p0}, Landroid/window/ImeBackCallbackProxy;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 181
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;

    .line 182
    invoke-virtual {p0}, Landroid/window/ImeBackCallbackProxy;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 183
    goto :goto_c

    .line 185
    :cond_20
    return-void
.end method

.method public blacklist switchRootView(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl;)V
    .registers 7

    .line 329
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;

    .line 330
    if-eqz p1, :cond_1b

    .line 331
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 333
    :cond_1b
    if-eqz p2, :cond_28

    .line 334
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-static {v1}, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->-$$Nest$fgetmPriority(Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 337
    :cond_28
    goto :goto_6

    .line 338
    :cond_29
    return-void
.end method

.method public blacklist undoPreliminaryClear()V
    .registers 5

    .line 193
    invoke-virtual {p0}, Landroid/window/ImeBackCallbackProxy;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 194
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mImeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;

    .line 195
    invoke-virtual {p0}, Landroid/window/ImeBackCallbackProxy;->getReceivingDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v2

    invoke-static {v1}, Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;->-$$Nest$fgetmPriority(Landroid/window/ImeBackCallbackProxy$ImeOnBackInvokedCallback;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    .line 197
    goto :goto_c

    .line 199
    :cond_24
    return-void
.end method

.method public blacklist updateReceivingDispatcher(Landroid/window/WindowOnBackInvokedDispatcher;)V
    .registers 4

    .line 85
    nop

    :goto_1
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mQueuedReceive:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 86
    iget-object v0, p0, Landroid/window/ImeBackCallbackProxy;->mQueuedReceive:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 87
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v1, v0, p1}, Landroid/window/ImeBackCallbackProxy;->receive(ILandroid/os/Bundle;Landroid/window/WindowOnBackInvokedDispatcher;)V

    .line 88
    goto :goto_1

    .line 89
    :cond_21
    return-void
.end method
