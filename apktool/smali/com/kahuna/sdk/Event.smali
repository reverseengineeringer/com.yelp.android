.class public Lcom/kahuna/sdk/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
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


# direct methods
.method protected constructor <init>(Lcom/kahuna/sdk/Event;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/kahuna/sdk/Event;->h:I

    .line 63
    iput v0, p0, Lcom/kahuna/sdk/Event;->i:I

    .line 64
    iput v0, p0, Lcom/kahuna/sdk/Event;->j:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/kahuna/sdk/Event;->k:I

    .line 89
    iget-object v0, p1, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    .line 90
    iget-wide v0, p1, Lcom/kahuna/sdk/Event;->b:J

    iput-wide v0, p0, Lcom/kahuna/sdk/Event;->b:J

    .line 91
    iget-object v0, p1, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    .line 95
    iget v0, p1, Lcom/kahuna/sdk/Event;->k:I

    iput v0, p0, Lcom/kahuna/sdk/Event;->k:I

    .line 96
    iget v0, p1, Lcom/kahuna/sdk/Event;->h:I

    iput v0, p0, Lcom/kahuna/sdk/Event;->h:I

    .line 97
    iget v0, p1, Lcom/kahuna/sdk/Event;->i:I

    iput v0, p0, Lcom/kahuna/sdk/Event;->i:I

    .line 98
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v0, p0, Lcom/kahuna/sdk/Event;->h:I

    .line 63
    iput v0, p0, Lcom/kahuna/sdk/Event;->i:I

    .line 64
    iput v0, p0, Lcom/kahuna/sdk/Event;->j:I

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/kahuna/sdk/Event;->k:I

    .line 71
    iput-object p1, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    .line 72
    iput-wide p2, p0, Lcom/kahuna/sdk/Event;->b:J

    .line 73
    if-eqz p4, :cond_0

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    .line 77
    :cond_0
    if-eqz p5, :cond_1

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    .line 81
    :cond_1
    if-eqz p6, :cond_2

    .line 82
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    .line 85
    :cond_2
    iput-object p7, p0, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    .line 86
    return-void
.end method

.method protected static a(Lorg/json/JSONObject;Z)Lcom/kahuna/sdk/Event;
    .locals 18

    .prologue
    .line 199
    if-nez p0, :cond_1

    .line 200
    const/4 v2, 0x0

    .line 273
    :cond_0
    :goto_0
    return-object v2

    .line 204
    :cond_1
    :try_start_0
    const-string/jumbo v2, "event"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    const-string/jumbo v2, "time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 207
    const-string/jumbo v2, "credentials"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 209
    const/4 v2, 0x0

    move-object v13, v2

    .line 212
    :goto_1
    const-string/jumbo v2, "user_info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 214
    const/4 v2, 0x0

    move-object v12, v2

    .line 217
    :goto_2
    const-string/jumbo v2, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 219
    const/4 v2, 0x0

    move-object v11, v2

    .line 222
    :goto_3
    const-string/jumbo v2, "attr"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    const-string/jumbo v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 224
    const/4 v2, 0x0

    move-object v10, v2

    .line 227
    :goto_4
    const-string/jumbo v2, "tracking_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 228
    const-string/jumbo v2, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    const/4 v9, 0x0

    .line 232
    :cond_2
    const-string/jumbo v2, "count"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 233
    const-string/jumbo v2, "value"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 234
    const-string/jumbo v2, "push_launch_override"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    .line 235
    const-string/jumbo v2, "event_count"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 237
    new-instance v2, Lcom/kahuna/sdk/Event;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 238
    iput-object v13, v2, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    .line 239
    iput-object v12, v2, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    .line 240
    iput-object v11, v2, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    .line 241
    iput-object v10, v2, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    .line 243
    const/4 v3, -0x1

    if-eq v14, v3, :cond_3

    .line 244
    iput v14, v2, Lcom/kahuna/sdk/Event;->h:I

    .line 245
    :cond_3
    const/4 v3, -0x1

    if-eq v15, v3, :cond_4

    .line 246
    iput v15, v2, Lcom/kahuna/sdk/Event;->i:I

    .line 247
    :cond_4
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_5

    .line 248
    move/from16 v0, v16

    iput v0, v2, Lcom/kahuna/sdk/Event;->j:I

    .line 251
    :cond_5
    move/from16 v0, v17

    iput v0, v2, Lcom/kahuna/sdk/Event;->k:I

    .line 256
    if-nez p1, :cond_0

    .line 257
    const-string/jumbo v3, "event_hash"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-static {v3}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 259
    invoke-static/range {p0 .. p0}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 260
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    new-instance v2, Lcom/kahuna/sdk/Event$EventHashMismatchException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Detected corrupted archived event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kahuna/sdk/Event$EventHashMismatchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :catch_0
    move-exception v2

    .line 267
    sget-boolean v3, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v3, :cond_6

    .line 268
    const-string/jumbo v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception building KAEvent from JSONObject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " andException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    move-object v10, v2

    goto/16 :goto_4

    :cond_8
    move-object v11, v2

    goto/16 :goto_3

    :cond_9
    move-object v12, v2

    goto/16 :goto_2

    :cond_a
    move-object v13, v2

    goto/16 :goto_1
.end method

.method protected static a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 351
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 352
    if-eqz p0, :cond_8

    .line 353
    const-string/jumbo v1, "count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
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

    .line 356
    :cond_0
    const-string/jumbo v1, "credentials"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    const-string/jumbo v1, "credentials"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "credentials"

    invoke-static {v1, v2}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 359
    :cond_1
    const-string/jumbo v1, "event"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 360
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

    .line 362
    :cond_2
    const-string/jumbo v1, "event_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
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

    .line 365
    :cond_3
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 366
    const-string/jumbo v1, "location"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "location"

    invoke-static {v1, v2}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 368
    :cond_4
    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
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

    .line 371
    :cond_5
    const-string/jumbo v1, "tracking_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 372
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

    .line 374
    :cond_6
    const-string/jumbo v1, "user_info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 375
    const-string/jumbo v1, "user_info"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "user_info"

    invoke-static {v1, v2}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 377
    :cond_7
    const-string/jumbo v1, "value"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 378
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

    .line 384
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 386
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_9
    const-string/jumbo v0, "|"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MD5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 404
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 405
    if-eqz p0, :cond_1

    .line 406
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 407
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 408
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 410
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

    .line 411
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 412
    invoke-static {v3}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 413
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

    .line 407
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(Lcom/kahuna/sdk/Event;)I
    .locals 4

    .prologue
    .line 424
    iget-wide v0, p0, Lcom/kahuna/sdk/Event;->b:J

    iget-wide v2, p1, Lcom/kahuna/sdk/Event;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 425
    const/4 v0, -0x1

    .line 431
    :goto_0
    return v0

    .line 427
    :cond_0
    iget-wide v0, p0, Lcom/kahuna/sdk/Event;->b:J

    iget-wide v2, p1, Lcom/kahuna/sdk/Event;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 428
    const/4 v0, 0x1

    goto :goto_0

    .line 431
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    .prologue
    .line 139
    iput p1, p0, Lcom/kahuna/sdk/Event;->h:I

    .line 140
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    .line 102
    return-void
.end method

.method protected a(Lorg/json/JSONArray;)V
    .locals 1

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method protected b()J
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/kahuna/sdk/Event;->b:J

    return-wide v0
.end method

.method protected b(I)V
    .locals 0

    .prologue
    .line 147
    iput p1, p0, Lcom/kahuna/sdk/Event;->i:I

    .line 148
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/kahuna/sdk/Event;->j:I

    .line 114
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    check-cast p1, Lcom/kahuna/sdk/Event;

    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/Event;->a(Lcom/kahuna/sdk/Event;)I

    move-result v0

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/kahuna/sdk/Event;->h:I

    return v0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/kahuna/sdk/Event;->i:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 173
    instance-of v1, p1, Lcom/kahuna/sdk/Event;

    if-eqz v1, :cond_0

    .line 174
    check-cast p1, Lcom/kahuna/sdk/Event;

    .line 175
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 177
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

    .line 178
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/kahuna/sdk/Event;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/kahuna/sdk/Event;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kahuna/sdk/Event;->k:I

    .line 169
    return-void
.end method

.method protected h()Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 283
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 286
    :try_start_0
    const-string/jumbo v1, "event"

    iget-object v2, p0, Lcom/kahuna/sdk/Event;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Lcom/kahuna/sdk/Event;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 289
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 290
    const-string/jumbo v1, "credentials"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kahuna/sdk/Event;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 294
    const-string/jumbo v1, "user_info"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kahuna/sdk/Event;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 298
    const-string/jumbo v1, "location"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/kahuna/sdk/Event;->e:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 302
    const-string/jumbo v1, "attr"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/kahuna/sdk/Event;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 306
    const-string/jumbo v1, "tracking_id"

    iget-object v2, p0, Lcom/kahuna/sdk/Event;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    :cond_4
    iget v1, p0, Lcom/kahuna/sdk/Event;->h:I

    if-eq v1, v4, :cond_5

    .line 310
    const-string/jumbo v1, "count"

    iget v2, p0, Lcom/kahuna/sdk/Event;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    :cond_5
    iget v1, p0, Lcom/kahuna/sdk/Event;->i:I

    if-eq v1, v4, :cond_6

    .line 313
    const-string/jumbo v1, "value"

    iget v2, p0, Lcom/kahuna/sdk/Event;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    :cond_6
    iget v1, p0, Lcom/kahuna/sdk/Event;->j:I

    if-eq v1, v4, :cond_7

    .line 316
    const-string/jumbo v1, "push_launch_override"

    iget v2, p0, Lcom/kahuna/sdk/Event;->j:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 318
    :cond_7
    iget v1, p0, Lcom/kahuna/sdk/Event;->k:I

    if-lez v1, :cond_8

    .line 319
    const-string/jumbo v1, "event_count"

    iget v2, p0, Lcom/kahuna/sdk/Event;->k:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 322
    :cond_8
    invoke-static {v0}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 324
    const-string/jumbo v2, "event_hash"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :cond_9
    :goto_0
    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_a

    .line 329
    const-string/jumbo v1, "KahunaAnalytics"

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

    .line 331
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
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
