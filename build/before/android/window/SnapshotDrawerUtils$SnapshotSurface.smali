.class public Landroid/window/SnapshotDrawerUtils$SnapshotSurface;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SnapshotDrawerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotSurface"
.end annotation


# instance fields
.field private final blacklist mContainerH:I

.field private final blacklist mContainerW:I

.field private final blacklist mRootSurface:Landroid/view/SurfaceControl;

.field private final blacklist mSnapshot:Landroid/window/TaskSnapshot;

.field private final blacklist mSnapshotH:I

.field private final blacklist mSnapshotW:I

.field private final blacklist mTitle:Ljava/lang/CharSequence;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdrawSnapshot(Landroid/window/SnapshotDrawerUtils$SnapshotSurface;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSnapshot(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Ljava/lang/CharSequence;)V
    .registers 6

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 118
    iput-object p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    .line 119
    iput-object p2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 120
    iput-object p4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    .line 121
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reduceTaskSnapshotMemoryUsage()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 122
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBufferHeight()I

    move-result p1

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    .line 123
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBufferWidth()I

    move-result p1

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    goto :goto_33

    .line 125
    :cond_23
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p2

    iput p2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    .line 127
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    .line 129
    :goto_33
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    .line 130
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    .line 131
    return-void
.end method

.method private blacklist drawSizeMatchSnapshot()V
    .registers 4

    .line 161
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reduceTaskSnapshotMemoryUsage()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 162
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskSnapshot;->setBufferToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_1d

    .line 164
    :cond_10
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 166
    :goto_1d
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 167
    return-void
.end method

.method private blacklist drawSizeMismatchSnapshot()V
    .registers 6

    .line 171
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - task-snapshot-surface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 175
    const-string v1, "TaskSnapshotWindow.drawSizeMismatchSnapshot"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 176
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reduceTaskSnapshotMemoryUsage()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 177
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBufferFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    goto :goto_4b

    .line 179
    :cond_3e
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 182
    :goto_4b
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 184
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 185
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    .line 186
    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 189
    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 192
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_69

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_8c

    .line 193
    :cond_69
    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    neg-float v2, v2

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 194
    invoke-virtual {v4}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    neg-float v1, v1

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    iget-object v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 195
    invoke-virtual {v4}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 193
    invoke-virtual {v3, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 198
    :cond_8c
    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    int-to-float v1, v1

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 199
    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    int-to-float v2, v2

    iget v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 200
    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 201
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 202
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reduceTaskSnapshotMemoryUsage()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 203
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v2, v0}, Landroid/window/TaskSnapshot;->setBufferToSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_c3

    .line 205
    :cond_b8
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 207
    :goto_c3
    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 208
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 209
    return-void
.end method

.method private blacklist drawSnapshot(Z)V
    .registers 5

    .line 134
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 135
    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    if-ne v1, v2, :cond_1d

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    if-ne v1, v2, :cond_1d

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_1d

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 137
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drawing snapshot surface sizeMismatch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapshotDrawerUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz v0, :cond_3c

    .line 142
    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSizeMismatchSnapshot()V

    goto :goto_3f

    .line 144
    :cond_3c
    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSizeMatchSnapshot()V

    .line 148
    :goto_3f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->reduceTaskSnapshotMemoryUsage()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 149
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->closeBuffer()V

    goto :goto_5c

    .line 151
    :cond_4b
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 152
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 155
    :cond_5c
    :goto_5c
    if-eqz p1, :cond_63

    .line 156
    iget-object p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 158
    :cond_63
    return-void
.end method
