.class public Lcom/android/apex/XmlWriter;
.super Ljava/lang/Object;
.source "XmlWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist indent:I

.field private blacklist out:Ljava/io/PrintWriter;

.field private blacklist outBuffer:Ljava/lang/StringBuilder;

.field private blacklist startLine:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 3
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/PrintWriter;)V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    .line 12
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/apex/XmlWriter;->indent:I

    .line 13
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    .line 14
    return-void
.end method

.method private blacklist printIndent()V
    .registers 5

    .line 17
    nop

    .line 18
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget v2, p0, Lcom/android/apex/XmlWriter;->indent:I

    if-ge v1, v2, :cond_11

    .line 19
    iget-object v2, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 21
    :cond_11
    iput-boolean v0, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    .line 22
    return-void
.end method

.method public static blacklist write(Lcom/android/apex/XmlWriter;Lcom/android/apex/ApexInfoList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    invoke-virtual {p0, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 59
    if-eqz p1, :cond_c

    .line 60
    const-string v0, "apex-info-list"

    invoke-virtual {p1, p0, v0}, Lcom/android/apex/ApexInfoList;->write(Lcom/android/apex/XmlWriter;Ljava/lang/String;)V

    .line 62
    :cond_c
    invoke-virtual {p0}, Lcom/android/apex/XmlWriter;->printXml()V

    .line 63
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 55
    :cond_9
    return-void
.end method

.method blacklist decreaseIndent()V
    .registers 2

    .line 43
    iget v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    .line 44
    return-void
.end method

.method blacklist increaseIndent()V
    .registers 2

    .line 39
    iget v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/apex/XmlWriter;->indent:I

    .line 40
    return-void
.end method

.method blacklist print(Ljava/lang/String;)V
    .registers 6

    .line 25
    const/4 v0, -0x1

    const-string v1, "\n"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 26
    const/4 v0, 0x0

    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_2f

    .line 27
    iget-boolean v2, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    if-eqz v2, :cond_1a

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 28
    invoke-direct {p0}, Lcom/android/apex/XmlWriter;->printIndent()V

    .line 30
    :cond_1a
    iget-object v2, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    if-ge v0, v2, :cond_2e

    .line 32
    iget-object v2, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/apex/XmlWriter;->startLine:Z

    .line 26
    :cond_2e
    goto :goto_8

    .line 36
    :cond_2f
    return-void
.end method

.method blacklist printXml()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/android/apex/XmlWriter;->out:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/apex/XmlWriter;->outBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    return-void
.end method
