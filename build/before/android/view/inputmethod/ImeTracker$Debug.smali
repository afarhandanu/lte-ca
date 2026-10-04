.class public final Landroid/view/inputmethod/ImeTracker$Debug;
.super Ljava/lang/Object;
.source "ImeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/ImeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Debug"
.end annotation


# static fields
.field private static final blacklist sOrigins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPhases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$RI43CjM5_kGd1Zmj8D5TueeIn6g(Ljava/lang/reflect/Field;)I
    .registers 1

    invoke-static {p0}, Landroid/view/inputmethod/ImeTracker$Debug;->getFieldValue(Ljava/lang/reflect/Field;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 850
    const-class v0, Landroid/view/inputmethod/ImeTracker;

    .line 851
    const-string v1, "TYPE_"

    invoke-static {v0, v1}, Landroid/view/inputmethod/ImeTracker$Debug;->getFieldMapping(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/ImeTracker$Debug;->sTypes:Ljava/util/Map;

    .line 853
    const-class v0, Landroid/view/inputmethod/ImeTracker;

    .line 854
    const-string v1, "STATUS_"

    invoke-static {v0, v1}, Landroid/view/inputmethod/ImeTracker$Debug;->getFieldMapping(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/ImeTracker$Debug;->sStatus:Ljava/util/Map;

    .line 856
    const-class v0, Landroid/view/inputmethod/ImeTracker;

    .line 857
    const-string v1, "ORIGIN_"

    invoke-static {v0, v1}, Landroid/view/inputmethod/ImeTracker$Debug;->getFieldMapping(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/ImeTracker$Debug;->sOrigins:Ljava/util/Map;

    .line 859
    const-class v0, Landroid/view/inputmethod/ImeTracker;

    .line 860
    const-string v1, "PHASE_"

    invoke-static {v0, v1}, Landroid/view/inputmethod/ImeTracker$Debug;->getFieldMapping(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/view/inputmethod/ImeTracker$Debug;->sPhases:Ljava/util/Map;

    .line 859
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getFieldMapping(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 885
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/view/inputmethod/ImeTracker$Debug$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/view/inputmethod/ImeTracker$Debug$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 886
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Landroid/view/inputmethod/ImeTracker$Debug$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Landroid/view/inputmethod/ImeTracker$Debug$$ExternalSyntheticLambda1;-><init>()V

    new-instance v0, Landroid/view/inputmethod/ImeTracker$Debug$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/view/inputmethod/ImeTracker$Debug$$ExternalSyntheticLambda2;-><init>()V

    .line 887
    invoke-static {p1, v0}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 885
    return-object p0
.end method

.method private static blacklist getFieldValue(Ljava/lang/reflect/Field;)I
    .registers 2

    .line 892
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_5} :catch_6

    return p0

    .line 893
    :catch_6
    move-exception p0

    .line 894
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic blacklist lambda$getFieldMapping$0(Ljava/lang/String;Ljava/lang/reflect/Field;)Z
    .registers 2

    .line 886
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist originToString(I)Ljava/lang/String;
    .registers 5

    .line 874
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Debug;->sOrigins:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ORIGIN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist phaseToString(I)Ljava/lang/String;
    .registers 5

    .line 879
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Debug;->sPhases:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PHASE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist statusToString(I)Ljava/lang/String;
    .registers 5

    .line 869
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Debug;->sStatus:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATUS_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 5

    .line 864
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Debug;->sTypes:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
