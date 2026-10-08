.class public Landroid/text/AutoText;
.super Ljava/lang/Object;
.source "AutoText.java"


# static fields
.field private static final greylist-max-o DEFAULT:I = 0x3801

.field private static final greylist-max-o INCREMENT:I = 0x400

.field private static final greylist-max-o RIGHT:I = 0x2454

.field private static final greylist-max-o TRIE_C:I = 0x0

.field private static final greylist-max-o TRIE_CHILD:I = 0x2

.field private static final greylist-max-o TRIE_NEXT:I = 0x3

.field private static final greylist-max-o TRIE_NULL:C = '\uffff'

.field private static final greylist-max-o TRIE_OFF:I = 0x1

.field private static final greylist-max-o TRIE_ROOT:I = 0x0

.field private static final greylist-max-o TRIE_SIZEOF:I = 0x4

.field private static greylist-max-o sInstance:Landroid/text/AutoText;

.field private static greylist-max-o sLock:Ljava/lang/Object;


# instance fields
.field private greylist-max-o mLocale:Ljava/util/Locale;

.field private greylist-max-o mSize:I

.field private greylist-max-o mText:Ljava/lang/String;

.field private greylist-max-o mTrie:[C

.field private greylist-max-o mTrieUsed:C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 58
    new-instance v0, Landroid/text/AutoText;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    .line 78
    invoke-direct {p0, p1}, Landroid/text/AutoText;->init(Landroid/content/res/Resources;)V

    .line 79
    return-void
.end method

.method private greylist-max-o add(Ljava/lang/String;C)V
    .registers 12

    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 214
    nop

    .line 216
    iget v1, p0, Landroid/text/AutoText;->mSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/text/AutoText;->mSize:I

    .line 218
    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_e
    if-ge v3, v0, :cond_90

    .line 219
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 220
    nop

    .line 222
    :goto_15
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v4

    const v7, 0xffff

    if-eq v6, v7, :cond_47

    .line 224
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v8, v8, v4

    add-int/2addr v8, v1

    aget-char v6, v6, v8

    if-ne v5, v6, :cond_40

    .line 228
    add-int/lit8 v6, v0, -0x1

    if-ne v3, v6, :cond_37

    .line 229
    iget-object p1, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v0, v0, v4

    add-int/2addr v0, v2

    aput-char p2, p1, v0

    .line 230
    return-void

    .line 236
    :cond_37
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v4, v6, v4

    add-int/lit8 v4, v4, 0x2

    .line 237
    nop

    .line 238
    move v6, v2

    goto :goto_48

    .line 223
    :cond_40
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v4, v6, v4

    add-int/lit8 v4, v4, 0x3

    goto :goto_15

    .line 222
    :cond_47
    move v6, v1

    .line 242
    :goto_48
    if-nez v6, :cond_8c

    .line 245
    invoke-direct {p0}, Landroid/text/AutoText;->newTrieNode()C

    move-result v6

    .line 246
    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aput-char v6, v8, v4

    .line 248
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v8, v8, v4

    add-int/2addr v8, v1

    aput-char v5, v6, v8

    .line 249
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v4

    add-int/2addr v6, v2

    aput-char v7, v5, v6

    .line 250
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v4

    add-int/lit8 v6, v6, 0x3

    aput-char v7, v5, v6

    .line 251
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v4

    add-int/lit8 v6, v6, 0x2

    aput-char v7, v5, v6

    .line 255
    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_86

    .line 256
    iget-object p1, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v0, v0, v4

    add-int/2addr v0, v2

    aput-char p2, p1, v0

    .line 257
    return-void

    .line 262
    :cond_86
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v4, v5, v4

    add-int/lit8 v4, v4, 0x2

    .line 218
    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 265
    :cond_90
    return-void
.end method

.method public static whitelist get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .registers 4

    .line 111
    invoke-static {p3}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object p3

    invoke-direct {p3, p0, p1, p2}, Landroid/text/AutoText;->lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o getInstance(Landroid/view/View;)Landroid/text/AutoText;
    .registers 5

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 92
    sget-object v1, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_11
    sget-object v2, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 95
    iget-object v3, v2, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 96
    new-instance v2, Landroid/text/AutoText;

    invoke-direct {v2, p0}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    .line 97
    sput-object v2, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 99
    :cond_22
    monitor-exit v1

    .line 101
    return-object v2

    .line 99
    :catchall_24
    move-exception p0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_24

    throw p0
.end method

.method private greylist-max-o getSize()I
    .registers 2

    .line 129
    iget v0, p0, Landroid/text/AutoText;->mSize:I

    return v0
.end method

.method public static whitelist getSize(Landroid/view/View;)I
    .registers 1

    .line 122
    invoke-static {p0}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object p0

    invoke-direct {p0}, Landroid/text/AutoText;->getSize()I

    move-result p0

    return p0
.end method

.method private greylist-max-o init(Landroid/content/res/Resources;)V
    .registers 10

    .line 162
    const v0, 0x1170003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2454

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    const/16 v2, 0x3801

    new-array v2, v2, [C

    iput-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    .line 166
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    const v3, 0xffff

    const/4 v4, 0x0

    aput-char v3, v2, v4

    .line 167
    const/4 v2, 0x1

    iput-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 170
    :try_start_1f
    const-string/jumbo v2, "words"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 171
    const-string v2, ""

    .line 172
    nop

    .line 175
    :goto_28
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 177
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 178
    if-eqz v3, :cond_6a

    const-string/jumbo v5, "word"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 179
    goto :goto_6a

    .line 182
    :cond_3b
    const-string/jumbo v3, "src"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_69

    .line 184
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 188
    move v6, v4

    goto :goto_66

    .line 190
    :cond_56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-char v6, v6

    .line 191
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :goto_66
    invoke-direct {p0, v3, v6}, Landroid/text/AutoText;->add(Ljava/lang/String;C)V

    .line 197
    :cond_69
    goto :goto_28

    .line 200
    :cond_6a
    :goto_6a
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_6d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_6d} :catch_81
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_6d} :catch_7a
    .catchall {:try_start_1f .. :try_end_6d} :catchall_78

    .line 206
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 207
    nop

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    .line 210
    return-void

    .line 206
    :catchall_78
    move-exception p1

    goto :goto_88

    .line 203
    :catch_7a
    move-exception p1

    .line 204
    :try_start_7b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :catch_81
    move-exception p1

    .line 202
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_88
    .catchall {:try_start_7b .. :try_end_88} :catchall_78

    .line 206
    :goto_88
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 207
    throw p1
