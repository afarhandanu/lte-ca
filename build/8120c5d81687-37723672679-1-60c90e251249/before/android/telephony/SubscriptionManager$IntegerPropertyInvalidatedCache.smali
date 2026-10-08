.class Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
.super Landroid/app/PropertyInvalidatedCache;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerPropertyInvalidatedCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
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

.field private final blacklist mInterfaceMethod:Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction<",
            "Lcom/android/internal/telephony/ISub;",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction<",
            "Lcom/android/internal/telephony/ISub;",
            "Ljava/lang/Integer;",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 236
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    .line 237
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mInterfaceMethod:Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;

    .line 238
    iput-object p2, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mCacheKeyProperty:Ljava/lang/String;

    .line 239
    iput-object p3, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mDefaultValue:Ljava/lang/Object;

    .line 240
    return-void
.end method


# virtual methods
.method public blacklist query(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mDefaultValue:Ljava/lang/Object;

    .line 259
    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_d

    .line 261
    invoke-super {p0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    move-object v0, p1

    .line 265
    :cond_d
    goto :goto_29

    .line 263
    :catch_e
    move-exception p1

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to recompute cache key for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mCacheKeyProperty:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SubscriptionManager"

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_29
    return-object v0
.end method

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

    .line 226
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist recompute(Ljava/lang/Integer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 247
    :try_start_0
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mInterfaceMethod:Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;

    .line 248
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 247
    invoke-interface {v0, v1, p1}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;->applyOrThrow(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 249
    :catch_b
    move-exception p1

    .line 250
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
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

    .line 226
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->recompute(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
