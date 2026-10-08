.class public Lcom/android/internal/alsa/AlsaCardsParser;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    }
.end annotation


# static fields
.field protected static final blacklist DEBUG:Z = false

.field public static final blacklist SCANSTATUS_EMPTY:I = 0x2

.field public static final blacklist SCANSTATUS_FAIL:I = 0x1

.field public static final blacklist SCANSTATUS_NOTSCANNED:I = -0x1

.field public static final blacklist SCANSTATUS_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AlsaCardsParser"

.field private static final blacklist kAlsaFolderPath:Ljava/lang/String; = "/proc/asound"

.field private static final blacklist kCardsFilePath:Ljava/lang/String; = "/proc/asound/cards"

.field private static final blacklist kDeviceAddressPrefix:Ljava/lang/String; = "/dev/bus/usb/"

.field private static blacklist mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private blacklist mCardRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScanStatus:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;
    .registers 1

    sget-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    const-string v1, " :[]"

    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    .line 134
    return-void
.end method

.method private blacklist Log(Ljava/lang/String;)V
    .registers 2

    .line 219
    return-void
.end method


# virtual methods
.method public blacklist findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .registers 5

    .line 201
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 202
    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->isUsb()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {v1}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-$$Nest$fgetmUsbDeviceAddress(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 203
    return-object v1

    .line 205
    :cond_23
    goto :goto_6

    .line 206
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getScanStatus()I
    .registers 2

    .line 197
    iget v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    return v0
.end method

.method public blacklist scan()I
    .registers 9

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/asound/cards"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x1

    :try_start_f
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 146
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 147
    nop

    .line 148
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_95

    .line 149
    new-instance v5, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    invoke-direct {v5, p0}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;-><init>(Lcom/android/internal/alsa/AlsaCardsParser;)V

    .line 153
    invoke-static {v5, v3, v4}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-$$Nest$mparse(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;Ljava/lang/String;I)Z

    .line 155
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 156
    if-nez v3, :cond_30

    .line 157
    goto :goto_95

    .line 162
    :cond_30
    invoke-static {v5, v3, v1}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-$$Nest$mparse(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;Ljava/lang/String;I)Z

    .line 165
    iget v3, v5, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/proc/asound/card"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/usbbus"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 170
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 171
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 172
    if-eqz v4, :cond_8c

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/dev/bus/usb/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->setDeviceAddress(Ljava/lang/String;)V

    .line 175
    :cond_8c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 177
    :cond_8f
    iget-object v3, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    goto :goto_1a

    .line 179
    :cond_95
    :goto_95
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 180
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a3

    .line 181
    iput v4, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    goto :goto_ae

    .line 183
    :cond_a3
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I
    :try_end_a6
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_a6} :catch_ab
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_a6} :catch_a7

    goto :goto_ae

    .line 187
    :catch_a7
    move-exception v0

    .line 188
    iput v1, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    goto :goto_af

    .line 185
    :catch_ab
    move-exception v0

    .line 186
    iput v1, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    .line 189
    :goto_ae
    nop

    .line 193
    :goto_af
    iget v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mScanStatus:I

    return v0
.end method