.end method

.method private greylist-max-o lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 10

    .line 133
    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    .line 135
    nop

    :goto_6
    const/4 v1, 0x0

    if-ge p2, p3, :cond_4e

    .line 136
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 138
    :goto_d
    const v3, 0xffff

    if-eq v0, v3, :cond_48

    .line 139
    iget-object v4, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v5, v0, 0x0

    aget-char v4, v4, v5

    if-ne v2, v4, :cond_41

    .line 140
    add-int/lit8 v2, p3, -0x1

    if-ne p2, v2, :cond_3a

    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v4, v0, 0x1

    aget-char v2, v2, v4

    if-eq v2, v3, :cond_3a

    .line 142
    iget-object p1, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char p1, p1, v4

    .line 143
    iget-object p2, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 145
    iget-object p3, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p2, p1

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :cond_3a
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v0, v0, 0x2

    aget-char v0, v2, v0

    .line 149
    goto :goto_48

    .line 138
    :cond_41
    iget-object v3, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v0, v0, 0x3

    aget-char v0, v3, v0

    goto :goto_d

    .line 153
    :cond_48
    :goto_48
    if-ne v0, v3, :cond_4b

    .line 154
    return-object v1

    .line 135
    :cond_4b
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 158
    :cond_4e
    return-object v1
.end method

.method private greylist-max-o newTrieNode()C
    .registers 5

    .line 268
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v1, v1

    if-le v0, v1, :cond_1b

    .line 269
    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v0, v0

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [C

    .line 270
    iget-object v1, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iput-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    .line 274
    :cond_1b
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 275
    iget-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    iput-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 277
    return v0
.end method
