.class Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "RadialTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadialTimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadialPickerTouchHelper"
.end annotation


# instance fields
.field private final greylist-max-o MASK_TYPE:I

.field private final greylist-max-o MASK_VALUE:I

.field private final greylist-max-o MINUTE_INCREMENT:I

.field private final greylist-max-o SHIFT_TYPE:I

.field private final greylist-max-o SHIFT_VALUE:I

.field private final greylist-max-o TYPE_HOUR:I

.field private final greylist-max-o TYPE_MINUTE:I

.field private final greylist-max-o mTempRect:Landroid/graphics/Rect;

.field final synthetic blacklist this$0:Landroid/widget/RadialTimePickerView;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/RadialTimePickerView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1096
    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    .line 1097
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1082
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1084
    const/4 p1, 0x1

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_HOUR:I

    .line 1085
    const/4 p1, 0x2

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->TYPE_MINUTE:I

    .line 1087
    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_TYPE:I

    .line 1088
    const/16 p1, 0xf

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_TYPE:I

    .line 1090
    const/16 p1, 0x8

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->SHIFT_VALUE:I

    .line 1091
    const/16 p1, 0xff

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MASK_VALUE:I

    .line 1094
    const/4 p1, 0x5

    iput p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->MINUTE_INCREMENT:I

    .line 1098
    return-void
.end method

