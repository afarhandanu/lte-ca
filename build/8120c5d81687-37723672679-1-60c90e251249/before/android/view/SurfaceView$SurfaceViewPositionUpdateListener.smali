.class Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/graphics/RenderNode$PositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceViewPositionUpdateListener"
.end annotation


# instance fields
.field private final blacklist mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final blacklist mRtSurfaceHeight:I

.field private final blacklist mRtSurfaceWidth:I

.field final synthetic blacklist this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor blacklist <init>(Landroid/view/SurfaceView;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1769
    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1766
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1770
    iput p2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    .line 1771
    iput p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    .line 1772
    return-void
.end method


# virtual methods
.method public blacklist applyStretch(JFFFFFFFFFF)V
    .registers 26

    .line 1872
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v1 .. v12}, Landroid/view/SurfaceControl$Transaction;->setStretchEffect(Landroid/view/SurfaceControl;FFFFFFFFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1875
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V

    .line 1876
    return-void
.end method

.method public blacklist positionChanged(JIIII)V
    .registers 16

    .line 1784
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_67

    .line 1785
    :try_start_5
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d

    monitor-exit v1

    return-void

    .line 1787
    :cond_d
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1788
    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v4, p3, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {p3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object p3

    iget v5, p3, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {p3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object p3

    iget v6, p3, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {p3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object p3

    .line 1791
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    int-to-float p4, p4

    div-float v7, p3, p4

    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {p3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object p3

    .line 1793
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    int-to-float p4, p4

    div-float v8, p3, p4

    .line 1788
    invoke-virtual/range {v2 .. v8}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1796
    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object p4, p4, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1797
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_63

    .line 1798
    :try_start_5b
    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p3, p4, p1, p2}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_62} :catch_67

    .line 1801
    goto :goto_70

    .line 1797
    :catchall_63
    move-exception v0

    move-object p1, v0

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_63

    :try_start_66
    throw p1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_67} :catch_67

    .line 1799
    :catch_67
    move-exception v0

    move-object p1, v0

    .line 1800
    const-string p2, "SurfaceView"

    const-string p3, "Exception from repositionChild"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1802
    :goto_70
    return-void
.end method

.method public blacklist positionChanged(JIIIIIIIIII)V
    .registers 22

    .line 1819
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d5

    .line 1820
    :try_start_5
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_d

    monitor-exit v1

    return-void

    .line 1822
    :cond_d
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1823
    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {p3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    int-to-float p4, p4

    div-float v7, p3, p4

    .line 1825
    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {p3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    int-to-float p4, p4

    div-float v8, p3, p4

    .line 1827
    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v4, p3, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {p3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object p3

    iget v5, p3, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {p3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object p3

    iget v6, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v2 .. v8}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScale(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    .line 1840
    iget p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceWidth:I

    int-to-float p3, p3

    move/from16 p4, p11

    int-to-float p4, p4

    div-float/2addr p3, p4

    .line 1841
    iget p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mRtSurfaceHeight:I

    int-to-float p4, p4

    move/from16 v0, p12

    int-to-float v0, v0

    div-float/2addr p4, v0

    .line 1842
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v0

    move/from16 v2, p7

    int-to-float v2, v2

    mul-float/2addr v2, p3

    move/from16 v3, p8

    int-to-float v3, v3

    mul-float/2addr v3, p4

    move/from16 v4, p9

    int-to-float v4, v4

    mul-float/2addr v4, p3

    move/from16 p3, p10

    int-to-float p3, p3

    mul-float/2addr p3, p4

    invoke-virtual {v0, v2, v3, v4, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1853
    iget-object p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object p3, p3, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v2}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v4}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    move-object p5, p3

    move p6, v0

    move/from16 p7, v2

    move/from16 p8, v3

    move/from16 p9, v4

    invoke-virtual/range {p4 .. p9}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1855
    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {p3}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastSetCrop(Landroid/view/SurfaceView;)Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_bf

    .line 1856
    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object p4, p4, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_c8

    .line 1858
    :cond_bf
    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object p4, p4, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1860
    :goto_c8
    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_5 .. :try_end_c9} :catchall_d1

    .line 1861
    :try_start_c9
    iget-object p3, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object p4, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->mPositionChangedTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p3, p4, p1, p2}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_d0} :catch_d5

    .line 1864
    goto :goto_de

    .line 1860
    :catchall_d1
    move-exception v0

    move-object p1, v0

    :try_start_d3
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d1

    :try_start_d4
    throw p1
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d5} :catch_d5

    .line 1862
    :catch_d5
    move-exception v0

    move-object p1, v0

    .line 1863
    const-string p2, "SurfaceView"

    const-string p3, "Exception from repositionChild"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1865
    :goto_de
    return-void
.end method

.method public blacklist positionLost(J)V
    .registers 6

    .line 1884
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetmRTLastReportedPosition(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1887
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1888
    :try_start_e
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_16

    monitor-exit v0

    return-void

    .line 1890
    :cond_16
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1891
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceViewPositionUpdateListener;->this$0:Landroid/view/SurfaceView;

    invoke-static {v2}, Landroid/view/SurfaceView;->-$$Nest$fgetmRtTransaction(Landroid/view/SurfaceView;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-static {v1, v2, p1, p2}, Landroid/view/SurfaceView;->-$$Nest$mapplyOrMergeTransaction(Landroid/view/SurfaceView;Landroid/view/SurfaceControl$Transaction;J)V

    .line 1892
    monitor-exit v0

    .line 1893
    return-void

    .line 1892
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_30

    throw p1
.end method
