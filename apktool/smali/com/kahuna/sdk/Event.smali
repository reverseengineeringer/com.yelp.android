.class public Lcom/kahuna/sdk/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/Event$EventHashMismatchException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kahuna/sdk/Event;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J


# direct methods
.method protected constructor <init>(Lcom/kahuna/sdk/Event;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lcom/kahuna/sdk/Event;->h:I

    .line 76
    iput v0, p0, Lcom/kahuna/sdk/Event;->i:I

    .line 77
    iput v0, p0, Lcom/kahuna/sdk/Event;->j:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/kahuna/sdk/Event;->k:I

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kahuna/sdk/Event;->l:J

    .line 92
    iget-object v0, p1, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    .line 93
    iget-wide v0, p1, Lcom/kahuna/sdk/Event;->b:J

    iput-wide v0, p0, Lcom/kahuna/sdk/Event;->b:J

    .line 94
    iget-object v0, p1, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    .line 98
    iget v0, p1, Lcom/kahuna/sdk/Event;->k:I

    iput v0, p0, Lcom/kahuna/sdk/Event;->k:I

    .line 99
    iget v0, p1, Lcom/kahuna/sdk/Event;->h:I

    iput v0, p0, Lcom/kahuna/sdk/Event;->h:I

    .line 100
    iget v0, p1, Lcom/kahuna/sdk/Event;->i:I

    iput v0, p0, Lcom/kahuna/sdk/Event;->i:I

    .line 101
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lcom/kahuna/sdk/Event;->h:I

    .line 76
    iput v0, p0, Lcom/kahuna/sdk/Event;->i:I

    .line 77
    iput v0, p0, Lcom/kahuna/sdk/Event;->j:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/kahuna/sdk/Event;->k:I

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kahuna/sdk/Event;->l:J

    .line 82
    iput-object p1, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/kahuna/sdk/Event;->b:J

    .line 84
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;J)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lcom/kahuna/sdk/Event;->h:I

    .line 76
    iput v0, p0, Lcom/kahuna/sdk/Event;->i:I

    .line 77
    iput v0, p0, Lcom/kahuna/sdk/Event;->j:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/kahuna/sdk/Event;->k:I

    .line 79
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kahuna/sdk/Event;->l:J

    .line 87
    iput-object p1, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    .line 88
    iput-wide p2, p0, Lcom/kahuna/sdk/Event;->b:J

    .line 89
    return-void
.end method

