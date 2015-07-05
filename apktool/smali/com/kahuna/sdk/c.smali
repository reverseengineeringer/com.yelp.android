.class public Lcom/kahuna/sdk/c;
.super Ljava/lang/Object;
.source "EventBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/kahuna/sdk/c;->b:I

    .line 46
    iput v0, p0, Lcom/kahuna/sdk/c;->c:I

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/c;->d:Ljava/lang/Object;

    .line 57
    invoke-static {p1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "You must specify a valid name for the event builder. Ignoring event"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/kahuna/sdk/c;->a:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public a()Lcom/kahuna/sdk/Event;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v4, 0x0

    .line 164
    iget-object v0, p0, Lcom/kahuna/sdk/c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    :goto_0
    return-object v4

    .line 170
    :cond_0
    new-instance v0, Lcom/kahuna/sdk/Event;

    iget-object v1, p0, Lcom/kahuna/sdk/c;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 171
    iget v1, p0, Lcom/kahuna/sdk/c;->b:I

    if-eq v1, v8, :cond_1

    iget v1, p0, Lcom/kahuna/sdk/c;->c:I

    if-eq v1, v8, :cond_1

    .line 172
    iget v1, p0, Lcom/kahuna/sdk/c;->b:I

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/Event;->a(I)V

    .line 173
    iget v1, p0, Lcom/kahuna/sdk/c;->c:I

    invoke-virtual {v0, v1}, Lcom/kahuna/sdk/Event;->b(I)V

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/kahuna/sdk/c;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/kahuna/sdk/c;->e:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 178
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/kahuna/sdk/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kahuna/sdk/d;

    .line 180
    invoke-virtual {v1}, Lcom/kahuna/sdk/d;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 186
    invoke-static {v1}, Lcom/kahuna/sdk/d;->a(Lcom/kahuna/sdk/d;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 187
    const-string/jumbo v6, "c"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :goto_2
    const-string/jumbo v6, "i"

    invoke-static {v1}, Lcom/kahuna/sdk/d;->b(Lcom/kahuna/sdk/d;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    invoke-static {v1}, Lcom/kahuna/sdk/d;->c(Lcom/kahuna/sdk/d;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 194
    const-string/jumbo v6, "s"

    invoke-static {v1}, Lcom/kahuna/sdk/d;->c(Lcom/kahuna/sdk/d;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_3
    :goto_3
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v1

    .line 201
    :try_start_2
    sget-boolean v5, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v5, :cond_2

    .line 202
    const-string/jumbo v5, "KahunaAnalytics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception when building event from event builder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 189
    :cond_4
    :try_start_3
    const-string/jumbo v6, "c"

    invoke-static {v1}, Lcom/kahuna/sdk/d;->a(Lcom/kahuna/sdk/d;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 195
    :cond_5
    invoke-static {v1}, Lcom/kahuna/sdk/d;->d(Lcom/kahuna/sdk/d;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 196
    const-string/jumbo v6, "v"

    invoke-static {v1}, Lcom/kahuna/sdk/d;->d(Lcom/kahuna/sdk/d;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 206
    :cond_6
    :try_start_4
    invoke-virtual {v0, v3}, Lcom/kahuna/sdk/Event;->a(Lorg/json/JSONArray;)V

    .line 208
    :cond_7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v0

    .line 210
    goto/16 :goto_0
.end method

.method public a(II)Lcom/kahuna/sdk/c;
    .locals 0

    .prologue
    .line 76
    iput p1, p0, Lcom/kahuna/sdk/c;->b:I

    .line 77
    iput p2, p0, Lcom/kahuna/sdk/c;->c:I

    .line 78
    return-object p0
.end method
