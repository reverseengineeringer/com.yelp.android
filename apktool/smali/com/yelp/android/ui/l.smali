.class Lcom/yelp/android/ui/l;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field protected final a:Lcom/yelp/android/ui/ActivityMonocle;

.field private final b:Landroid/hardware/SensorManager;

.field private final c:Lcom/yelp/android/ui/MonocleEngine;

.field private final d:[F

.field private final e:[F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/SensorManager;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput-object p2, p0, Lcom/yelp/android/ui/l;->b:Landroid/hardware/SensorManager;

    .line 925
    iput-object p1, p0, Lcom/yelp/android/ui/l;->a:Lcom/yelp/android/ui/ActivityMonocle;

    .line 926
    new-instance v0, Lcom/yelp/android/ui/MonocleEngine;

    invoke-direct {v0}, Lcom/yelp/android/ui/MonocleEngine;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/l;->c:Lcom/yelp/android/ui/MonocleEngine;

    .line 928
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/yelp/android/ui/l;->d:[F

    .line 929
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/yelp/android/ui/l;->e:[F

    .line 930
    return-void
.end method

.method private a(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1031
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1033
    const-string/jumbo v0, "sprint/SPH-D700/SPH-D700/SPH-D700:2.2.1/FROYO/EC05:user/release-keys"

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    const/high16 v2, 0x41900000    # 18.0f

    add-float/2addr v1, v2

    aput v1, v0, v3

    .line 1038
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 936
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v2, "motorola"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 938
    if-eqz v0, :cond_0

    move v0, v1

    .line 941
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/l;->b:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/yelp/android/ui/l;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v2, p0, v1, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 942
    iget-object v1, p0, Lcom/yelp/android/ui/l;->b:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/yelp/android/ui/l;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 943
    return-void

    .line 938
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/yelp/android/ui/l;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 950
    return-void
.end method

.method public d()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x2

    .line 956
    const/16 v0, 0x10

    new-array v4, v0, [F

    .line 957
    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 958
    iget-object v2, p0, Lcom/yelp/android/ui/l;->d:[F

    iget-object v5, p0, Lcom/yelp/android/ui/l;->e:[F

    invoke-static {v4, v0, v2, v5}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    const-string/jumbo v0, "gr"

    const-string/jumbo v2, "fail"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_0
    const/16 v0, 0x81

    .line 966
    invoke-virtual {p0}, Lcom/yelp/android/ui/l;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    move v2, v3

    .line 973
    :goto_0
    invoke-static {v4, v2, v0, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 974
    new-array v0, v9, [F

    .line 975
    invoke-static {v4, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 976
    aget v2, v0, v1

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-float v2, v2

    iput v2, p0, Lcom/yelp/android/ui/l;->g:F

    .line 977
    aget v2, v0, v8

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-float v2, v2

    iput v2, p0, Lcom/yelp/android/ui/l;->f:F

    .line 978
    iget-object v2, p0, Lcom/yelp/android/ui/l;->c:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/MonocleEngine;->SetRotation([F)V

    .line 979
    iget-object v2, p0, Lcom/yelp/android/ui/l;->c:Lcom/yelp/android/ui/MonocleEngine;

    iget v5, p0, Lcom/yelp/android/ui/l;->f:F

    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/MonocleEngine;->SetAzimuth(F)V

    .line 983
    invoke-static {v4, v3, v9, v4}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    .line 985
    invoke-static {v4, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 986
    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 988
    const/16 v1, 0x2d

    if-ge v0, v1, :cond_1

    .line 989
    iget-object v0, p0, Lcom/yelp/android/ui/l;->a:Lcom/yelp/android/ui/ActivityMonocle;

    iget-object v0, v0, Lcom/yelp/android/ui/ActivityMonocle;->b:Lcom/yelp/android/ui/a;

    invoke-virtual {v0, v10}, Lcom/yelp/android/ui/a;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lcom/yelp/android/ui/l;->a:Lcom/yelp/android/ui/ActivityMonocle;

    iget-object v0, v0, Lcom/yelp/android/ui/ActivityMonocle;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 996
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/l;->c:Lcom/yelp/android/ui/MonocleEngine;

    iget v1, p0, Lcom/yelp/android/ui/l;->g:F

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/MonocleEngine;->SetRoll(F)V

    .line 997
    return-void

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/l;->a:Lcom/yelp/android/ui/ActivityMonocle;

    iget-object v0, v0, Lcom/yelp/android/ui/ActivityMonocle;->b:Lcom/yelp/android/ui/a;

    invoke-virtual {v0, v8}, Lcom/yelp/android/ui/a;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/yelp/android/ui/l;->a:Lcom/yelp/android/ui/ActivityMonocle;

    iget-object v0, v0, Lcom/yelp/android/ui/ActivityMonocle;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 1045
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    const v5, 0x3f4ccccd    # 0.8f

    const v4, 0x3e4ccccd    # 0.2f

    .line 1012
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/l;->a(Landroid/hardware/SensorEvent;)V

    .line 1014
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1015
    :goto_0
    if-ge v0, v6, :cond_1

    .line 1016
    iget-object v1, p0, Lcom/yelp/android/ui/l;->d:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/yelp/android/ui/l;->d:[F

    aget v3, v3, v0

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 1015
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1018
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1019
    :goto_1
    if-ge v0, v6, :cond_1

    .line 1020
    iget-object v1, p0, Lcom/yelp/android/ui/l;->e:[F

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/yelp/android/ui/l;->e:[F

    aget v3, v3, v0

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 1019
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1024
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/l;->d()V

    .line 1025
    return-void
.end method