.method protected static a(Lorg/json/JSONObject;Z)Lcom/kahuna/sdk/Event;
    .locals 20

    .prologue
    .line 256
    if-nez p0, :cond_1

    .line 257
    const/4 v4, 0x0

    .line 335
    :cond_0
    :goto_0
    return-object v4

    .line 261
    :cond_1
    :try_start_0
    const-string/jumbo v4, "event"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 262
    const-string/jumbo v4, "time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 264
    const-string/jumbo v4, "credentials"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 266
    const/4 v4, 0x0

    move-object v9, v4

    .line 269
    :goto_1
    const-string/jumbo v4, "user_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 271
    const/4 v4, 0x0

    move-object v8, v4

    .line 274
    :goto_2
    const-string/jumbo v4, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 276
    const/4 v4, 0x0

    move-object v7, v4

    .line 279
    :goto_3
    const-string/jumbo v4, "properties"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 281
    const/4 v4, 0x0

    move-object v6, v4

    .line 284
    :goto_4
    const-string/jumbo v4, "tracking_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 286
    const/4 v4, 0x0

    move-object v5, v4

    .line 289
    :goto_5
    const-string/jumbo v4, "count"

    const/4 v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 290
    const-string/jumbo v4, "value"

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 291
    const-string/jumbo v4, "push_launch_override"

    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 292
    const-string/jumbo v4, "event_count"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    .line 293
    const-string/jumbo v4, "event_number"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 295
    new-instance v4, Lcom/kahuna/sdk/Event;

    invoke-direct {v4, v10, v12, v13}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;J)V

    .line 296
    iput-object v5, v4, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    .line 297
    iput-object v9, v4, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    .line 298
    iput-object v8, v4, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    .line 299
    iput-object v7, v4, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    .line 300
    iput-object v6, v4, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    .line 302
    const/4 v5, -0x1

    if-eq v11, v5, :cond_2

    .line 303
    iput v11, v4, Lcom/kahuna/sdk/Event;->h:I

    .line 304
    :cond_2
    const/4 v5, -0x1

    if-eq v14, v5, :cond_3

    .line 305
    iput v14, v4, Lcom/kahuna/sdk/Event;->i:I

    .line 306
    :cond_3
    const/4 v5, -0x1

    if-eq v15, v5, :cond_4

    .line 307
    iput v15, v4, Lcom/kahuna/sdk/Event;->j:I

    .line 309
    :cond_4
    const-wide/16 v6, 0x0

    cmp-long v5, v18, v6

    if-lez v5, :cond_5

    .line 310
    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/kahuna/sdk/Event;->l:J

    .line 313
    :cond_5
    move/from16 v0, v16

    iput v0, v4, Lcom/kahuna/sdk/Event;->k:I

    .line 318
    if-nez p1, :cond_0

    .line 319
    const-string/jumbo v5, "event_hash"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 320
    invoke-static {v5}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 321
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/Event;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    .line 322
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 323
    new-instance v4, Lcom/kahuna/sdk/Event$EventHashMismatchException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Detected corrupted archived event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/kahuna/sdk/Event$EventHashMismatchException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :catch_0
    move-exception v4

    .line 329
    sget-boolean v5, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v5, :cond_6

    .line 330
    const-string/jumbo v5, "Kahuna"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception building KAEvent from JSONObject: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " andException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    move-object v5, v4

    goto/16 :goto_5

    :cond_8
    move-object v6, v4

    goto/16 :goto_4

    :cond_9
    move-object v7, v4

    goto/16 :goto_3

    :cond_a
    move-object v8, v4

    goto/16 :goto_2

    :cond_b
    move-object v9, v4

    goto/16 :goto_1
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 477
    if-eqz p0, :cond_1

    .line 478
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 479
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 480
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 481
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 483
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-static {v3}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 485
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 491
    :cond_1
    return-object v1
.end method

.method protected static b(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 417
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 418
    if-eqz p0, :cond_a

    .line 419
    const-string/jumbo v1, "count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const-string/jumbo v1, "count"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "count"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_0
    const-string/jumbo v1, "credentials"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 423
    const-string/jumbo v1, "credentials"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "credentials"

    invoke-static {v1, v2}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 425
    :cond_1
    const-string/jumbo v1, "event"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    const-string/jumbo v1, "event"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "event"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_2
    const-string/jumbo v1, "event_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    const-string/jumbo v1, "event_count"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "event_count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "event_count"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_3
    const-string/jumbo v1, "event_number"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 432
    const-string/jumbo v1, "event_number"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "event_number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "event_number"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_4
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 435
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "location"

    invoke-static {v1, v2}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 437
    :cond_5
    const-string/jumbo v1, "properties"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 438
    const-string/jumbo v1, "properties"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "properties"

    invoke-static {v1, v2}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 440
    :cond_6
    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 441
    const-string/jumbo v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "time"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_7
    const-string/jumbo v1, "tracking_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 444
    const-string/jumbo v1, "tracking_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tracking_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tracking_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_8
    const-string/jumbo v1, "user_info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 447
    const-string/jumbo v1, "user_info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "user_info"

    invoke-static {v1, v2}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 449
    :cond_9
    const-string/jumbo v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 450
    const-string/jumbo v1, "value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 457
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 458
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 461
    :cond_b
    const-string/jumbo v0, "|"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MD5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kahuna/sdk/Event;)I
    .locals 4

    .prologue
    .line 496
    iget-wide v0, p0, Lcom/kahuna/sdk/Event;->b:J

    iget-wide v2, p1, Lcom/kahuna/sdk/Event;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 497
    const/4 v0, -0x1

    .line 503
    :goto_0
    return v0

    .line 499
    :cond_0
    iget-wide v0, p0, Lcom/kahuna/sdk/Event;->b:J

    iget-wide v2, p1, Lcom/kahuna/sdk/Event;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 500
    const/4 v0, 0x1

    goto :goto_0

    .line 503
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 167
    iput p1, p0, Lcom/kahuna/sdk/Event;->h:I

    .line 168
    return-void
