.class public final Landroid/view/autofill/AutofillStateFingerprint;
.super Ljava/lang/Object;
.source "AutofillStateFingerprint.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AutofillStateFingerprint"


# instance fields
.field private blacklist mFailedAutofillValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFailedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mHashToAutofillIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mHideHighlight:Z

.field blacklist mOldIdsToCurrentAutofillIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mPriorAutofillIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSessionId:I

.field private blacklist mUseRelativePosition:Z

.field blacklist mViewHashCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$1sGf-jkz8zkspSlTN1IdvPkWAZ4(Landroid/view/autofill/AutofillStateFingerprint;Landroid/view/View;Landroid/view/View;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->lambda$getFingerprintIds$1(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$KWEO10vil0sbd-6rqA2bnKyto3o(Landroid/view/autofill/AutofillStateFingerprint;Landroid/view/autofill/AutofillManager;[Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->lambda$attemptRefill$0(Landroid/view/autofill/AutofillManager;[Landroid/view/View;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHideHighlight:Z

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mOldIdsToCurrentAutofillIdMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedAutofillValues:Ljava/util/ArrayList;

    .line 74
    return-void
.end method

.method private blacklist compareBottom(Landroid/view/View;Landroid/view/View;)I
    .registers 3

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private blacklist compareLeft(Landroid/view/View;Landroid/view/View;)I
    .registers 3

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private blacklist compareRight(Landroid/view/View;Landroid/view/View;)I
    .registers 3

    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method private blacklist compareTop(Landroid/view/View;Landroid/view/View;)I
    .registers 3

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public static blacklist createInstance()Landroid/view/autofill/AutofillStateFingerprint;
    .registers 1

    .line 70
    new-instance v0, Landroid/view/autofill/AutofillStateFingerprint;

    invoke-direct {v0}, Landroid/view/autofill/AutofillStateFingerprint;-><init>()V

    return-object v0
.end method

.method private blacklist dumpCurrentState()V
    .registers 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FailedId\'s: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillStateFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hashes from map"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method private synthetic blacklist lambda$attemptRefill$0(Landroid/view/autofill/AutofillManager;[Landroid/view/View;)V
    .registers 9

    .line 217
    iget-object v2, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedAutofillValues:Ljava/util/ArrayList;

    iget-boolean v4, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHideHighlight:Z

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->autofill([Landroid/view/View;Ljava/util/List;Ljava/util/List;ZZ)V

    return-void
.end method

.method private synthetic blacklist lambda$getFingerprintIds$1(Landroid/view/View;Landroid/view/View;)I
    .registers 7

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    .line 232
    invoke-virtual {p2}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 234
    const/4 v2, 0x0

    aget v3, v0, v2

    aget v2, v1, v2

    sub-int/2addr v3, v2

    .line 235
    if-eqz v3, :cond_11

    .line 236
    return v3

    .line 238
    :cond_11
    const/4 v2, 0x1

    aget v0, v0, v2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 239
    if-eqz v0, :cond_1a

    .line 240
    return v0

    .line 243
    :cond_1a
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->compareTop(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 244
    if-eqz v0, :cond_21

    .line 245
    return v0

    .line 247
    :cond_21
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->compareBottom(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 248
    if-eqz v0, :cond_28

    .line 249
    return v0

    .line 251
    :cond_28
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->compareLeft(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 252
    if-eqz v0, :cond_2f

    .line 253
    return v0

    .line 255
    :cond_2f
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillStateFingerprint;->compareRight(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method


# virtual methods
.method blacklist attemptRefill(Ljava/util/List;Landroid/view/autofill/AutofillManager;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/autofill/AutofillManager;",
            ")Z"
        }
    .end annotation

    .line 163
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_7

    .line 164
    invoke-direct {p0}, Landroid/view/autofill/AutofillStateFingerprint;->dumpCurrentState()V

    .line 167
    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillStateFingerprint;->getFingerprintIds(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "AutofillStateFingerprint"

    if-eqz v1, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 175
    invoke-virtual {v3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 176
    iget v5, p0, Landroid/view/autofill/AutofillStateFingerprint;->mSessionId:I

    invoke-virtual {v4, v5}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 177
    iget-object v5, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 178
    iget-object v5, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 179
    iget v5, p0, Landroid/view/autofill/AutofillStateFingerprint;->mSessionId:I

    invoke-virtual {v1, v5}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 180
    iget-object v5, p0, Landroid/view/autofill/AutofillStateFingerprint;->mOldIdsToCurrentAutofillIdMap:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mapping current autofill id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to existing autofill id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    goto :goto_b7

    .line 186
    :cond_89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t map current autofill id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with currentHash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for view:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_b7
    goto/16 :goto_18

    .line 191
    :cond_b9
    nop

    .line 192
    iget-object p1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/View;

    .line 193
    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_c5
    iget-object v5, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_fe

    .line 194
    iget-object v5, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillId;

    .line 195
    iget-object v6, p0, Landroid/view/autofill/AutofillStateFingerprint;->mOldIdsToCurrentAutofillIdMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 196
    if-nez v6, :cond_e8

    .line 197
    sget-boolean v7, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_e8

    .line 198
    const-string v7, "currentAutofillId = null"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_e8
    iget-object v7, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    aput-object v5, p1, v3

    .line 203
    aget-object v5, p1, v3

    if-eqz v5, :cond_fb

    .line 204
    add-int/lit8 v4, v4, 0x1

    .line 193
    :cond_fb
    add-int/lit8 v3, v3, 0x1

    goto :goto_c5

    .line 208
    :cond_fe
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_105

    .line 209
    invoke-direct {p0}, Landroid/view/autofill/AutofillStateFingerprint;->dumpCurrentState()V

    .line 213
    :cond_105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting refill of views. Found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " views to refill from previously "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    .line 214
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " failed ids:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v0, Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/AutofillStateFingerprint;Landroid/view/autofill/AutofillManager;[Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    .line 221
    return v1
.end method

.method public blacklist getEphemeralFingerprintId(Landroid/view/View;I)I
    .registers 37

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_8

    const/4 v0, -0x1

    return v0

    .line 273
    :cond_8
    nop

    .line 274
    nop

    .line 275
    nop

    .line 276
    nop

    .line 277
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_25

    .line 278
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    .line 279
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 280
    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    .line 281
    invoke-virtual {v2}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v5

    .line 282
    invoke-virtual {v2}, Landroid/widget/TextView;->getImeOptions()I

    move-result v2

    move-object v8, v4

    goto :goto_2c

    .line 277
    :cond_25
    const/high16 v3, -0x80000000

    const/4 v5, 0x0

    const-string v4, ""

    move v2, v3

    move-object v8, v4

    .line 285
    :goto_2c
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    .line 286
    invoke-virtual {v1}, Landroid/view/View;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v10

    .line 288
    invoke-virtual {v1}, Landroid/view/View;->getAutofillType()I

    move-result v4

    .line 289
    invoke-virtual {v1}, Landroid/view/View;->getAutofillHints()[Ljava/lang/String;

    move-result-object v17

    .line 290
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    .line 292
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 293
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    .line 294
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    .line 295
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    .line 299
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v14

    .line 300
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 305
    move/from16 v16, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move/from16 v18, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move/from16 v19, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v20, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 306
    move/from16 v21, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 307
    move/from16 v23, v13

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move/from16 v24, v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move/from16 v25, v15

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v26, v16

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move/from16 v29, v12

    move/from16 v33, v18

    move/from16 v1, v19

    move/from16 v27, v20

    move/from16 v28, v21

    move-object/from16 v12, v22

    move/from16 v30, v23

    move/from16 v31, v24

    move/from16 v32, v25

    filled-new-array/range {v4 .. v16}, [Ljava/lang/Object;

    move-result-object v4

    .line 305
    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    .line 308
    iget-boolean v5, v0, Landroid/view/autofill/AutofillStateFingerprint;->mUseRelativePosition:Z

    if-eqz v5, :cond_c4

    .line 309
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    .line 311
    :cond_c4
    sget-boolean v5, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_1b0

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hash: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for AutofillId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " visibility:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " inputType:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " imeOptions:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSingleLine:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, v33

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hints:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentDesc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tooltipText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autofillType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autofillHints:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v31

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v32

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paddingLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paddingRight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paddingTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " paddingBottom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUseRelativePosition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, v0, Landroid/view/autofill/AutofillStateFingerprint;->mUseRelativePosition:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, "AutofillStateFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1b0
    return v4
.end method

.method blacklist getFingerprintIds(Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 229
    iget-boolean v1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mUseRelativePosition:Z

    if-eqz v1, :cond_11

    .line 230
    new-instance v1, Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillStateFingerprint$$ExternalSyntheticLambda0;-><init>(Landroid/view/autofill/AutofillStateFingerprint;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 260
    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 261
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 262
    invoke-virtual {p0, v2, v1}, Landroid/view/autofill/AutofillStateFingerprint;->getEphemeralFingerprintId(Landroid/view/View;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 264
    :cond_2c
    return-object v0
.end method

.method blacklist setSessionId(I)V
    .registers 2

    .line 80
    iput p1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mSessionId:I

    .line 81
    return-void
.end method

.method blacklist setUseRelativePosition(Z)V
    .registers 2

    .line 87
    iput-boolean p1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mUseRelativePosition:Z

    .line 88
    return-void
.end method

.method blacklist storeFailedIdsAndValues(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillValue;",
            ">;Z)V"
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 143
    if-eqz v1, :cond_18

    .line 144
    iget v2, p0, Landroid/view/autofill/AutofillStateFingerprint;->mSessionId:I

    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    goto :goto_23

    .line 146
    :cond_18
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_23

    .line 147
    const-string v1, "AutofillStateFingerprint"

    const-string v2, "Got null failed ids"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_23
    :goto_23
    goto :goto_4

    .line 151
    :cond_24
    iput-object p1, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedIds:Ljava/util/ArrayList;

    .line 152
    iput-object p2, p0, Landroid/view/autofill/AutofillStateFingerprint;->mFailedAutofillValues:Ljava/util/ArrayList;

    .line 153
    iput-boolean p3, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHideHighlight:Z

    .line 154
    return-void
.end method

.method blacklist storeStatePriorToAuthentication(Landroid/view/autofill/AutofillManager$AutofillClient;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/autofill/AutofillManager$AutofillClient;",
            "Ljava/util/Set<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Landroid/view/autofill/AutofillStateFingerprint;->mUseRelativePosition:Z

    const-string v1, "Encountered null view"

    const-string v2, "AutofillStateFingerprint"

    if-eqz v0, :cond_63

    .line 96
    invoke-interface {p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindAutofillableViewsByTraversal()Ljava/util/List;

    move-result-object p1

    .line 97
    sget-boolean p2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_2a

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Autofillable views count prior to auth:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2a
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillStateFingerprint;->getFingerprintIds(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 104
    if-eqz v0, :cond_5a

    .line 105
    iget-object v3, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 107
    :cond_5a
    sget-boolean p2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz p2, :cond_61

    .line 108
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_61
    :goto_61
    goto :goto_36

    .line 112
    :cond_62
    goto :goto_b8

    .line 114
    :cond_63
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_8b

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of autofillId\'s being stored: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " list:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_8b
    invoke-static {p2}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object p2

    .line 119
    invoke-interface {p1, p2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object p1

    .line 120
    const/4 v0, 0x0

    move v3, v0

    :goto_95
    array-length v4, p2

    if-ge v3, v4, :cond_b8

    .line 121
    aget-object v4, p1, v3

    .line 122
    if-eqz v4, :cond_ae

    .line 123
    invoke-virtual {p0, v4, v0}, Landroid/view/autofill/AutofillStateFingerprint;->getEphemeralFingerprintId(Landroid/view/View;I)I

    move-result v5

    .line 124
    invoke-virtual {v4}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 125
    iget-object v6, p0, Landroid/view/autofill/AutofillStateFingerprint;->mHashToAutofillIdMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    goto :goto_b5

    .line 127
    :cond_ae
    sget-boolean v4, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_b5

    .line 128
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_b5
    :goto_b5
    add-int/lit8 v3, v3, 0x1

    goto :goto_95

    .line 133
    :cond_b8
    :goto_b8
    return-void
.end method
