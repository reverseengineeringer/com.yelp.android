.class public Lcom/yelp/android/util/i;
.super Ljava/lang/Object;
.source "MeasureUtils.java"


# direct methods
.method public static a(D)D
    .locals 4

    .prologue
    .line 83
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p0

    const-wide v2, 0x3fe3e245d6ab1d52L    # 0.62137119224

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(DDDD)D
    .locals 10

    .prologue
    .line 40
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 49
    :goto_0
    return-wide v0

    .line 47
    :cond_1
    const/4 v0, 0x1

    new-array v8, v0, [F

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    .line 48
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 49
    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 8

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    .line 63
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 64
    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    .line 65
    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 68
    invoke-static/range {v0 .. v7}, Lcom/yelp/android/util/i;->a(DDDD)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    .line 69
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 70
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    .line 72
    :cond_0
    return-wide v0
.end method

.method public static final a(Landroid/location/Location;)Z
    .locals 2

    .prologue
    .line 24
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43710000    # 241.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(D)D
    .locals 2

    .prologue
    .line 87
    const-wide v0, 0x3fe3e245d6ab1d52L    # 0.62137119224

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static c(D)D
    .locals 2

    .prologue
    .line 91
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method public static d(D)D
    .locals 4

    .prologue
    .line 95
    const-wide v0, 0x3fe3e245d6ab1d52L    # 0.62137119224

    mul-double/2addr v0, p0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static e(D)D
    .locals 2

    .prologue
    .line 99
    const-wide v0, 0x3fe3e245d6ab1d52L    # 0.62137119224

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static f(D)D
    .locals 2

    .prologue
    .line 103
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p0, v0

    return-wide v0
.end method
