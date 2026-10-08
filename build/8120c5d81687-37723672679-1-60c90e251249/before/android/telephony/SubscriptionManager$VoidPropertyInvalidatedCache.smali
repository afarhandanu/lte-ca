.class Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
.super Landroid/app/PropertyInvalidatedCache;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VoidPropertyInvalidatedCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mCacheKeyProperty:Ljava/lang/String;

.field private final blacklist mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mInterfaceMethod:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Lcom/android/internal/telephony/ISub;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Lcom/android/internal/telephony/ISub;",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 191
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    .line 192
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->mInterfaceMethod:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;

    .line 193
    iput-object p2, p0, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->mCacheKeyProperty:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->mDefaultValue:Ljava/lang/Object;

    .line 195
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist query(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 181
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist query(Ljava/lang/Void;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->mDefaultValue:Ljava/lang/Object;

    .line 213
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_d

    .line 215
    invoke-super {p0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, p1

    .line 219
    :cond_d
    goto :goto_29

    .line 217
    :catch_e
    move-exception p1

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to recompute cache key for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->mCacheKeyProperty:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SubscriptionManager"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_29
    return-object v0
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 181
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->recompute(Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist recompute(Ljava/lang/Void;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    .line 202
    :try_start_0
    iget-object p1, p0, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->mInterfaceMethod:Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;->applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 203
    :catch_b
    move-exception p1

    .line 204
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
