.class Landroid/view/ViewDebug$FieldPI;
.super Landroid/view/ViewDebug$PropertyInfo;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldPI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Landroid/view/ViewDebug$PropertyInfo<",
        "TT;",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 412
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Landroid/view/ViewDebug$PropertyInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)V

    .line 413
    return-void
.end method


# virtual methods
.method public blacklist invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Landroid/view/ViewDebug$FieldPI;->member:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
