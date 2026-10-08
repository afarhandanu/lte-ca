.class public final Landroid/text/Highlights$Builder;
.super Ljava/lang/Object;
.source "Highlights.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Highlights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mHighlights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/Paint;",
            "[I>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/Highlights$Builder;->mHighlights:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist addRange(Landroid/graphics/Paint;II)Landroid/text/Highlights$Builder;
    .registers 6

    .line 115
    if-gt p2, p3, :cond_14

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    filled-new-array {p2, p3}, [I

    move-result-object p2

    .line 122
    iget-object p3, p0, Landroid/text/Highlights$Builder;->mHighlights:Ljava/util/List;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-object p0

    .line 116
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start must not be larger than end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs whitelist addRanges(Landroid/graphics/Paint;[I)Landroid/text/Highlights$Builder;
    .registers 7

    .line 146
    array-length v0, p2

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    .line 150
    const/4 v0, 0x0

    :goto_7
    array-length v2, p2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_35

    .line 151
    mul-int/lit8 v2, v0, 0x2

    aget v3, p2, v2

    .line 152
    add-int/2addr v2, v1

    aget v2, p2, v2

    .line 153
    if-gt v3, v2, :cond_18

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 154
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverse range found in the flatten range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_35
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Landroid/text/Highlights$Builder;->mHighlights:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object p0

    .line 147
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Flatten ranges must have even numbered elements"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist build()Landroid/text/Highlights;
    .registers 4

    .line 170
    new-instance v0, Landroid/text/Highlights;

    iget-object v1, p0, Landroid/text/Highlights$Builder;->mHighlights:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/text/Highlights;-><init>(Ljava/util/List;Landroid/text/Highlights-IA;)V

    return-object v0
.end method
