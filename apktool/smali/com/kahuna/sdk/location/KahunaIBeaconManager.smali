.class public Lcom/kahuna/sdk/location/KahunaIBeaconManager;
.super Ljava/lang/Object;
.source "KahunaIBeaconManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/location/KahunaIBeaconManager$a;,
        Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static c:Landroid/bluetooth/BluetoothAdapter;

.field private static d:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

.field private static e:Lcom/kahuna/sdk/location/KahunaIBeaconManager$a;

.field private static final k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;


# instance fields
.field private b:Lcom/kahuna/sdk/l;

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/Object;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/g;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a:[B

    .line 68
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->NOT_SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    sput-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    .line 77
    new-instance v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    invoke-direct {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    return-void

    .line 53
    nop

    :array_0
    .array-data 1
        0x2t
        0x1t
        0x6t
        0x1at
        -0x1t
        0x4ct
        0x0t
        0x2t
        0x15t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->f:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->g:Ljava/util/Set;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->h:Z

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->i:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->j:Ljava/util/Set;

    .line 382
    new-instance v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;

    invoke-direct {v0, p0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager$1;-><init>(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)V

    iput-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->l:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 81
    return-void
.end method

.method private a(ID)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 458
    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    .line 459
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 468
    :goto_0
    return-wide v0

    .line 462
    :cond_0
    mul-double v0, p2, v4

    int-to-double v2, p1

    div-double/2addr v0, v2

    .line 463
    cmpg-double v2, v0, v4

    if-gez v2, :cond_1

    .line 464
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 467
    :cond_1
    const-wide v2, 0x3feccad57bc7f77bL    # 0.89976

    const-wide v4, 0x401ed6872b020c4aL    # 7.7095

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    const-wide v2, 0x3fbc6a7ef9db22d1L    # 0.111

    add-double/2addr v0, v2

    .line 468
    goto :goto_0
.end method

.method static synthetic a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;ID)D
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;)Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    return-object p0
.end method

.method static synthetic a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;[B)Lcom/kahuna/sdk/location/g;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->b([B)Lcom/kahuna/sdk/location/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lcom/kahuna/sdk/location/KahunaIBeaconManager;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->f:Ljava/util/Set;

    return-object p1
.end method

.method private static a(Ljava/util/Set;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/g;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 530
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 544
    :goto_0
    return-object v0

    .line 534
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 535
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/g;

    .line 536
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/g;->g()Lorg/json/JSONObject;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_2

    .line 541
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 544
    goto :goto_0
.end method

.method public static a(Lcom/kahuna/sdk/l;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 16

    .prologue
    .line 234
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/kahuna/sdk/l;

    if-nez v2, :cond_2

    .line 235
    :cond_0
    const-string/jumbo v2, "Kahuna"

    const-string/jumbo v3, "You cannot request to process iBeacons externally from the Kahuna SDK. Aborting!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    :try_start_0
    const-string/jumbo v2, "beacon"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 241
    if-eqz v11, :cond_1

    .line 242
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-boolean v2, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->h:Z

    if-nez v2, :cond_3

    .line 243
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    const-string/jumbo v2, "Kahuna"

    const-string/jumbo v3, "App doens\'t have required permissions for iBeacon Monitoring. Aborting processing of server response"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v2

    .line 303
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    const-string/jumbo v3, "Kahuna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Caught exception in iBeacon Manager process server iBeacons: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_3
    :try_start_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 250
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v14, v2, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    const/4 v2, 0x0

    move v10, v2

    :goto_1
    if-ge v10, v13, :cond_6

    .line 255
    :try_start_2
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 256
    if-eqz v2, :cond_4

    .line 257
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    const-string/jumbo v3, "uuid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 259
    const-string/jumbo v3, "major"

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 260
    const-string/jumbo v3, "minor"

    const/4 v7, -0x1

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 261
    const-string/jumbo v3, "expiry"

    const-wide/16 v8, -0x1

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 263
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-lez v2, :cond_5

    cmp-long v2, v8, v14

    if-gez v2, :cond_5

    .line 264
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    const-string/jumbo v2, "Kahuna"

    const-string/jumbo v3, "Received iBeacon monitor request that already expired, ignoring..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_4
    :goto_2
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    .line 270
    :cond_5
    new-instance v3, Lcom/kahuna/sdk/location/g;

    invoke-direct/range {v3 .. v9}, Lcom/kahuna/sdk/location/g;-><init>(Ljava/lang/String;Ljava/lang/String;IIJ)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 273
    :catch_1
    move-exception v2

    .line 274
    :try_start_3
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 275
    const-string/jumbo v3, "Kahuna"

    const-string/jumbo v4, "Encountered error processing geofence regions from Kahuna servers."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 282
    :cond_6
    const-string/jumbo v2, "am_interval"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 283
    invoke-static {v2}, Lcom/kahuna/sdk/location/c;->a(I)V

    .line 284
    invoke-static {}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 285
    invoke-static {}, Lcom/kahuna/sdk/location/c;->c()V

    .line 288
    :cond_7
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v3, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->i:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 289
    :try_start_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 290
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v2, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->j:Ljava/util/Set;

    invoke-interface {v2, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 291
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/location/c;->a(Lcom/kahuna/sdk/l;)V

    .line 297
    :goto_3
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v2, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->j:Ljava/util/Set;

    invoke-static {v2}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a(Ljava/util/Set;)Lorg/json/JSONArray;

    move-result-object v2

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/s;->a(Lcom/kahuna/sdk/l;Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 299
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 294
    :cond_8
    :try_start_6
    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v2, v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->j:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 295
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/location/c;->b(Lcom/kahuna/sdk/l;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method protected static a()Z
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/kahuna/sdk/l;)Z
    .locals 2

    .prologue
    .line 114
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/l;

    if-nez v0, :cond_1

    .line 115
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->h:Z

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/Set;Lcom/kahuna/sdk/location/g;)Z
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->b(Ljava/util/Set;Lcom/kahuna/sdk/location/g;)Z

    move-result v0

    return v0
.end method

.method private a([B)Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 420
    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a:[B

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a:[B

    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a:[B

    array-length v2, v2

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    sget-object v2, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a:[B

    array-length v2, v2

    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const/4 v0, 0x1

    .line 425
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->l:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method private b([B)Lcom/kahuna/sdk/location/g;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const v5, 0xff00

    .line 435
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a:[B

    array-length v0, v0

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 438
    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->a:[B

    array-length v1, v1

    add-int/lit8 v8, v1, 0x10

    .line 439
    aget-byte v1, p1, v8

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v5

    add-int/lit8 v3, v8, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v4, v1, v3

    .line 440
    add-int/lit8 v1, v8, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v1, v5

    add-int/lit8 v3, v8, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v5, v1, v3

    .line 441
    new-instance v1, Lcom/kahuna/sdk/location/g;

    invoke-static {v0}, Lcom/kahuna/sdk/location/g;->a([B)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/kahuna/sdk/location/g;-><init>(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 443
    add-int/lit8 v0, v8, 0x4

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    shr-int/lit8 v0, v0, 0x18

    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/location/g;->a(I)V

    .line 446
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public static b(Lcom/kahuna/sdk/l;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kahuna/sdk/l;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/kahuna/sdk/l;

    if-nez v0, :cond_1

    .line 187
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "You cannot use IBeacon Manager externally from the Kahuna SDK. Aborting!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 205
    :goto_0
    return-object v0

    .line 191
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 193
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v2, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->i:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v0, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/g;

    .line 195
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Caught exception when getting currently monitored beacons: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    move-object v0, v1

    .line 205
    goto :goto_0

    .line 197
    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->h:Z

    if-nez v0, :cond_1

    .line 128
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "App doens\'t have required permissions for iBeacon Monitoring. Aborting request for scan"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v1, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v0, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 136
    monitor-exit v1

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->NOT_SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    if-ne v0, v1, :cond_3

    .line 141
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->e:Lcom/kahuna/sdk/location/KahunaIBeaconManager$a;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 144
    :cond_3
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->e:Lcom/kahuna/sdk/location/KahunaIBeaconManager$a;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->e:Lcom/kahuna/sdk/location/KahunaIBeaconManager$a;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->e:Lcom/kahuna/sdk/location/KahunaIBeaconManager$a;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static b(Ljava/util/Set;Lcom/kahuna/sdk/location/g;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/kahuna/sdk/location/g;",
            ">;",
            "Lcom/kahuna/sdk/location/g;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 513
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 526
    :goto_0
    return v0

    .line 517
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/g;

    .line 518
    invoke-virtual {v0, p1}, Lcom/kahuna/sdk/location/g;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 519
    invoke-virtual {p1}, Lcom/kahuna/sdk/location/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    invoke-virtual {v0}, Lcom/kahuna/sdk/location/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kahuna/sdk/location/g;->a(Ljava/lang/String;)V

    .line 522
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 526
    goto :goto_0
.end method

.method static synthetic c(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public static c()V
    .locals 6

    .prologue
    .line 154
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->e:Lcom/kahuna/sdk/location/KahunaIBeaconManager$a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    sget-object v1, Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;->SCANNING:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    if-ne v0, v1, :cond_0

    .line 155
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->e:Lcom/kahuna/sdk/location/KahunaIBeaconManager$a;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager$a;->a()V

    .line 159
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v1, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v0, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/location/g;

    .line 161
    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v3, v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->j:Ljava/util/Set;

    invoke-static {v3, v0}, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->b(Ljava/util/Set;Lcom/kahuna/sdk/location/g;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    const-string/jumbo v3, "Kahuna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tracking iBeacon exit for UUID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    sget-object v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v3, v3, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->b:Lcom/kahuna/sdk/l;

    const-string/jumbo v4, "exit"

    invoke-virtual {v3, v0, v4}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/location/g;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    :catch_0
    move-exception v0

    .line 175
    :goto_1
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-object v0, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 177
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    iget-boolean v0, v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->h:Z

    if-nez v0, :cond_3

    .line 178
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "App doens\'t have required permissions for iBeacon Monitoring. Aborting request for scan"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3
    return-void

    .line 169
    :cond_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method static synthetic d()Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->d:Lcom/kahuna/sdk/location/KahunaIBeaconManager$ScanState;

    return-object v0
.end method

.method static synthetic d(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->f:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->c:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->j:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f(Lcom/kahuna/sdk/location/KahunaIBeaconManager;)Lcom/kahuna/sdk/l;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->b:Lcom/kahuna/sdk/l;

    return-object v0
.end method

.method static synthetic f()Lcom/kahuna/sdk/location/KahunaIBeaconManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kahuna/sdk/location/KahunaIBeaconManager;->k:Lcom/kahuna/sdk/location/KahunaIBeaconManager;

    return-object v0
.end method
