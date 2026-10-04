.class public Landroid/window/ImeBackCallbackSender;
.super Ljava/lang/Object;
.source "ImeBackCallbackSender.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ImeBackCallbackSender"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mNonSystemCallbacks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/window/OnBackInvokedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRegisteredSystemCallback:Landroid/window/OnBackInvokedCallback;

.field private blacklist mResultReceiver:Landroid/os/ResultReceiver;

.field private blacklist mTargetAppPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/window/ImeBackCallbackSender;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/window/ImeBackCallbackSender;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/window/ImeBackCallbackSender;->mNonSystemCallbacks:Ljava/util/ArrayDeque;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/ImeBackCallbackSender;->mRegisteredSystemCallback:Landroid/window/OnBackInvokedCallback;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Landroid/window/ImeBackCallbackSender;->mTargetAppPackageName:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static synthetic blacklist lambda$registerOnBackInvokedCallback$0(Landroid/window/OnBackInvokedCallback;Landroid/util/Pair;)Z
    .registers 2

    .line 95
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, p0}, Landroid/window/OnBackInvokedCallback;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$unregisterOnBackInvokedCallback$1(Landroid/window/OnBackInvokedCallback;Landroid/util/Pair;)Z
    .registers 2

    .line 137
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/window/OnBackInvokedCallback;

    invoke-interface {p1, p0}, Landroid/window/OnBackInvokedCallback;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist registerOnBackInvokedCallbackAtTarget(ILandroid/window/OnBackInvokedCallback;)V
    .registers 6

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register OnBackInvokedCallback with priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at app window (packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/ImeBackCallbackSender;->mTargetAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImeBackCallbackSender"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v1, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;

    invoke-direct {v1, p0, p2}, Landroid/window/ImeBackCallbackSender$ImeOnBackInvokedCallbackWrapper;-><init>(Landroid/window/ImeBackCallbackSender;Landroid/window/OnBackInvokedCallback;)V

    .line 115
    const-string v2, "callback"

    invoke-interface {v1}, Landroid/window/IOnBackInvokedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 116
    const-string/jumbo v1, "priority"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string p1, "id"

    invoke-interface {p2}, Landroid/window/OnBackInvokedCallback;->hashCode()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    iget-object p1, p0, Landroid/window/ImeBackCallbackSender;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_56

    .line 119
    iget-object p1, p0, Landroid/window/ImeBackCallbackSender;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 121
    :cond_56
    return-void
.end method

.method private blacklist unregisterOnBackInvokedCallbackAtTarget(Landroid/window/OnBackInvokedCallback;)V
    .registers 4

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister OnBackInvokedCallback at app window (packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ImeBackCallbackSender;->mTargetAppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImeBackCallbackSender"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v1, "id"

    invoke-interface {p1}, Landroid/window/OnBackInvokedCallback;->hashCode()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    iget-object p1, p0, Landroid/window/ImeBackCallbackSender;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_38

    .line 149
    iget-object p1, p0, Landroid/window/ImeBackCallbackSender;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 151
    :cond_38
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender;->mRegisteredSystemCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender;->mRegisteredSystemCallback:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {p0, v0}, Landroid/window/ImeBackCallbackSender;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 163
    :cond_9
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender;->mNonSystemCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 164
    return-void
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImeBackCallbackSender"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v1, p0, Landroid/window/ImeBackCallbackSender;->mNonSystemCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNonSystemCallbacks: []"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a3

    .line 178
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mNonSystemCallbacks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Landroid/window/ImeBackCallbackSender;->mNonSystemCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    goto :goto_6a

    .line 183
    :cond_a3
    :goto_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mRegisteredSystemCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/ImeBackCallbackSender;->mRegisteredSystemCallback:Landroid/window/OnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "mTargetAppPackageName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Landroid/window/ImeBackCallbackSender;->mTargetAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .registers 6

    .line 83
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->imeBackCallbackLeakPrevention()Z

    move-result v0

    if-nez v0, :cond_a

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/window/ImeBackCallbackSender;->registerOnBackInvokedCallbackAtTarget(ILandroid/window/OnBackInvokedCallback;)V

    .line 85
    return-void

    .line 87
    :cond_a
    const/4 v0, -0x1

    if-eq p1, v0, :cond_32

    instance-of v0, p2, Landroid/window/CompatOnBackInvokedCallback;

    if-eqz v0, :cond_12

    goto :goto_32

    .line 95
    :cond_12
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender;->mNonSystemCallbacks:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/window/ImeBackCallbackSender$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Landroid/window/ImeBackCallbackSender$$ExternalSyntheticLambda1;-><init>(Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->removeIf(Ljava/util/function/Predicate;)Z

    .line 96
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender;->mNonSystemCallbacks:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender;->mRegisteredSystemCallback:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_5a

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/window/ImeBackCallbackSender;->registerOnBackInvokedCallbackAtTarget(ILandroid/window/OnBackInvokedCallback;)V

    goto :goto_5a

    .line 88
    :cond_32
    :goto_32
    invoke-direct {p0, p1, p2}, Landroid/window/ImeBackCallbackSender;->registerOnBackInvokedCallbackAtTarget(ILandroid/window/OnBackInvokedCallback;)V

    .line 89
    iput-object p2, p0, Landroid/window/ImeBackCallbackSender;->mRegisteredSystemCallback:Landroid/window/OnBackInvokedCallback;

    .line 91
    iget-object p1, p0, Landroid/window/ImeBackCallbackSender;->mNonSystemCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 92
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/window/OnBackInvokedCallback;

    invoke-direct {p0, v0, p2}, Landroid/window/ImeBackCallbackSender;->registerOnBackInvokedCallbackAtTarget(ILandroid/window/OnBackInvokedCallback;)V

    .line 93
    goto :goto_3d

    :cond_59
    nop

    .line 101
    :cond_5a
    :goto_5a
    return-void
.end method

.method blacklist setHandler(Landroid/os/Handler;)V
    .registers 2

    .line 154
    iput-object p1, p0, Landroid/window/ImeBackCallbackSender;->mHandler:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method public blacklist setResultReceiver(Landroid/os/ResultReceiver;)V
    .registers 2

    .line 76
    iput-object p1, p0, Landroid/window/ImeBackCallbackSender;->mResultReceiver:Landroid/os/ResultReceiver;

    .line 77
    return-void
.end method

.method public blacklist setTargetAppPackageName(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Landroid/window/ImeBackCallbackSender;->mTargetAppPackageName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 4

    .line 125
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->imeBackCallbackLeakPrevention()Z

    move-result v0

    if-nez v0, :cond_a

    .line 126
    invoke-direct {p0, p1}, Landroid/window/ImeBackCallbackSender;->unregisterOnBackInvokedCallbackAtTarget(Landroid/window/OnBackInvokedCallback;)V

    .line 127
    return-void

    .line 129
    :cond_a
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender;->mRegisteredSystemCallback:Landroid/window/OnBackInvokedCallback;

    if-ne p1, v0, :cond_2c

    .line 131
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender;->mNonSystemCallbacks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 132
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    invoke-direct {p0, v1}, Landroid/window/ImeBackCallbackSender;->unregisterOnBackInvokedCallbackAtTarget(Landroid/window/OnBackInvokedCallback;)V

    .line 133
    goto :goto_14

    .line 135
    :cond_28
    invoke-direct {p0, p1}, Landroid/window/ImeBackCallbackSender;->unregisterOnBackInvokedCallbackAtTarget(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_3c

    .line 137
    :cond_2c
    iget-object v0, p0, Landroid/window/ImeBackCallbackSender;->mNonSystemCallbacks:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/window/ImeBackCallbackSender$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/window/ImeBackCallbackSender$$ExternalSyntheticLambda0;-><init>(Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 138
    invoke-direct {p0, p1}, Landroid/window/ImeBackCallbackSender;->unregisterOnBackInvokedCallbackAtTarget(Landroid/window/OnBackInvokedCallback;)V

    .line 141
    :cond_3c
    :goto_3c
    return-void
.end method