.method private greylist-max-o adjustPicker(I)V
    .registers 6

    .line 1131
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 1132
    nop

    .line 1134
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result v0

    .line 1135
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    .line 1136
    nop

    .line 1137
    nop

    .line 1138
    const/16 v2, 0x17

    goto :goto_26

    .line 1140
    :cond_1e
    invoke-direct {p0, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result v0

    .line 1141
    nop

    .line 1142
    const/16 v2, 0xc

    move v1, v3

    .line 1144
    :goto_26
    goto :goto_33

    .line 1145
    :cond_27
    nop

    .line 1146
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    const/4 v3, 0x5

    div-int/2addr v0, v3

    .line 1147
    nop

    .line 1148
    const/16 v2, 0x37

    .line 1151
    :goto_33
    add-int/2addr v0, p1

    mul-int/2addr v0, v3

    .line 1152
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 1153
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1154
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    goto :goto_4c

    .line 1156
    :cond_47
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1158
    :goto_4c
    return-void
.end method

.method private greylist-max-o getBoundsForVirtualView(ILandroid/graphics/Rect;)V
    .registers 9

    .line 1326
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1327
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result p1

    .line 1330
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4c

    .line 1331
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0, p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetInnerCircleForHour(Landroid/widget/RadialTimePickerView;I)Z

    move-result v0

    .line 1332
    if-eqz v0, :cond_2c

    .line 1333
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v0

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v2

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1334
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v1

    int-to-float v1, v1

    goto :goto_44

    .line 1336
    :cond_2c
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1337
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v1

    int-to-float v1, v1

    .line 1340
    :goto_44
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2, p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetDegreesForHour(Landroid/widget/RadialTimePickerView;I)I

    move-result p1

    int-to-float p1, p1

    .line 1341
    goto :goto_72

    :cond_4c
    if-ne v0, v1, :cond_6d

    .line 1342
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmCircleRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmTextInset(Landroid/widget/RadialTimePickerView;)[I

    move-result-object v1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1343
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1, p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetDegreesForMinute(Landroid/widget/RadialTimePickerView;I)I

    move-result p1

    int-to-float p1, p1

    .line 1344
    iget-object v1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmSelectorRadius(Landroid/widget/RadialTimePickerView;)I

    move-result v1

    int-to-float v1, v1

    goto :goto_72

    .line 1347
    :cond_6d
    nop

    .line 1348
    nop

    .line 1349
    const/4 v0, 0x0

    move p1, v0

    move v1, p1

    .line 1352
    :goto_72
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 1353
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmXCenter(Landroid/widget/RadialTimePickerView;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr p1, v4

    .line 1354
    iget-object v4, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v4}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmYCenter(Landroid/widget/RadialTimePickerView;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v0, v2

    sub-float/2addr v4, v0

    .line 1356
    sub-float v0, p1, v1

    float-to-int v0, v0

    sub-float v2, v4, v1

    float-to-int v2, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    add-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {p2, v0, v2, p1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1358
    return-void
.end method

.method private greylist-max-o getCircularDiff(III)I
    .registers 4

    .line 1204
    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1205
    div-int/lit8 p2, p3, 0x2

    .line 1206
    if-le p1, p2, :cond_b

    sub-int p1, p3, p1

    :cond_b
    return p1
.end method

.method private greylist-max-o getTypeFromId(I)I
    .registers 2

    .line 1387
    ushr-int/lit8 p1, p1, 0x0

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method private greylist-max-o getValueFromId(I)I
    .registers 2

    .line 1391
    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private greylist-max-o getVirtualViewDescription(II)Ljava/lang/CharSequence;
    .registers 4

    .line 1362
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_9

    .line 1365
    :cond_7
    const/4 p1, 0x0

    goto :goto_d

    .line 1363
    :cond_9
    :goto_9
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 1367
    :goto_d
    return-object p1
.end method

.method private greylist-max-o getVirtualViewIdAfter(II)I
    .registers 5

    .line 1264
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 1265
    add-int/2addr p2, v0

    .line 1266
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x17

    goto :goto_11

    :cond_f
    const/16 v0, 0xc

    .line 1267
    :goto_11
    if-gt p2, v0, :cond_39

    .line 1268
    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p1

    return p1

    .line 1270
    :cond_18
    const/4 v0, 0x2

    if-ne p1, v0, :cond_39

    .line 1271
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1272
    rem-int/lit8 v1, p2, 0x5

    sub-int v1, p2, v1

    .line 1273
    add-int/lit8 v1, v1, 0x5

    .line 1274
    if-ge p2, v0, :cond_30

    if-le v1, v0, :cond_30

    .line 1276
    invoke-direct {p0, p1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p1

    return p1

    .line 1277
    :cond_30
    const/16 p2, 0x3c

    if-ge v1, p2, :cond_3a

    .line 1278
    invoke-direct {p0, p1, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p1

    return p1

    .line 1270
    :cond_39
    nop

    .line 1281
    :cond_3a
    const/high16 p1, -0x80000000

    return p1
.end method

.method private greylist-max-o hour12To24(II)I
    .registers 4

    .line 1303
    nop

    .line 1304
    const/16 v0, 0xc

    if-ne p1, v0, :cond_9

    .line 1305
    if-nez p2, :cond_e

    .line 1306
    const/4 p1, 0x0

    goto :goto_e

    .line 1308
    :cond_9
    const/4 v0, 0x1

    if-ne p2, v0, :cond_e

    .line 1309
    add-int/lit8 p1, p1, 0xc

    .line 1311
    :cond_e
    :goto_e
    return p1
.end method

.method private greylist-max-o hour24To12(I)I
    .registers 3

    .line 1315
    const/16 v0, 0xc

    if-nez p1, :cond_5

    .line 1316
    return v0

    .line 1317
    :cond_5
    if-le p1, v0, :cond_9

    .line 1318
    sub-int/2addr p1, v0

    return p1

    .line 1320
    :cond_9
    return p1
.end method

.method private greylist-max-o isVirtualViewSelected(II)Z
    .registers 6

    .line 1372
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 1373
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView;->getCurrentHour()I

    move-result p1

    if-ne p1, p2, :cond_1c

    move v0, v1

    goto :goto_1c

    .line 1374
    :cond_e
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1b

    .line 1375
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result p1

    if-ne p1, p2, :cond_1c

    move v0, v1

    goto :goto_1c

    .line 1377
    :cond_1b
    nop

    .line 1379
    :cond_1c
    :goto_1c
    return v0
.end method

.method private greylist-max-o makeId(II)I
    .registers 3

    .line 1383
    shl-int/lit8 p1, p1, 0x0

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method protected greylist-max-o getVirtualViewAt(FF)I
    .registers 7

    .line 1163
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetDegreesFromXY(Landroid/widget/RadialTimePickerView;FFZ)I

    move-result v0

    .line 1164
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5d

    .line 1165
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$smsnapOnly30s(II)I

    move-result v2

    rem-int/lit16 v2, v2, 0x168

    .line 1166
    iget-object v3, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v3}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 1167
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0, p1, p2}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetInnerCircleFromXY(Landroid/widget/RadialTimePickerView;FF)Z

    move-result p1

    .line 1168
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p2, v2, p1}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetHourForDegrees(Landroid/widget/RadialTimePickerView;IZ)I

    move-result p1

    .line 1169
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result p2

    if-eqz p2, :cond_2e

    goto :goto_32

    :cond_2e
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour24To12(I)I

    move-result p1

    .line 1170
    :goto_32
    invoke-direct {p0, v1, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p1

    .line 1171
    goto :goto_5c

    .line 1172
    :cond_37
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p1}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result p1

    .line 1173
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p2, v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetMinuteForDegrees(Landroid/widget/RadialTimePickerView;I)I

    move-result p2

    .line 1174
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0, v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$mgetMinuteForDegrees(Landroid/widget/RadialTimePickerView;I)I

    move-result v0

    .line 1178
    const/16 v1, 0x3c

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result v2

    .line 1179
    invoke-direct {p0, v0, p2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getCircularDiff(III)I

    move-result p2

    .line 1181
    if-ge v2, p2, :cond_56

    .line 1182
    goto :goto_57

    .line 1184
    :cond_56
    move p1, v0

    .line 1186
    :goto_57
    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result p1

    .line 1188
    :goto_5c
    goto :goto_5f

    .line 1189
    :cond_5d
    const/high16 p1, -0x80000000

    .line 1192
    :goto_5f
    return p1
.end method

.method protected greylist-max-o getVisibleVirtualViews(Landroid/util/IntArray;)V
    .registers 6

    .line 1211
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmShowHours(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1212
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v0}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v0

    .line 1213
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {v2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v2, 0x17

    goto :goto_1d

    :cond_1b
    const/16 v2, 0xc

    .line 1214
    :goto_1d
    nop

    :goto_1e
    if-gt v0, v2, :cond_2a

    .line 1215
    invoke-direct {p0, v1, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1217
    :cond_2a
    goto :goto_4e

    .line 1218
    :cond_2b
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {v0}, Landroid/widget/RadialTimePickerView;->getCurrentMinute()I

    move-result v0

    .line 1219
    const/4 v1, 0x0

    :goto_32
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_4e

    .line 1220
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/IntArray;->add(I)V

    .line 1224
    if-le v0, v1, :cond_4b

    add-int/lit8 v3, v1, 0x5

    if-ge v0, v3, :cond_4b

    .line 1225
    invoke-direct {p0, v2, v0}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->makeId(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    .line 1219
    :cond_4b
    add-int/lit8 v1, v1, 0x5

    goto :goto_32

    .line 1229
    :cond_4e
    :goto_4e
    return-void
.end method

.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1102
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1104
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1105
    sget-object p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1106
    return-void
.end method

.method protected greylist-max-o onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5

    .line 1287
    const/16 p3, 0x10

    if-ne p2, p3, :cond_31

    .line 1288
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result p2

    .line 1289
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result p1

    .line 1290
    const/4 p3, 0x1

    if-ne p2, p3, :cond_28

    .line 1291
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmIs24HourMode(Landroid/widget/RadialTimePickerView;)Z

    move-result p2

    if-eqz p2, :cond_18

    goto :goto_22

    :cond_18
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-static {p2}, Landroid/widget/RadialTimePickerView;->-$$Nest$fgetmAmOrPm(Landroid/widget/RadialTimePickerView;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->hour12To24(II)I

    move-result p1

    .line 1292
    :goto_22
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, p1}, Landroid/widget/RadialTimePickerView;->setCurrentHour(I)V

    .line 1293
    return p3

    .line 1294
    :cond_28
    const/4 v0, 0x2

    if-ne p2, v0, :cond_31

    .line 1295
    iget-object p2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, p1}, Landroid/widget/RadialTimePickerView;->setCurrentMinute(I)V

    .line 1296
    return p3

    .line 1299
    :cond_31
    const/4 p1, 0x0

    return p1
.end method

.method protected greylist-max-o onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1235
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1236
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result p1

    .line 1237
    invoke-direct {p0, v0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1238
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1239
    return-void
.end method

.method protected greylist-max-o onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .line 1243
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1244
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1246
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getTypeFromId(I)I

    move-result v0

    .line 1247
    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getValueFromId(I)I

    move-result v1

    .line 1248
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewDescription(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1249
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object v2, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v2}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getBoundsForVirtualView(ILandroid/graphics/Rect;)V

    .line 1252
    iget-object p1, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1254
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->isVirtualViewSelected(II)Z

    move-result p1

    .line 1255
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 1257
    invoke-direct {p0, v0, v1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->getVirtualViewIdAfter(II)I

    move-result p1

    .line 1258
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_3d

    .line 1259
    iget-object v0, p0, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->this$0:Landroid/widget/RadialTimePickerView;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    .line 1261
    :cond_3d
    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    .line 1110
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_8

    .line 1111
    return p3

    .line 1114
    :cond_8
    sparse-switch p2, :sswitch_data_16

    .line 1123
    const/4 p1, 0x0

    return p1

    .line 1119
    :sswitch_d
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 1120
    return p3

    .line 1116
    :sswitch_12
    invoke-direct {p0, p3}, Landroid/widget/RadialTimePickerView$RadialPickerTouchHelper;->adjustPicker(I)V

    .line 1117
    return p3

    :sswitch_data_16
    .sparse-switch
        0x1000 -> :sswitch_12
        0x2000 -> :sswitch_d
    .end sparse-switch
.end method