.end method

.method protected a(J)V
    .locals 1

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/kahuna/sdk/Event;->l:J

    .line 222
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    .line 105
    return-void
.end method

.method protected a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

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

    .line 131
    :try_start_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 132
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 136
    const-string/jumbo v1, "Kahuna"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception building user credentials string from Map: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " andException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    .line 143
    :goto_1
    return-void

    .line 141
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 195
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method protected b()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/kahuna/sdk/Event;->b:J

    return-wide v0
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/kahuna/sdk/Event;->i:I

    .line 176
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    .line 117
    return-void
.end method

.method protected b(Ljava/util/Map;)V
    .locals 1
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
    .line 150
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput v0, p0, Lcom/kahuna/sdk/Event;->j:I

    .line 121
    return-void
.end method

.method protected c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lcom/kahuna/sdk/Event;

    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/Event;->a(Lcom/kahuna/sdk/Event;)I

    move-result v0

    return v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 230
    instance-of v1, p1, Lcom/kahuna/sdk/Event;

    if-eqz v1, :cond_0

    .line 231
    check-cast p1, Lcom/kahuna/sdk/Event;

    .line 232
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/kahuna/sdk/Event;->b:J

    iget-wide v4, p1, Lcom/kahuna/sdk/Event;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 235
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/kahuna/sdk/Event;->h:I

    return v0
.end method

.method protected g()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/kahuna/sdk/Event;->i:I

    return v0
.end method

.method protected h()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 189
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception building EventProperties from JSON String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " andException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/kahuna/sdk/Event;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/kahuna/sdk/Event;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kahuna/sdk/Event;->k:I

    .line 218
    return-void
.end method

.method protected k()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/kahuna/sdk/Event;->l:J

    return-wide v0
.end method

.method protected l()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 345
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 348
    :try_start_0
    const-string/jumbo v1, "event"

    iget-object v2, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Lcom/kahuna/sdk/Event;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 351
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 352
    const-string/jumbo v1, "credentials"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 356
    const-string/jumbo v1, "user_info"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 360
    const-string/jumbo v1, "location"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 364
    const-string/jumbo v1, "properties"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 368
    const-string/jumbo v1, "tracking_id"

    iget-object v2, p0, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    :cond_4
    iget v1, p0, Lcom/kahuna/sdk/Event;->h:I

    if-eq v1, v4, :cond_5

    .line 372
    const-string/jumbo v1, "count"

    iget v2, p0, Lcom/kahuna/sdk/Event;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 374
    :cond_5
    iget v1, p0, Lcom/kahuna/sdk/Event;->i:I

    if-eq v1, v4, :cond_6

    .line 375
    const-string/jumbo v1, "value"

    iget v2, p0, Lcom/kahuna/sdk/Event;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    :cond_6
    iget v1, p0, Lcom/kahuna/sdk/Event;->j:I

    if-eq v1, v4, :cond_7

    .line 378
    const-string/jumbo v1, "push_launch_override"

    iget v2, p0, Lcom/kahuna/sdk/Event;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 380
    :cond_7
    iget v1, p0, Lcom/kahuna/sdk/Event;->k:I

    if-lez v1, :cond_8

    .line 381
    const-string/jumbo v1, "event_count"

    iget v2, p0, Lcom/kahuna/sdk/Event;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    :cond_8
    iget-wide v2, p0, Lcom/kahuna/sdk/Event;->l:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    .line 385
    const-string/jumbo v1, "event_number"

    iget-wide v2, p0, Lcom/kahuna/sdk/Event;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 388
    :cond_9
    invoke-static {v0}, Lcom/kahuna/sdk/Event;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 390
    const-string/jumbo v2, "event_hash"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_a
    :goto_0
    return-object v0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_b

    .line 394
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception getting JSON representation for KAEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KAEvent: name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " creationDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kahuna/sdk/Event;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
