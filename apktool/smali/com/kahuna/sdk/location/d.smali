.class public Lcom/kahuna/sdk/location/d;
.super Ljava/lang/Object;
.source "KahunaGeofence.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:D

.field private final c:D

.field private final d:F

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DDFJI)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create Geofence with null or empty regionId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_1

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create Geofence with latitude outside of -90 to 90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p4, v0

    if-lez v0, :cond_4

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create Geofence with longitude outside of -180 to 180"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p6, v0

    if-gez v0, :cond_5

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot create Geofence with radius less than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KahunaEngineRegion_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/location/d;->a:Ljava/lang/String;

    .line 86
    iput-wide p2, p0, Lcom/kahuna/sdk/location/d;->b:D

    .line 87
    iput-wide p4, p0, Lcom/kahuna/sdk/location/d;->c:D

    .line 90
    iput p6, p0, Lcom/kahuna/sdk/location/d;->d:F

    .line 93
    const-wide/16 v0, 0x1

    cmp-long v0, p7, v0

    if-gez v0, :cond_6

    .line 94
    const-wide v0, 0x9a7ec800L

    iput-wide v0, p0, Lcom/kahuna/sdk/location/d;->e:J

    .line 101
    :goto_0
    iput p9, p0, Lcom/kahuna/sdk/location/d;->f:I

    .line 102
    return-void

    .line 97
    :cond_6
    iput-wide p7, p0, Lcom/kahuna/sdk/location/d;->e:J

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/location/d;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 190
    if-nez p0, :cond_0

    move-object v0, v10

    .line 207
    :goto_0
    return-object v0

    .line 195
    :cond_0
    :try_start_0
    const-string/jumbo v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string/jumbo v1, "KahunaEngineRegion_"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 197
    const-string/jumbo v0, "lat"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 198
    const-string/jumbo v0, "long"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 199
    const-string/jumbo v0, "radius"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    .line 200
    const-string/jumbo v0, "expiration"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 201
    const-string/jumbo v0, "transition"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 203
    new-instance v0, Lcom/kahuna/sdk/location/d;

    invoke-direct/range {v0 .. v9}, Lcom/kahuna/sdk/location/d;-><init>(Ljava/lang/String;DDFJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    move-object v0, v10

    .line 207
    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kahuna/sdk/location/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected b()D
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/kahuna/sdk/location/d;->b:D

    return-wide v0
.end method

.method protected c()D
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/kahuna/sdk/location/d;->c:D

    return-wide v0
.end method

.method protected d()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/kahuna/sdk/location/d;->d:F

    return v0
.end method

.method protected e()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/kahuna/sdk/location/d;->e:J

    return-wide v0
.end method

.method protected f()Lcom/google/android/gms/location/f;
    .locals 7

    .prologue
    .line 161
    new-instance v0, Lcom/google/android/gms/location/f$a;

    invoke-direct {v0}, Lcom/google/android/gms/location/f$a;-><init>()V

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/f$a;->a(Ljava/lang/String;)Lcom/google/android/gms/location/f$a;

    move-result-object v0

    iget v1, p0, Lcom/kahuna/sdk/location/d;->f:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/f$a;->a(I)Lcom/google/android/gms/location/f$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/d;->b()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/d;->c()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/d;->d()F

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/location/f$a;->a(DDF)Lcom/google/android/gms/location/f$a;

    move-result-object v0

    iget-wide v2, p0, Lcom/kahuna/sdk/location/d;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/f$a;->a(J)Lcom/google/android/gms/location/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/f$a;->a()Lcom/google/android/gms/location/f;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 173
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 175
    :try_start_0
    const-string/jumbo v1, "id"

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo v1, "lat"

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/d;->b()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 177
    const-string/jumbo v1, "long"

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/d;->c()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 178
    const-string/jumbo v1, "radius"

    invoke-virtual {p0}, Lcom/kahuna/sdk/location/d;->d()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 179
    const-string/jumbo v1, "expiration"

    iget-wide v2, p0, Lcom/kahuna/sdk/location/d;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 180
    const-string/jumbo v1, "transition"

    iget v2, p0, Lcom/kahuna/sdk/location/d;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v1

    goto :goto_0
.end method
