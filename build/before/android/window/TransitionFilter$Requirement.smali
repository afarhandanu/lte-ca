.class public final Landroid/window/TransitionFilter$Requirement;
.super Ljava/lang/Object;
.source "TransitionFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Requirement"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionFilter$Requirement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mActivityType:I

.field public blacklist mCustomAnimation:Ljava/lang/Boolean;

.field public blacklist mFlags:I

.field public blacklist mIsCrossDisplayMove:Z

.field public blacklist mLaunchCookie:Landroid/os/IBinder;

.field public blacklist mModes:[I

.field public blacklist mMustBeIndependent:Z

.field public blacklist mMustBeTask:Z

.field public blacklist mNot:Z

.field public blacklist mOrder:I

.field public blacklist mTaskFragmentToken:Landroid/os/IBinder;

.field public blacklist mTopActivity:Landroid/content/ComponentName;

.field public blacklist mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 346
    new-instance v0, Landroid/window/TransitionFilter$Requirement$1;

    invoke-direct {v0}, Landroid/window/TransitionFilter$Requirement$1;-><init>()V

    sput-object v0, Landroid/window/TransitionFilter$Requirement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    .line 173
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 178
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    .line 181
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    .line 183
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 188
    iput-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    .line 189
    iput-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 191
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    .line 194
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mIsCrossDisplayMove:Z

    .line 197
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    .line 173
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    .line 175
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 178
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    .line 181
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    .line 183
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 188
    iput-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    .line 189
    iput-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 191
    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    .line 194
    iput-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mIsCrossDisplayMove:Z

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    .line 207
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mLaunchCookie:Landroid/os/IBinder;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 211
    if-nez v3, :cond_5d

    goto :goto_65

    :cond_5d
    const/4 v2, 0x2

    if-ne v3, v2, :cond_61

    move v0, v1

    :cond_61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_65
    iput-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/TransitionFilter$Requirement;->mIsCrossDisplayMove:Z

    .line 215
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionFilter$Requirement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist matchesCookie(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 6

    .line 306
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mLaunchCookie:Landroid/os/IBinder;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 307
    :cond_6
    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 308
    :cond_a
    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 309
    iget-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mLaunchCookie:Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 310
    return v1

    .line 312
    :cond_25
    goto :goto_10

    .line 313
    :cond_26
    return v0
.end method

.method private blacklist matchesTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;)Z
    .registers 4

    .line 296
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 297
    :cond_6
    if-eqz p2, :cond_f

    .line 298
    iget-object p1, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 299
    :cond_f
    if-eqz p1, :cond_1a

    .line 300
    iget-object p2, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 302
    :cond_1a
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method blacklist matches(Landroid/window/TransitionInfo;)Z
    .registers 9

    .line 219
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    const/4 v2, 0x0

    if-ltz v0, :cond_110

    .line 220
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 222
    iget-object v4, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v4, :cond_29

    iget-object v4, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    .line 223
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskFragmentToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 224
    goto/16 :goto_10b

    .line 227
    :cond_29
    iget-boolean v4, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    if-eqz v4, :cond_35

    invoke-static {v3, p1}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 229
    goto/16 :goto_10b

    .line 231
    :cond_35
    iget v4, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    if-ne v4, v1, :cond_3d

    if-lez v0, :cond_3d

    .line 232
    goto/16 :goto_10b

    .line 234
    :cond_3d
    iget v4, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    if-eqz v4, :cond_55

    .line 235
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_10b

    .line 236
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    iget v5, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    if-eq v4, v5, :cond_55

    .line 237
    goto/16 :goto_10b

    .line 240
    :cond_55
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/window/TransitionFilter$Requirement;->matchesTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 241
    goto/16 :goto_10b

    .line 243
    :cond_65
    iget-object v4, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    if-eqz v4, :cond_85

    .line 244
    nop

    .line 245
    move v4, v2

    :goto_6b
    iget-object v5, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    array-length v5, v5

    if-ge v4, v5, :cond_80

    .line 246
    iget-object v5, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    aget v5, v5, v4

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    if-ne v5, v6, :cond_7d

    .line 247
    nop

    .line 248
    move v4, v1

    goto :goto_81

    .line 245
    :cond_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    :cond_80
    move v4, v2

    .line 251
    :goto_81
    if-nez v4, :cond_85

    goto/16 :goto_10b

    .line 253
    :cond_85
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    iget v5, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    and-int/2addr v4, v5

    iget v5, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    if-eq v4, v5, :cond_92

    .line 254
    goto/16 :goto_10b

    .line 256
    :cond_92
    iget-boolean v4, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    if-eqz v4, :cond_9e

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_9e

    .line 257
    goto/16 :goto_10b

    .line 259
    :cond_9e
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/window/TransitionFilter$Requirement;->matchesCookie(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v4

    if-nez v4, :cond_a9

    .line 260
    goto :goto_10b

    .line 262
    :cond_a9
    iget-object v4, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    if-eqz v4, :cond_df

    .line 264
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-nez v4, :cond_b9

    .line 265
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_df

    .line 266
    :cond_b9
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v4

    .line 267
    if-eqz v4, :cond_d5

    .line 268
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_cb

    .line 269
    invoke-virtual {v4}, Landroid/window/TransitionInfo$AnimationOptions;->getOverrideTaskTransition()Z

    move-result v4

    if-eqz v4, :cond_cc

    :cond_cb
    move v2, v1

    .line 270
    :cond_cc
    iget-object v4, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v2, :cond_de

    .line 271
    goto :goto_10b

    .line 273
    :cond_d5
    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 274
    goto :goto_10b

    .line 273
    :cond_de
    nop

    .line 277
    :cond_df
    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    if-eqz v2, :cond_f6

    .line 278
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_10b

    .line 279
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    iget v4, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    if-eq v2, v4, :cond_f6

    .line 280
    goto :goto_10b

    .line 283
    :cond_f6
    iget-boolean v2, p0, Landroid/window/TransitionFilter$Requirement;->mIsCrossDisplayMove:Z

    if-eqz v2, :cond_10f

    .line 284
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_10b

    .line 285
    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getStartDisplayId()I

    move-result v2

    invoke-virtual {v3}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result v3

    if-ne v2, v3, :cond_10f

    .line 286
    nop

    .line 219
    :cond_10b
    :goto_10b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    .line 289
    :cond_10f
    return v1

    .line 291
    :cond_110
    return v2
.end method

.method blacklist matches(Landroid/window/TransitionRequestInfo;)Z
    .registers 5

    .line 319
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 320
    :cond_6
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 321
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    if-ne v0, v2, :cond_2e

    .line 322
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/window/TransitionFilter$Requirement;->matchesTopActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 323
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/window/TransitionFilter$Requirement;->matchesCookie(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 320
    :goto_2f
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    iget-boolean v1, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    if-eqz v1, :cond_13

    const-string v1, "NOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " independent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, " modes=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    if-eqz v1, :cond_7c

    .line 374
    const/4 v1, 0x0

    :goto_51
    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_7c

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v1, :cond_60

    const-string v3, ""

    goto :goto_62

    :cond_60
    const-string v3, ","

    :goto_62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    aget v3, v3, v1

    invoke-static {v3}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 378
    :cond_7c
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    invoke-static {v2}, Landroid/window/TransitionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mustBeTask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    invoke-static {v2}, Landroid/window/TransitionFilter;->-$$Nest$smcontainerOrderToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, " topActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    const-string v1, " launchCookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    iget-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    if-eqz v1, :cond_fa

    .line 385
    const-string v1, " customAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 387
    :cond_fa
    iget-object v1, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_109

    .line 388
    const-string v1, " taskFragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    :cond_109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " windowingMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    .line 391
    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isCrossDisplayMove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/window/TransitionFilter$Requirement;->mIsCrossDisplayMove:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 329
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeIndependent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    iget-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mNot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 332
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 333
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-boolean v0, p0, Landroid/window/TransitionFilter$Requirement;->mMustBeTask:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 335
    iget v0, p0, Landroid/window/TransitionFilter$Requirement;->mOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v0, p0, Landroid/window/TransitionFilter$Requirement;->mTopActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 337
    iget-object p2, p0, Landroid/window/TransitionFilter$Requirement;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 338
    iget-object p2, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    if-nez p2, :cond_33

    const/4 p2, 0x0

    goto :goto_3e

    :cond_33
    iget-object p2, p0, Landroid/window/TransitionFilter$Requirement;->mCustomAnimation:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3d

    const/4 p2, 0x2

    goto :goto_3e

    :cond_3d
    const/4 p2, 0x1

    .line 339
    :goto_3e
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object p2, p0, Landroid/window/TransitionFilter$Requirement;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 341
    iget p2, p0, Landroid/window/TransitionFilter$Requirement;->mWindowingMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget-boolean p2, p0, Landroid/window/TransitionFilter$Requirement;->mIsCrossDisplayMove:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 343
    return-void
.end method
