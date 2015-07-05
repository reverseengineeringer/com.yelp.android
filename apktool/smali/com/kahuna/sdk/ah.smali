.class public Lcom/kahuna/sdk/ah;
.super Ljava/lang/Object;
.source "KahunaSDKConfiguration.java"


# static fields
.field protected static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:J

.field private e:D

.field private f:J

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:D

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lorg/json/JSONObject;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "k_app_bg"

    aput-object v2, v1, v3

    const-string/jumbo v2, "k_user_logout"

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/kahuna/sdk/ah;->b:Ljava/util/HashSet;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/ah;->c:Ljava/util/HashSet;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "Start"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/kahuna/sdk/ah;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kahuna/sdk/ah;->d:J

    .line 121
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/kahuna/sdk/ah;->e:D

    .line 122
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/kahuna/sdk/ah;->f:J

    .line 123
    sget-object v0, Lcom/kahuna/sdk/ah;->b:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/kahuna/sdk/ah;->g:Ljava/util/Set;

    .line 124
    const/4 v0, 0x5

    iput v0, p0, Lcom/kahuna/sdk/ah;->h:I

    .line 125
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/kahuna/sdk/ah;->i:D

    .line 126
    sget-object v0, Lcom/kahuna/sdk/ah;->c:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/kahuna/sdk/ah;->j:Ljava/util/Set;

    .line 127
    iput-object v2, p0, Lcom/kahuna/sdk/ah;->k:Ljava/util/Map;

    .line 128
    iput-object v2, p0, Lcom/kahuna/sdk/ah;->l:Ljava/util/Set;

    .line 129
    iput-object v2, p0, Lcom/kahuna/sdk/ah;->m:Ljava/util/Set;

    .line 130
    iput-object v2, p0, Lcom/kahuna/sdk/ah;->n:Lorg/json/JSONObject;

    .line 131
    const/16 v0, 0x64

    iput v0, p0, Lcom/kahuna/sdk/ah;->o:I

    .line 132
    return-void
.end method

