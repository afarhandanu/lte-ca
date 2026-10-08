.class Landroid/util/ReflectiveProperty;
.super Landroid/util/Property;
.source "ReflectiveProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/Property<",
        "TT;TV;>;"
    }
.end annotation


# static fields
.field private static final blacklist PREFIX_GET:Ljava/lang/String; = "get"

.field private static final blacklist PREFIX_IS:Ljava/lang/String; = "is"

.field private static final blacklist PREFIX_SET:Ljava/lang/String; = "set"


# instance fields
.field private blacklist mField:Ljava/lang/reflect/Field;

.field private blacklist mGetter:Ljava/lang/reflect/Method;

.field private blacklist mSetter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    const-string v0, ")"

    const-string v1, ") does not match Property type ("

    const-string v2, "Underlying type ("

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 50
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 54
    const/4 v7, 0x0

    :try_start_3c
    move-object v8, v7

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_45
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_45} :catch_46

    .line 76
    goto :goto_64

    .line 55
    :catch_46
    move-exception v6

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    :try_start_5a
    move-object v8, v7

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {p1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;
    :try_end_63
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5a .. :try_end_63} :catch_b4

    .line 75
    nop

    .line 77
    :goto_64
    iget-object p3, p0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    .line 79
    invoke-direct {p0, p2, p3}, Landroid/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "set"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 85
    :try_start_84
    new-array v0, v5, [Ljava/lang/Class;

    aput-object p3, v0, v3

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;
    :try_end_8e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_84 .. :try_end_8e} :catch_8f

    .line 88
    goto :goto_90

    .line 86
    :catch_8f
    move-exception p1

    .line 89
    :goto_90
    return-void

    .line 80
    :cond_91
    new-instance p1, Landroid/util/NoSuchPropertyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :catch_b4
    move-exception v3

    .line 63
    :try_start_b5
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    .line 64
    iget-object p1, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 65
    invoke-direct {p0, p2, p1}, Landroid/util/ReflectiveProperty;->typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 69
    return-void

    .line 66
    :cond_c8
    new-instance v3, Landroid/util/NoSuchPropertyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_eb
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b5 .. :try_end_eb} :catch_eb

    .line 70
    :catch_eb
    move-exception p1

    .line 72
    new-instance p1, Landroid/util/NoSuchPropertyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No accessor method or field found for property with name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/util/NoSuchPropertyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private blacklist typesMatch(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/Class;",
            ")Z"
        }
    .end annotation

    .line 99
    const/4 v0, 0x1

    if-eq p2, p1, :cond_4e

    .line 100
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    .line 101
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_12

    const-class v1, Ljava/lang/Float;

    if-eq p1, v1, :cond_4c

    :cond_12
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_1a

    const-class v1, Ljava/lang/Integer;

    if-eq p1, v1, :cond_4c

    :cond_1a
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_22

    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_4c

    :cond_22
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_2a

    const-class v1, Ljava/lang/Long;

    if-eq p1, v1, :cond_4c

    :cond_2a
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_32

    const-class v1, Ljava/lang/Double;

    if-eq p1, v1, :cond_4c

    :cond_32
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_3a

    const-class v1, Ljava/lang/Short;

    if-eq p1, v1, :cond_4c

    :cond_3a
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_42

    const-class v1, Ljava/lang/Byte;

    if-eq p1, v1, :cond_4c

    :cond_42
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_4b

    const-class p2, Ljava/lang/Character;

    if-ne p1, p2, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v2

    :cond_4c
    :goto_4c
    return v0

    .line 110
    :cond_4d
    return v2

    .line 112
    :cond_4e
    return v0
.end method


# virtual methods
.method public whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_21

    .line 140
    :try_start_4
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mGetter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_e} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_e} :catch_f

    return-object p1

    .line 143
    :catch_f
    move-exception p1

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 141
    :catch_1a
    move-exception p1

    .line 142
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 146
    :cond_21
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_33

    .line 148
    :try_start_25
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2b} :catch_2c

    return-object p1

    .line 149
    :catch_2c
    move-exception p1

    .line 150
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 154
    :cond_33
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public whitelist isReadOnly()Z
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    .line 119
    :try_start_4
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mSetter:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_d} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_d} :catch_e

    .line 124
    goto :goto_2a

    .line 122
    :catch_e
    move-exception p1

    .line 123
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 120
    :catch_19
    move-exception p1

    .line 121
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 125
    :cond_20
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_32

    .line 127
    :try_start_24
    iget-object v0, p0, Landroid/util/ReflectiveProperty;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_29} :catch_2b

    .line 130
    nop

    .line 134
    :goto_2a
    return-void

    .line 128
    :catch_2b
    move-exception p1

    .line 129
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 132
    :cond_32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Property "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/util/ReflectiveProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is read-only"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
