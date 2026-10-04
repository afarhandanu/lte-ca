.class public final Landroid/window/BackNavigationInfo;
.super Ljava/lang/Object;
.source "BackNavigationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/BackNavigationInfo$CustomAnimationInfo;,
        Landroid/window/BackNavigationInfo$Builder;,
        Landroid/window/BackNavigationInfo$BackTargetType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/BackNavigationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist KEY_DISPLAY_ID:Ljava/lang/String; = "DisplayId"

.field public static final blacklist KEY_NAVIGATION_FINISHED:Ljava/lang/String; = "NavigationFinished"

.field public static final blacklist KEY_TOUCH_GESTURE_TRANSFERRED:Ljava/lang/String; = "TouchGestureTransferred"

.field public static final blacklist TYPE_CALLBACK:I = 0x4

.field public static final blacklist TYPE_CROSS_ACTIVITY:I = 0x2

.field public static final blacklist TYPE_CROSS_TASK:I = 0x3

.field public static final blacklist TYPE_DIALOG_CLOSE:I = 0x0

.field public static final blacklist TYPE_IN_TRANSITION:I = 0x5

.field public static final blacklist TYPE_RETURN_TO_HOME:I = 0x1

.field public static final blacklist TYPE_UNDEFINED:I = -0x1


# instance fields
.field private final blacklist mAnimationCallback:Z

.field private blacklist mAppProgressGenerationAllowed:Z

.field private final blacklist mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

.field private final blacklist mFocusedTaskId:I

.field private final blacklist mLetterboxColor:I

.field private final blacklist mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

.field private final blacklist mOnBackNavigationDone:Landroid/os/RemoteCallback;

.field private final blacklist mPrepareRemoteAnimation:Z

.field private final blacklist mTouchableRegion:Landroid/graphics/Rect;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 308
    new-instance v0, Landroid/window/BackNavigationInfo$1;

    invoke-direct {v0}, Landroid/window/BackNavigationInfo$1;-><init>()V

    sput-object v0, Landroid/window/BackNavigationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;ZZLandroid/window/BackNavigationInfo$CustomAnimationInfo;ILandroid/graphics/Rect;ZI)V
    .registers 11

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Landroid/window/BackNavigationInfo;->mType:I

    .line 159
    iput-object p2, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    .line 160
    iput-object p3, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    .line 161
    iput-boolean p4, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    .line 162
    iput-boolean p5, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    .line 163
    iput-object p6, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    .line 164
    iput p7, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    .line 165
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    .line 166
    iput-boolean p9, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    .line 167
    iput p10, p0, Landroid/window/BackNavigationInfo;->mFocusedTaskId:I

    .line 168
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;ZZLandroid/window/BackNavigationInfo$CustomAnimationInfo;ILandroid/graphics/Rect;ZILandroid/window/BackNavigationInfo-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/window/BackNavigationInfo;-><init>(ILandroid/os/RemoteCallback;Landroid/window/IOnBackInvokedCallback;ZZLandroid/window/BackNavigationInfo$CustomAnimationInfo;ILandroid/graphics/Rect;ZI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    .line 172
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallback;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/IOnBackInvokedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/IOnBackInvokedCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    .line 176
    sget-object v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    .line 178
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/window/BackNavigationInfo;->mFocusedTaskId:I

    .line 181
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/BackNavigationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/BackNavigationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist typeToString(I)Ljava/lang/String;
    .registers 1

    .line 337
    packed-switch p0, :pswitch_data_1e

    .line 353
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :pswitch_8
    const-string p0, "TYPE_IN_TRANSITION"

    return-object p0

    .line 349
    :pswitch_b
    const-string p0, "TYPE_CALLBACK"

    return-object p0

    .line 347
    :pswitch_e
    const-string p0, "TYPE_CROSS_TASK"

    return-object p0

    .line 345
    :pswitch_11
    const-string p0, "TYPE_CROSS_ACTIVITY"

    return-object p0

    .line 343
    :pswitch_14
    const-string p0, "TYPE_RETURN_TO_HOME"

    return-object p0

    .line 341
    :pswitch_17
    const-string p0, "TYPE_DIALOG_CLOSE"

    return-object p0

    .line 339
    :pswitch_1a
    const-string p0, "TYPE_UNDEFINED"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableAppProgressGenerationAllowed()V
    .registers 2

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    .line 276
    return-void
.end method

.method public blacklist getCustomAnimationInfo()Landroid/window/BackNavigationInfo$CustomAnimationInfo;
    .registers 2

    .line 298
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    return-object v0
.end method

.method public blacklist getFocusedTaskId()I
    .registers 2

    .line 267
    iget v0, p0, Landroid/window/BackNavigationInfo;->mFocusedTaskId:I

    return v0
.end method

.method public blacklist getLetterboxColor()I
    .registers 2

    .line 242
    iget v0, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    return v0
.end method

.method public blacklist getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    return-object v0
.end method

.method public blacklist getTouchableRegion()Landroid/graphics/Rect;
    .registers 2

    .line 251
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 204
    iget v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    return v0
.end method

.method public blacklist isAnimationCallback()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    return v0
.end method

.method public blacklist isAppProgressGenerationAllowed()Z
    .registers 2

    .line 259
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    return v0
.end method

.method public blacklist isPrepareRemoteAnimation()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    return v0
.end method

.method public blacklist onBackNavigationFinished(Z)V
    .registers 4

    .line 285
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    if-eqz v0, :cond_13

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    const-string v1, "NavigationFinished"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    iget-object p1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 290
    :cond_13
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackNavigationInfo{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackNavigationInfo;->mType:I

    .line 323
    invoke-static {v1}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), mOnBackNavigationDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOnBackInvokedCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrepareRemoteAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAnimationCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCustomizeAnimationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 186
    iget v0, p0, Landroid/window/BackNavigationInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackNavigationDone:Landroid/os/RemoteCallback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 188
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mOnBackInvokedCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 189
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mPrepareRemoteAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    iget-boolean v0, p0, Landroid/window/BackNavigationInfo;->mAnimationCallback:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mCustomAnimationInfo:Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 192
    iget v0, p0, Landroid/window/BackNavigationInfo;->mLetterboxColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object v0, p0, Landroid/window/BackNavigationInfo;->mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 194
    iget-boolean p2, p0, Landroid/window/BackNavigationInfo;->mAppProgressGenerationAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 195
    iget p2, p0, Landroid/window/BackNavigationInfo;->mFocusedTaskId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return-void
.end method