.method protected static a(Landroid/content/Context;)Lcom/kahuna/sdk/ah;
    .locals 15

    .prologue
    const/4 v1, 0x0

    .line 509
    .line 511
    if-eqz p0, :cond_4

    .line 512
    :try_start_0
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->i(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    .line 514
    const-string/jumbo v0, "version"

    const-wide/16 v2, 0x0

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 515
    const-string/jumbo v0, "flush_interval_min"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 517
    const-string/jumbo v0, "flush_on_event_count"

    const-wide/16 v2, 0x64

    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 519
    const-string/jumbo v0, "trigger_events"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_1

    .line 522
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v0

    move-object v3, v0

    .line 526
    :goto_0
    const-string/jumbo v0, "retry_attempts"

    const/4 v2, 0x5

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 529
    const-string/jumbo v0, "flush_soon_delay_min"

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v4, v0, v12, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 532
    const-string/jumbo v0, "flush_soon_events"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_2

    .line 535
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x1

    invoke-static {v0, v2, v14}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v0

    move-object v2, v0

    .line 540
    :goto_1
    new-instance v0, Lcom/kahuna/sdk/ah;

    invoke-direct {v0}, Lcom/kahuna/sdk/ah;-><init>()V

    .line 541
    invoke-virtual {v0, v6, v7}, Lcom/kahuna/sdk/ah;->a(J)V

    .line 542
    invoke-direct {v0, v8, v9}, Lcom/kahuna/sdk/ah;->b(D)V

    .line 543
    invoke-direct {v0, v10, v11}, Lcom/kahuna/sdk/ah;->b(J)V

    .line 544
    invoke-direct {v0, v3}, Lcom/kahuna/sdk/ah;->a(Ljava/util/Set;)V

    .line 545
    invoke-direct {v0, v5}, Lcom/kahuna/sdk/ah;->b(I)V

    .line 546
    invoke-virtual {v0, v12, v13}, Lcom/kahuna/sdk/ah;->a(D)V

    .line 547
    invoke-direct {v0, v2}, Lcom/kahuna/sdk/ah;->b(Ljava/util/Set;)V

    .line 550
    const-string/jumbo v2, "event_remapping"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 551
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kahuna/sdk/ah;->a(Ljava/util/Map;)V

    .line 553
    const-string/jumbo v2, "events_to_include"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 554
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kahuna/sdk/ah;->d(Ljava/util/Set;)V

    .line 556
    const-string/jumbo v2, "events_to_exclude"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 557
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/kahuna/sdk/ah;->c(Ljava/util/Set;)V

    .line 559
    const-string/jumbo v2, "event_bucket_config"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/ah;->b(Lorg/json/JSONObject;)V

    .line 560
    const-string/jumbo v2, "event_batch_size"

    const/16 v3, 0x64

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/ah;->a(I)V

    .line 562
    invoke-static {}, Lcom/kahuna/sdk/aj;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :goto_2
    if-nez v0, :cond_0

    .line 574
    new-instance v0, Lcom/kahuna/sdk/ah;

    invoke-direct {v0}, Lcom/kahuna/sdk/ah;-><init>()V

    .line 577
    :cond_0
    return-object v0

    .line 524
    :cond_1
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/ah;->b:Ljava/util/HashSet;

    move-object v3, v0

    goto/16 :goto_0

    .line 537
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/ah;->c:Ljava/util/HashSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v0

    goto :goto_1

    .line 565
    :catch_0
    move-exception v0

    .line 566
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_3

    .line 567
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception getting SDK configurations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    .line 570
    invoke-static {}, Lcom/kahuna/sdk/aj;->a()V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method protected static a(Lorg/json/JSONObject;)Lcom/kahuna/sdk/ah;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    new-instance v0, Lcom/kahuna/sdk/ah;

    invoke-direct {v0}, Lcom/kahuna/sdk/ah;-><init>()V

    .line 137
    if-eqz p0, :cond_2

    .line 138
    const-string/jumbo v1, "v"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kahuna/sdk/ah;->a(J)V

    .line 139
    const-string/jumbo v1, "t"

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/kahuna/sdk/ah;->b(D)V

    .line 140
    const-string/jumbo v1, "n"

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/kahuna/sdk/ah;->b(J)V

    .line 141
    const-string/jumbo v1, "ro"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/ah;->b(I)V

    .line 142
    const-string/jumbo v1, "fsd"

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kahuna/sdk/ah;->a(D)V

    .line 145
    const-string/jumbo v1, "fi"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    const-string/jumbo v1, "fi"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/kahuna/sdk/ah;->b:Ljava/util/HashSet;

    invoke-static {v1, v2, v5}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/ah;->a(Ljava/util/Set;)V

    .line 148
    :cond_0
    const-string/jumbo v1, "fs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const-string/jumbo v1, "fs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/kahuna/sdk/ah;->c:Ljava/util/HashSet;

    invoke-static {v1, v2, v5}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/ah;->b(Ljava/util/Set;)V

    .line 153
    :cond_1
    const-string/jumbo v1, "mapev"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/ah;->a(Ljava/util/Map;)V

    .line 156
    const-string/jumbo v1, "incev"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    const-string/jumbo v1, "incev"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v6, v4}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/ah;->d(Ljava/util/Set;)V

    .line 163
    :goto_0
    const-string/jumbo v1, "bckev"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/ah;->b(Lorg/json/JSONObject;)V

    .line 164
    const-string/jumbo v1, "bs"

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/ah;->a(I)V

    .line 167
    :cond_2
    invoke-static {}, Lcom/kahuna/sdk/aj;->a()V

    .line 168
    return-object v0

    .line 160
    :cond_3
    const-string/jumbo v1, "excev"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v6, v4}, Lcom/kahuna/sdk/ah;->a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/ah;->c(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 581
    if-eqz p0, :cond_0

    .line 582
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 583
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 584
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 586
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 592
    :cond_0
    return-object p1
.end method

.method private static a(Lorg/json/JSONArray;Ljava/util/Set;Z)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    if-eqz p0, :cond_2

    .line 598
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 599
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 600
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 601
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 603
    if-eqz p2, :cond_0

    .line 604
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 612
    :cond_2
    return-object p1
.end method

.method protected static a(Landroid/content/Context;Lcom/kahuna/sdk/ah;)V
    .locals 6

    .prologue
    .line 443
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 449
    const-string/jumbo v0, "version"

    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->a()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 450
    const-string/jumbo v0, "flush_interval_min"

    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->b()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 451
    const-string/jumbo v0, "flush_on_event_count"

    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->d()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 453
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 454
    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 504
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception serializing SDK config to save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_2
    :try_start_1
    const-string/jumbo v0, "trigger_events"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    const-string/jumbo v0, "retry_attempts"

    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->f()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 459
    const-string/jumbo v0, "flush_soon_delay_min"

    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->g()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 460
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 461
    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->i()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 464
    :cond_3
    const-string/jumbo v0, "flush_soon_events"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 467
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 468
    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->j()Ljava/util/Map;

    move-result-object v3

    .line 469
    if-eqz v3, :cond_4

    .line 470
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 471
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 475
    :cond_4
    const-string/jumbo v0, "event_remapping"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 477
    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->l()Ljava/util/Set;

    move-result-object v0

    .line 478
    if-eqz v0, :cond_6

    .line 479
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 480
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 482
    :cond_5
    const-string/jumbo v0, "events_to_include"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    :cond_6
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 485
    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->k()Ljava/util/Set;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_8

    .line 487
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 490
    :cond_7
    const-string/jumbo v0, "events_to_exclude"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    :cond_8
    iget-object v0, p1, Lcom/kahuna/sdk/ah;->n:Lorg/json/JSONObject;

    if-nez v0, :cond_9

    .line 494
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p1, Lcom/kahuna/sdk/ah;->n:Lorg/json/JSONObject;

    .line 496
    :cond_9
    const-string/jumbo v0, "event_bucket_config"

    iget-object v2, p1, Lcom/kahuna/sdk/ah;->n:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    const-string/jumbo v0, "event_batch_size"

    invoke-virtual {p1}, Lcom/kahuna/sdk/ah;->n()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 499
    invoke-static {p0, v1}, Lcom/kahuna/sdk/ag;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    if-eqz p1, :cond_2

    .line 289
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 290
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    invoke-direct {p0, v0}, Lcom/kahuna/sdk/ah;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 300
    :cond_1
    iput-object v2, p0, Lcom/kahuna/sdk/ah;->k:Ljava/util/Map;

    .line 305
    :goto_1
    return-void

    .line 303
    :cond_2
    iput-object p1, p0, Lcom/kahuna/sdk/ah;->k:Ljava/util/Map;

    goto :goto_1
.end method

.method private a(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    iput-object p1, p0, Lcom/kahuna/sdk/ah;->g:Ljava/util/Set;

    .line 227
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 417
    invoke-static {p1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    const-string/jumbo v1, "Start"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 423
    const-string/jumbo v1, "KahunaAnalytics"

    const-string/jumbo v2, "Can\'t process event filterings or mappings if the name is start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    :cond_2
    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    const/4 v0, 0x1

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 434
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t process invalid key regular expression: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(D)V
    .locals 9

    .prologue
    const-wide v6, 0x410fa40000000000L    # 259200.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 188
    iput-wide p1, p0, Lcom/kahuna/sdk/ah;->e:D

    .line 191
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->e:D

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 192
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/kahuna/sdk/ah;->e:D

    .line 195
    :cond_0
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->e:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 196
    iput-wide v4, p0, Lcom/kahuna/sdk/ah;->e:D

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->e:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 198
    iput-wide v6, p0, Lcom/kahuna/sdk/ah;->e:D

    goto :goto_0
.end method

.method private b(I)V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 234
    iput p1, p0, Lcom/kahuna/sdk/ah;->h:I

    .line 237
    iget v0, p0, Lcom/kahuna/sdk/ah;->h:I

    if-gez v0, :cond_1

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/kahuna/sdk/ah;->h:I

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget v0, p0, Lcom/kahuna/sdk/ah;->h:I

    if-le v0, v1, :cond_0

    .line 241
    iput v1, p0, Lcom/kahuna/sdk/ah;->h:I

    goto :goto_0
.end method

.method private b(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v2, 0x1

    .line 207
    iput-wide p1, p0, Lcom/kahuna/sdk/ah;->f:J

    .line 210
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 211
    iput-wide v2, p0, Lcom/kahuna/sdk/ah;->f:J

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->f:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 214
    iput-wide v4, p0, Lcom/kahuna/sdk/ah;->f:J

    goto :goto_0
.end method

.method private b(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    iput-object p1, p0, Lcom/kahuna/sdk/ah;->j:Ljava/util/Set;

    .line 277
    return-void
.end method

.method private c(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    if-eqz p1, :cond_2

    .line 317
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 318
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    invoke-direct {p0, v0}, Lcom/kahuna/sdk/ah;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_1
    iput-object v1, p0, Lcom/kahuna/sdk/ah;->l:Ljava/util/Set;

    .line 328
    :goto_1
    return-void

    .line 326
    :cond_2
    iput-object p1, p0, Lcom/kahuna/sdk/ah;->l:Ljava/util/Set;

    goto :goto_1
.end method

.method private d(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    if-eqz p1, :cond_2

    .line 340
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 341
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 342
    invoke-direct {p0, v0}, Lcom/kahuna/sdk/ah;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    :cond_1
    iput-object v1, p0, Lcom/kahuna/sdk/ah;->m:Ljava/util/Set;

    .line 351
    :goto_1
    return-void

    .line 349
    :cond_2
    iput-object p1, p0, Lcom/kahuna/sdk/ah;->m:Ljava/util/Set;

    goto :goto_1
.end method


# virtual methods
.method protected a()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->d:J

    return-wide v0
.end method

.method protected a(D)V
    .locals 9

    .prologue
    const-wide v6, 0x410fa40000000000L    # 259200.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 254
    iput-wide p1, p0, Lcom/kahuna/sdk/ah;->i:D

    .line 257
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->i:D

    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 258
    iput-wide v4, p0, Lcom/kahuna/sdk/ah;->i:D

    .line 261
    :cond_0
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->i:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 262
    iput-wide v4, p0, Lcom/kahuna/sdk/ah;->i:D

    .line 266
    :cond_1
    :goto_0
    return-void

    .line 263
    :cond_2
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->i:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_1

    .line 264
    iput-wide v6, p0, Lcom/kahuna/sdk/ah;->i:D

    goto :goto_0
.end method

.method protected a(I)V
    .locals 4

    .prologue
    const/16 v2, 0x1388

    const/4 v1, 0x1

    .line 396
    iput p1, p0, Lcom/kahuna/sdk/ah;->o:I

    .line 399
    iget v0, p0, Lcom/kahuna/sdk/ah;->o:I

    if-ge v0, v1, :cond_2

    .line 400
    iput v1, p0, Lcom/kahuna/sdk/ah;->o:I

    .line 407
    :cond_0
    :goto_0
    iget v0, p0, Lcom/kahuna/sdk/ah;->o:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/kahuna/sdk/ah;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 408
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->f:J

    long-to-int v0, v0

    iput v0, p0, Lcom/kahuna/sdk/ah;->o:I

    .line 410
    :cond_1
    return-void

    .line 402
    :cond_2
    iget v0, p0, Lcom/kahuna/sdk/ah;->o:I

    if-le v0, v2, :cond_0

    .line 403
    iput v2, p0, Lcom/kahuna/sdk/ah;->o:I

    goto :goto_0
.end method

.method protected a(J)V
    .locals 1

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/kahuna/sdk/ah;->d:J

    .line 177
    return-void
.end method

.method protected b()D
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->e:D

    return-wide v0
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const-wide v6, 0x410fa40000000000L    # 259200.0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 354
    if-eqz p1, :cond_4

    .line 355
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/ah;->n:Lorg/json/JSONObject;

    .line 358
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 359
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 362
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    cmpl-double v8, v2, v8

    if-nez v8, :cond_0

    move-wide v2, v4

    .line 366
    :cond_0
    cmpg-double v8, v2, v4

    if-gez v8, :cond_3

    move-wide v2, v4

    .line 371
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/kahuna/sdk/ah;->n:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_2

    .line 376
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception while trying to set event bucket config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_2
    :goto_2
    return-void

    .line 368
    :cond_3
    cmpl-double v8, v2, v6

    if-lez v8, :cond_1

    move-wide v2, v6

    .line 369
    goto :goto_1

    .line 381
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/ah;->n:Lorg/json/JSONObject;

    goto :goto_2
.end method

.method protected c()J
    .locals 4

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->e:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method protected d()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->f:J

    return-wide v0
.end method

.method protected e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/kahuna/sdk/ah;->g:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kahuna/sdk/ah;->g:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 222
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/kahuna/sdk/ah;->h:I

    return v0
.end method

.method protected g()D
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->i:D

    return-wide v0
.end method

.method protected h()J
    .locals 4

    .prologue
    .line 250
    iget-wide v0, p0, Lcom/kahuna/sdk/ah;->i:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method protected i()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kahuna/sdk/ah;->j:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kahuna/sdk/ah;->j:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 272
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected j()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/kahuna/sdk/ah;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 281
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/kahuna/sdk/ah;->k:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 283
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method protected k()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/kahuna/sdk/ah;->l:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kahuna/sdk/ah;->l:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 311
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected l()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/kahuna/sdk/ah;->m:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/kahuna/sdk/ah;->m:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 334
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method protected m()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/kahuna/sdk/ah;->n:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/kahuna/sdk/ah;->n:Lorg/json/JSONObject;

    .line 390
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected n()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/kahuna/sdk/ah;->o:I

    return v0
.end method
