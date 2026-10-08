.class Landroid/view/View$DeclaredOnClickListener;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclaredOnClickListener"
.end annotation


# instance fields
.field private final greylist-max-o mHostView:Landroid/view/View;

.field private final greylist-max-o mMethodName:Ljava/lang/String;

.field private greylist-max-o mResolvedContext:Landroid/content/Context;

.field private greylist-max-o mResolvedMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .line 6934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6935
    iput-object p1, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    .line 6936
    iput-object p2, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    .line 6937
    return-void
.end method

.method private greylist-max-o resolveMethod(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 6958
    nop

    :goto_1
    if-eqz p1, :cond_31

    .line 6960
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p2

    if-nez p2, :cond_22

    .line 6961
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    iget-object v0, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 6962
    if-eqz p2, :cond_22

    .line 6963
    iput-object p2, p0, Landroid/view/View$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    .line 6964
    iput-object p1, p0, Landroid/view/View$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_21} :catch_23

    .line 6965
    return-void

    .line 6970
    :cond_22
    goto :goto_24

    .line 6968
    :catch_23
    move-exception p2

    .line 6972
    :goto_24
    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_2f

    .line 6973
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1

    .line 6976
    :cond_2f
    const/4 p1, 0x0

    goto :goto_1

    .line 6980
    :cond_31
    iget-object p1, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 6981
    const/4 p2, -0x1

    if-ne p1, p2, :cond_3d

    const-string p1, ""

    goto :goto_64

    .line 6982
    :cond_3d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " with id \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6983
    :goto_64
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(View) in a parent or ancestor Context for android:onClick attribute defined on view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    .line 6985
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .registers 4

    .line 6941
    iget-object v0, p0, Landroid/view/View$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_f

    .line 6942
    iget-object v0, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/view/View$DeclaredOnClickListener;->resolveMethod(Landroid/content/Context;Ljava/lang/String;)V

    .line 6946
    :cond_f
    :try_start_f
    iget-object v0, p0, Landroid/view/View$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/view/View$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_1a} :catch_25
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_1a} :catch_1c

    .line 6953
    nop

    .line 6954
    return-void

    .line 6950
    :catch_1c
    move-exception p1

    .line 6951
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not execute method for android:onClick"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 6947
    :catch_25
    move-exception p1

    .line 6948
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not execute non-public method for android:onClick"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
