.class public Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/alsa/AlsaDevicesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlsaDeviceRecord"
.end annotation


# static fields
.field public static final blacklist kDeviceDir_Capture:I = 0x0

.field public static final blacklist kDeviceDir_Playback:I = 0x1

.field public static final blacklist kDeviceDir_Unknown:I = -0x1

.field public static final blacklist kDeviceType_Audio:I = 0x0

.field public static final blacklist kDeviceType_Control:I = 0x1

.field public static final blacklist kDeviceType_MIDI:I = 0x2

.field public static final blacklist kDeviceType_Unknown:I = -0x1


# instance fields
.field blacklist mCardNum:I

.field blacklist mDeviceDir:I

.field blacklist mDeviceNum:I

.field blacklist mDeviceType:I

.field final synthetic blacklist this$0:Lcom/android/internal/alsa/AlsaDevicesParser;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/alsa/AlsaDevicesParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    .line 69
    iput p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    .line 70
    iput p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    .line 71
    iput p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    .line 73
    return-void
.end method


# virtual methods
.method public blacklist parse(Ljava/lang/String;)Z
    .registers 8

    .line 89
    nop

    .line 90
    nop

    .line 91
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 93
    :goto_5
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->-$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/android/internal/alsa/LineTokenizer;->nextToken(Ljava/lang/String;I)I

    move-result v1

    .line 94
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_13

    .line 95
    nop

    .line 158
    return v4

    .line 97
    :cond_13
    invoke-static {}, Lcom/android/internal/alsa/AlsaDevicesParser;->-$$Nest$sfgetmTokenizer()Lcom/android/internal/alsa/LineTokenizer;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/android/internal/alsa/LineTokenizer;->nextDelimiter(Ljava/lang/String;I)I

    move-result v5

    .line 98
    if-ne v5, v3, :cond_22

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_23

    .line 98
    :cond_22
    move v3, v5

    .line 101
    :goto_23
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 104
    packed-switch v2, :pswitch_data_d6

    goto/16 :goto_d1

    .line 140
    :pswitch_2c
    :try_start_2c
    const-string v5, "capture"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 141
    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    .line 142
    iget-object v5, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-static {v5, v4}, Lcom/android/internal/alsa/AlsaDevicesParser;->-$$Nest$fputmHasCaptureDevices(Lcom/android/internal/alsa/AlsaDevicesParser;Z)V

    goto/16 :goto_d1

    .line 143
    :cond_3d
    const-string/jumbo v5, "playback"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 144
    iput v4, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    .line 145
    iget-object v5, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-static {v5, v4}, Lcom/android/internal/alsa/AlsaDevicesParser;->-$$Nest$fputmHasPlaybackDevices(Lcom/android/internal/alsa/AlsaDevicesParser;Z)V

    goto/16 :goto_d1

    .line 131
    :pswitch_4f
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 132
    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto/16 :goto_d1

    .line 133
    :cond_5b
    const-string/jumbo v5, "midi"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d1

    .line 134
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    .line 135
    iget-object v5, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->this$0:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-static {v5, v4}, Lcom/android/internal/alsa/AlsaDevicesParser;->-$$Nest$fputmHasMIDIDevices(Lcom/android/internal/alsa/AlsaDevicesParser;Z)V

    goto :goto_d1

    .line 121
    :pswitch_6d
    const-string v5, "digital"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    goto :goto_d1

    .line 123
    :cond_76
    const-string v5, "control"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 124
    iput v4, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    goto :goto_d1

    .line 125
    :cond_81
    const-string/jumbo v5, "raw"

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    goto :goto_d1

    .line 117
    :pswitch_88
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    .line 118
    goto :goto_d1

    .line 110
    :pswitch_8f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    .line 111
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_99
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_99} :catch_a0

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_d1

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_d1

    .line 149
    :catch_a0
    move-exception p1

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse token "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " of "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "/proc/asound/devices"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " token: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AlsaDevicesParser"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return v0

    .line 107
    :pswitch_d0
    nop

    .line 153
    :cond_d1
    :goto_d1
    nop

    .line 155
    add-int/2addr v2, v4

    .line 156
    move v1, v3

    goto/16 :goto_5

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_d0
        :pswitch_8f
        :pswitch_88
        :pswitch_6d
        :pswitch_4f
        :pswitch_2c
    .end packed-switch
.end method

.method public blacklist textFormat()Ljava/lang/String;
    .registers 4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    const-string v2, " N/A"

    packed-switch v1, :pswitch_data_66

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    goto :goto_4c

    .line 177
    :pswitch_3a
    const-string v1, " MIDI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 174
    :pswitch_40
    const-string v1, " Control"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    goto :goto_4c

    .line 171
    :pswitch_46
    const-string v1, " Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    nop

    .line 181
    :goto_4c
    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    packed-switch v1, :pswitch_data_70

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    goto :goto_61

    .line 190
    :pswitch_55
    const-string v1, " Playback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 187
    :pswitch_5b
    const-string v1, " Capture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    nop

    .line 194
    :goto_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_46
        :pswitch_40
        :pswitch_3a
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_55
    .end packed-switch
.end method
