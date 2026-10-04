.class public Landroid/view/inspector/StaticInspectionCompanionProvider;
.super Ljava/lang/Object;
.source "StaticInspectionCompanionProvider.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanionProvider;


# static fields
.field private static final blacklist COMPANION_SUFFIX:Ljava/lang/String; = "$InspectionCompanion"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist provide(Ljava/lang/Class;)Landroid/view/inspector/InspectionCompanion;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/view/inspector/InspectionCompanion<",
            "TT;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$InspectionCompanion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    nop

    .line 39
    const/4 v1, 0x0

    :try_start_19
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 41
    const-class v0, Landroid/view/inspector/InspectionCompanion;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inspector/InspectionCompanion;
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_2f} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2f} :catch_4a
    .catch Ljava/lang/InstantiationException; {:try_start_19 .. :try_end_2f} :catch_31

    return-object p1

    .line 44
    :cond_30
    return-object v1

    .line 50
    :catch_31
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 52
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_47

    .line 53
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_41

    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 54
    :cond_41
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 52
    :cond_47
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 48
    :catch_4a
    move-exception p1

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 46
    :catch_51
    move-exception p1

    .line 47
    return-object v1
.end method
