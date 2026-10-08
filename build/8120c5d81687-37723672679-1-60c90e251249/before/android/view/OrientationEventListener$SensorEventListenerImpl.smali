.class Landroid/view/OrientationEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "OrientationEventListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final greylist-max-o _DATA_X:I = 0x0

.field private static final greylist-max-o _DATA_Y:I = 0x1

.field private static final greylist-max-o _DATA_Z:I = 0x2


# instance fields
.field final synthetic blacklist this$0:Landroid/view/OrientationEventListener;


# direct methods
.method constructor blacklist <init>(Landroid/view/OrientationEventListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 157
    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8

    .line 127
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 128
    nop

    .line 129
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-float v1, v1

    .line 130
    const/4 v2, 0x1

    aget v3, v0, v2

    neg-float v3, v3

    .line 131
    const/4 v4, 0x2

    aget v0, v0, v4

    neg-float v0, v0

    .line 132
    mul-float v4, v1, v1

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    .line 134
    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    mul-float/2addr v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_3b

    .line 135
    nop

    .line 136
    neg-float v0, v3

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    .line 137
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5a

    .line 139
    :goto_2f
    const/16 v1, 0x168

    if-lt v0, v1, :cond_36

    .line 140
    add-int/lit16 v0, v0, -0x168

    goto :goto_2f

    .line 142
    :cond_36
    :goto_36
    if-gez v0, :cond_3c

    .line 143
    add-int/lit16 v0, v0, 0x168

    goto :goto_36

    .line 134
    :cond_3b
    const/4 v0, -0x1

    .line 146
    :cond_3c
    iget-object v1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v1}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmOldListener(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 147
    iget-object v1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {v1}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmOldListener(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    move-result-object v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1, v2, p1}, Landroid/view/OrientationListener;->onSensorChanged(I[F)V

    .line 149
    :cond_4f
    iget-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {p1}, Landroid/view/OrientationEventListener;->-$$Nest$fgetmOrientation(Landroid/view/OrientationEventListener;)I

    move-result p1

    if-eq v0, p1, :cond_61

    .line 150
    iget-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-static {p1, v0}, Landroid/view/OrientationEventListener;->-$$Nest$fputmOrientation(Landroid/view/OrientationEventListener;I)V

    .line 151
    iget-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-virtual {p1, v0}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    .line 153
    :cond_61
    return-void
.end method
