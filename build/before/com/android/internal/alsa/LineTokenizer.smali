.class public Lcom/android/internal/alsa/LineTokenizer;
.super Ljava/lang/Object;
.source "LineTokenizer.java"


# static fields
.field public static final blacklist kTokenNotFound:I = -0x1


# instance fields
.field private final blacklist mDelimiters:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method blacklist nextDelimiter(Ljava/lang/String;I)I
    .registers 7

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 47
    nop

    .line 48
    :goto_5
    const/4 v1, -0x1

    if-ge p2, v0, :cond_18

    .line 49
    iget-object v2, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v1, :cond_15

    .line 51
    goto :goto_18

    .line 48
    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 55
    :cond_18
    :goto_18
    if-ge p2, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move p2, v1

    :goto_1c
    return p2
.end method

.method blacklist nextToken(Ljava/lang/String;I)I
    .registers 7

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    nop

    .line 35
    :goto_5
    const/4 v1, -0x1

    if-ge p2, v0, :cond_18

    .line 36
    iget-object v2, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v1, :cond_15

    .line 38
    goto :goto_18

    .line 35
    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 42
    :cond_18
    :goto_18
    if-ge p2, v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move p2, v1

    :goto_1c
    return p2
.end method
