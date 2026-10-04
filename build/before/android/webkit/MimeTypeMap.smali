.class public Landroid/webkit/MimeTypeMap;
.super Ljava/lang/Object;
.source "MimeTypeMap.java"


# static fields
.field private static final greylist-max-o sMimeTypeMap:Landroid/webkit/MimeTypeMap;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Landroid/webkit/MimeTypeMap;

    invoke-direct {v0}, Landroid/webkit/MimeTypeMap;-><init>()V

    sput-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static whitelist getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 48
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 49
    const/4 v1, 0x0

    if-lez v0, :cond_13

    .line 50
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 53
    :cond_13
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 54
    if-lez v0, :cond_1f

    .line 55
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 58
    :cond_1f
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 60
    if-ltz v0, :cond_2d

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 64
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 65
    const-string v0, "[a-zA-Z_0-9\\.\\-\\(\\)\\%]+"

    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 66
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 67
    if-ltz v0, :cond_4a

    .line 68
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_4a
    const-string p0, ""

    return-object p0
.end method

.method public static whitelist getSingleton()Landroid/webkit/MimeTypeMap;
    .registers 1

    .line 170
    sget-object v0, Landroid/webkit/MimeTypeMap;->sMimeTypeMap:Landroid/webkit/MimeTypeMap;

    return-object v0
.end method

.method private static greylist-max-o mimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 97
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 118
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 92
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist hasExtension(Ljava/lang/String;)Z
    .registers 3

    .line 106
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/content/type/MimeMap;->hasExtension(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public whitelist hasMimeType(Ljava/lang/String;)Z
    .registers 3

    .line 82
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/content/type/MimeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method greylist-max-o remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 135
    const-string/jumbo v0, "text/plain"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 136
    const-string v1, "application/octet-stream"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_28

    .line 152
    :cond_12
    const-string/jumbo p2, "text/vnd.wap.wml"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 154
    move-object p1, v0

    goto :goto_40

    .line 158
    :cond_1d
    const-string p2, "application/vnd.wap.xhtml+xml"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_40

    .line 159
    const-string p1, "application/xhtml+xml"

    goto :goto_40

    .line 140
    :cond_28
    :goto_28
    nop

    .line 141
    if-eqz p3, :cond_30

    .line 142
    invoke-static {p3}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_31

    .line 141
    :cond_30
    const/4 p3, 0x0

    .line 144
    :goto_31
    if-eqz p3, :cond_34

    .line 145
    move-object p2, p3

    .line 147
    :cond_34
    invoke-static {p2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 148
    invoke-virtual {p0, p2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 149
    if-eqz p2, :cond_3f

    .line 150
    move-object p1, p2

    .line 152
    :cond_3f
    nop

    .line 162
    :cond_40
    :goto_40
    return-object p1
.end method
