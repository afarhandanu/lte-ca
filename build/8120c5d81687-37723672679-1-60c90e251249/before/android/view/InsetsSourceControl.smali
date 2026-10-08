.class public Landroid/view/InsetsSourceControl;
.super Ljava/lang/Object;
.source "InsetsSourceControl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSourceControl$Array;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private blacklist mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field private final blacklist mInitiallyVisible:Z

.field private blacklist mInsetsHint:Landroid/graphics/Insets;

.field private final blacklist mLeash:Landroid/view/SurfaceControl;

.field private blacklist mParcelableFlags:I

.field private blacklist mSkipAnimationOnce:Z

.field private final blacklist mSurfacePosition:Landroid/graphics/Point;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 264
    new-instance v0, Landroid/view/InsetsSourceControl$1;

    invoke-direct {v0}, Landroid/view/InsetsSourceControl$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSourceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILandroid/view/SurfaceControl;ZLandroid/graphics/Point;Landroid/graphics/Insets;)V
    .registers 7

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Landroid/view/InsetsSourceControl;->mId:I

    .line 73
    iput p2, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 74
    iput-object p3, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 75
    iput-boolean p4, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    .line 76
    iput-object p5, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 77
    iput-object p6, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 78
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 98
    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    .line 100
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 101
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 103
    sget-object v0, Landroid/view/inputmethod/ImeTracker$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/ImeTracker$Token;

    iput-object p1, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSourceControl;)V
    .registers 5

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget v0, p1, Landroid/view/InsetsSourceControl;->mId:I

    iput v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    .line 82
    iget v0, p1, Landroid/view/InsetsSourceControl;->mType:I

    iput v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 83
    iget-object v0, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1b

    .line 84
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    const-string v2, "InsetsSourceControl"

    invoke-direct {v0, v1, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    goto :goto_1e

    .line 86
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 88
    :goto_1e
    iget-boolean v0, p1, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    .line 89
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 90
    iget-object v0, p1, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 91
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getAndClearSkipAnimationOnce()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 92
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getImeStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 93
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    .line 251
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    const-string p1, "InsetsSourceControl mId="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    const-string p1, " mType="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {p1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    const-string p1, " mLeash="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 255
    const-string p1, " mInitiallyVisible="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 256
    const-string p1, " mSurfacePosition="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 257
    const-string p1, " mInsetsHint="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 258
    const-string p1, " mSkipAnimationOnce="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 259
    const-string p1, " mImeStatsToken="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 261
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 281
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 282
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 283
    iget-object v2, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 284
    iget-object v2, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 285
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 287
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_36

    .line 288
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 291
    :cond_36
    const-wide v0, 0x10500000004L

    iget v2, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 292
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 293
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 215
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 216
    return v0

    .line 218
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_57

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_57

    .line 221
    :cond_12
    check-cast p1, Landroid/view/InsetsSourceControl;

    .line 222
    iget-object v2, p1, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 223
    iget v3, p0, Landroid/view/InsetsSourceControl;->mId:I

    iget v4, p1, Landroid/view/InsetsSourceControl;->mId:I

    if-ne v3, v4, :cond_55

    iget v3, p0, Landroid/view/InsetsSourceControl;->mType:I

    iget v4, p1, Landroid/view/InsetsSourceControl;->mType:I

    if-ne v3, v4, :cond_55

    iget-object v3, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eq v3, v2, :cond_34

    iget-object v3, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_55

    if-eqz v2, :cond_55

    iget-object v3, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    .line 226
    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v2

    if-eqz v2, :cond_55

    :cond_34
    iget-boolean v2, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    iget-boolean v3, p1, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    if-ne v2, v3, :cond_55

    iget-object v2, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v3, p1, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    .line 228
    invoke-virtual {v2, v3}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget-object v3, p1, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 229
    invoke-virtual {v2, v3}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-boolean v2, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    iget-boolean p1, p1, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    if-ne v2, p1, :cond_55

    goto :goto_56

    :cond_55
    move v0, v1

    .line 223
    :goto_56
    return v0

    .line 219
    :cond_57
    :goto_57
    return v1
.end method

.method public blacklist getAndClearSkipAnimationOnce()Z
    .registers 3

    .line 172
    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 174
    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 107
    iget v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    return v0
.end method

.method public blacklist getImeStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-object v0
.end method

.method public blacklist getInsetsHint()Landroid/graphics/Insets;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public blacklist getSurfacePosition()Landroid/graphics/Point;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 235
    iget v0, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v6, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 236
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 235
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isFake()Z
    .registers 3

    .line 157
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_10

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist isInitiallyVisible()Z
    .registers 2

    .line 127
    iget-boolean v0, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    return v0
.end method

.method public blacklist release(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl;",
            ">;)V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 209
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 211
    :cond_11
    return-void
.end method

.method public blacklist setImeStatsToken(Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 2

    .line 183
    iput-object p1, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 184
    return-void
.end method

.method public blacklist setInsetsHint(IIII)V
    .registers 5

    .line 148
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 149
    return-void
.end method

.method public blacklist setInsetsHint(Landroid/graphics/Insets;)V
    .registers 2

    .line 144
    iput-object p1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    .line 145
    return-void
.end method

.method public blacklist setParcelableFlags(I)V
    .registers 2

    .line 187
    iput p1, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    .line 188
    return-void
.end method

.method public blacklist setSkipAnimationOnce(Z)V
    .registers 2

    .line 161
    iput-boolean p1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    .line 162
    return-void
.end method

.method public blacklist setSurfacePosition(II)Z
    .registers 4

    .line 131
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 132
    const/4 p1, 0x0

    return p1

    .line 134
    :cond_a
    iget-object v0, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 135
    const/4 p1, 0x1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsSourceControl: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSourceControl;->mType:I

    .line 242
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 243
    iget-boolean v1, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    const-string v2, ""

    if-eqz v1, :cond_2e

    const-string v1, " initiallyVisible"

    goto :goto_2f

    :cond_2e
    move-object v1, v2

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSurfacePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsetsHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    iget-boolean v1, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    if-eqz v1, :cond_51

    const-string v2, " skipAnimationOnce"

    :cond_51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 197
    iget p2, p0, Landroid/view/InsetsSourceControl;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget p2, p0, Landroid/view/InsetsSourceControl;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object p2, p0, Landroid/view/InsetsSourceControl;->mLeash:Landroid/view/SurfaceControl;

    iget v0, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 200
    iget-boolean p2, p0, Landroid/view/InsetsSourceControl;->mInitiallyVisible:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 201
    iget-object p2, p0, Landroid/view/InsetsSourceControl;->mSurfacePosition:Landroid/graphics/Point;

    iget v0, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 202
    iget-object p2, p0, Landroid/view/InsetsSourceControl;->mInsetsHint:Landroid/graphics/Insets;

    iget v0, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 203
    iget-boolean p2, p0, Landroid/view/InsetsSourceControl;->mSkipAnimationOnce:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 204
    iget-object p2, p0, Landroid/view/InsetsSourceControl;->mImeStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    iget v0, p0, Landroid/view/InsetsSourceControl;->mParcelableFlags:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 205
    return-void
.end method
