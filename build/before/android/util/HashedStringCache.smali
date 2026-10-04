.class public Landroid/util/HashedStringCache;
.super Ljava/lang/Object;
.source "HashedStringCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HashedStringCache$HashResult;
    }
.end annotation


# static fields
.field private static final blacklist DAYS_TO_MILLIS:J = 0x5265c00L

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist HASH_CACHE_SIZE:I = 0x64

.field private static final blacklist HASH_LENGTH:I = 0x8

.field static final blacklist HASH_SALT:Ljava/lang/String; = "_hash_salt"

.field static final blacklist HASH_SALT_DATE:Ljava/lang/String; = "_hash_salt_date"

.field static final blacklist HASH_SALT_GEN:Ljava/lang/String; = "_hash_salt_gen"

.field private static final blacklist MAX_SALT_DAYS:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "HashedStringCache"

.field private static final blacklist UTF_8:Ljava/nio/charset/Charset;

.field private static blacklist sHashedStringCache:Landroid/util/HashedStringCache;


# instance fields
.field private final blacklist mDigester:Ljava/security/MessageDigest;

.field private final blacklist mHashes:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPreferenceLock:Ljava/lang/Object;

.field private blacklist mSalt:[B

.field private blacklist mSaltGen:I

.field private final blacklist mSecureRandom:Ljava/security/SecureRandom;

.field private blacklist mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    .line 41
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mPreferenceLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    .line 66
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Landroid/util/HashedStringCache;->mSecureRandom:Ljava/security/SecureRandom;

    .line 68
    :try_start_1a
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_22} :catch_24

    .line 72
    nop

    .line 73
    return-void

    .line 69
    :catch_24
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist checkNeedsNewSalt(Ljava/lang/String;IJ)Z
    .registers 10

    .line 132
    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    const/4 v2, 0x1

    if-eqz p1, :cond_25

    const/4 p1, -0x1

    if-ge p2, p1, :cond_b

    goto :goto_25

    .line 135
    :cond_b
    const/16 p1, 0x64

    if-le p2, p1, :cond_10

    .line 136
    move p2, p1

    .line 138
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 139
    sub-long/2addr v3, p3

    .line 142
    int-to-long p1, p2

    const-wide/32 p3, 0x5265c00

    mul-long/2addr p1, p3

    cmp-long p1, v3, p1

    if-gez p1, :cond_24

    cmp-long p1, v3, v0

    if-gez p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :cond_24
    :goto_24
    return v2

    .line 133
    :cond_25
    :goto_25
    return v2
.end method

.method private blacklist getHashSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 7

    .line 189
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "hashed_cache.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public static blacklist getInstance()Landroid/util/HashedStringCache;
    .registers 1

    .line 80
    sget-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    if-nez v0, :cond_b

    .line 81
    new-instance v0, Landroid/util/HashedStringCache;

    invoke-direct {v0}, Landroid/util/HashedStringCache;-><init>()V

    sput-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    .line 83
    :cond_b
    sget-object v0, Landroid/util/HashedStringCache;->sHashedStringCache:Landroid/util/HashedStringCache;

    return-object v0
.end method

.method private blacklist populateSaltValues(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    .line 152
    iget-object v0, p0, Landroid/util/HashedStringCache;->mPreferenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_3
    invoke-direct {p0, p1}, Landroid/util/HashedStringCache;->getHashSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 155
    iget-object p1, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_hash_salt_date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 156
    invoke-direct {p0, p2, p3, v1, v2}, Landroid/util/HashedStringCache;->checkNeedsNewSalt(Ljava/lang/String;IJ)Z

    move-result p1

    .line 157
    if-eqz p1, :cond_2f

    .line 158
    iget-object p3, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {p3}, Landroid/util/LruCache;->evictAll()V

    .line 160
    :cond_2f
    iget-object p3, p0, Landroid/util/HashedStringCache;->mSalt:[B

    if-eqz p3, :cond_35

    if-eqz p1, :cond_df

    .line 161
    :cond_35
    iget-object p3, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_hash_salt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 162
    iget-object v1, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_hash_salt_gen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    .line 163
    if-eqz p3, :cond_6f

    if-eqz p1, :cond_d7

    .line 164
    :cond_6f
    iget p1, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    .line 165
    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 166
    iget-object p3, p0, Landroid/util/HashedStringCache;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {p3, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 167
    const/4 p3, 0x3

    invoke-static {p1, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    .line 169
    iget-object p1, p0, Landroid/util/HashedStringCache;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_hash_salt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-interface {p1, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_hash_salt_gen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    .line 171
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "_hash_salt_date"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    :cond_d7
    sget-object p1, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Landroid/util/HashedStringCache;->mSalt:[B

    .line 179
    :cond_df
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :catchall_e1
    move-exception p1

    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_3 .. :try_end_e3} :catchall_e1

    throw p1
.end method


# virtual methods
.method public blacklist hashString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/util/HashedStringCache$HashResult;
    .registers 6

    .line 101
    const/4 v0, -0x1

    if-eq p4, v0, :cond_5e

    if-eqz p1, :cond_5e

    .line 102
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5e

    .line 106
    :cond_12
    invoke-direct {p0, p1, p2, p4}, Landroid/util/HashedStringCache;->populateSaltValues(Landroid/content/Context;Ljava/lang/String;I)V

    .line 107
    iget-object p1, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {p1, p3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    if-eqz p1, :cond_27

    .line 109
    new-instance p2, Landroid/util/HashedStringCache$HashResult;

    iget p3, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    invoke-direct {p2, p0, p1, p3}, Landroid/util/HashedStringCache$HashResult;-><init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V

    return-object p2

    .line 112
    :cond_27
    iget-object p1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 113
    iget-object p1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    iget-object p2, p0, Landroid/util/HashedStringCache;->mSalt:[B

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 114
    iget-object p1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    sget-object p2, Landroid/util/HashedStringCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 115
    iget-object p1, p0, Landroid/util/HashedStringCache;->mDigester:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 116
    const/16 p2, 0x8

    array-length p4, p1

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 117
    const/4 p4, 0x0

    const/4 v0, 0x3

    invoke-static {p1, p4, p2, v0}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p1

    .line 118
    iget-object p2, p0, Landroid/util/HashedStringCache;->mHashes:Landroid/util/LruCache;

    invoke-virtual {p2, p3, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance p2, Landroid/util/HashedStringCache$HashResult;

    iget p3, p0, Landroid/util/HashedStringCache;->mSaltGen:I

    invoke-direct {p2, p0, p1, p3}, Landroid/util/HashedStringCache$HashResult;-><init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V

    return-object p2

    .line 103
    :cond_5e
    :goto_5e
    const/4 p1, 0x0

    return-object p1
.end method
