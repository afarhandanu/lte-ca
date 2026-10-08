.class final Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;
.super Ljava/lang/Object;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KnownAlwaysTrueEndBatchEditCache"
.end annotation


# static fields
.field private static volatile blacklist sArray:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile blacklist sElement:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist add(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/InputConnection;",
            ">;)V"
        }
    .end annotation

    .line 147
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    if-nez v0, :cond_7

    .line 149
    sput-object p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    .line 150
    return-void

    .line 153
    :cond_7
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 154
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    array-length v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    .line 155
    :goto_f
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 156
    nop

    :goto_14
    if-ge v1, v2, :cond_1d

    .line 157
    aget-object v4, v0, v1

    aput-object v4, v3, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 159
    :cond_1d
    aput-object p0, v3, v2

    .line 162
    sput-object v3, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 163
    return-void
.end method

.method static blacklist contains(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/InputConnection;",
            ">;)Z"
        }
    .end annotation

    .line 122
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    .line 123
    return v1

    .line 125
    :cond_6
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 126
    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 127
    return v2

    .line 129
    :cond_c
    array-length v3, v0

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_18

    aget-object v5, v0, v4

    .line 130
    if-ne v5, p0, :cond_15

    .line 131
    return v1

    .line 129
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 134
    :cond_18
    return v2
.end method
