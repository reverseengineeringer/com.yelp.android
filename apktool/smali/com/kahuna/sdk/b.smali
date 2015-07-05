.class public Lcom/kahuna/sdk/b;
.super Ljava/lang/Object;
.source "EventBucketManager.java"


# static fields
.field private static a:Lcom/kahuna/sdk/b;


# instance fields
.field private b:Ljava/lang/Object;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kahuna/sdk/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/kahuna/sdk/b;

    invoke-direct {v0}, Lcom/kahuna/sdk/b;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/b;->b:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/b;->c:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/b;->d:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/b;->e:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method protected static a(Ljava/lang/String;J)Lcom/kahuna/sdk/Event;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-static {p0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    sget-object v1, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/kahuna/sdk/b;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_0

    .line 92
    sget-object v2, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v2, v2, Lcom/kahuna/sdk/b;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    sget-object v3, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v3, v3, Lcom/kahuna/sdk/b;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v0, v0, Lcom/kahuna/sdk/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    monitor-exit v2

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private a(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 6

    .prologue
    const-wide/32 v4, 0xed4e00

    const-wide/16 v2, 0x1e

    .line 177
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 178
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 184
    :cond_0
    :goto_0
    return-object p1

    .line 180
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 181
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0
.end method

.method protected static a()V
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v1, v0, Lcom/kahuna/sdk/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v0, v0, Lcom/kahuna/sdk/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static a(Lcom/kahuna/sdk/Event;)V
    .locals 5

    .prologue
    .line 102
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    invoke-virtual {p0}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kahuna/sdk/Event;->b()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/kahuna/sdk/b;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 110
    sget-object v1, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v1, v1, Lcom/kahuna/sdk/b;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v2, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v2, v2, Lcom/kahuna/sdk/b;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 112
    sget-object v2, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v2, v2, Lcom/kahuna/sdk/b;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_2

    .line 114
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Inserted new bucket mapping \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :cond_3
    :try_start_1
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_2

    .line 121
    const-string/jumbo v2, "KahunaAnalytics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted to insert bucket mapping that already exists \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\', aborting."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected static a(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kahuna/sdk/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v3, v0, Lcom/kahuna/sdk/b;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v4, v0, Lcom/kahuna/sdk/b;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    :try_start_2
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v0, v0, Lcom/kahuna/sdk/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 144
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 145
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    .line 146
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    .line 147
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->f()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v6, v6, Lcom/kahuna/sdk/b;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 152
    sget-object v8, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v8, v8, Lcom/kahuna/sdk/b;->c:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 153
    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->b()J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    .line 156
    sget-object v1, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->b()J

    move-result-wide v8

    invoke-direct {v1, v6, v8, v9}, Lcom/kahuna/sdk/b;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 157
    sget-object v6, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v6, v6, Lcom/kahuna/sdk/b;->e:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 158
    sget-object v6, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v6, v6, Lcom/kahuna/sdk/b;->e:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 160
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Rebuilt new bucket mapping \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 166
    :cond_1
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    :cond_2
    :goto_1
    return-void

    .line 166
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 167
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_2

    .line 171
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception rebuilding event bucket mappings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static a(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 56
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v1, v0, Lcom/kahuna/sdk/b;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v0, v0, Lcom/kahuna/sdk/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    if-eqz p0, :cond_1

    .line 59
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 60
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 64
    sget-object v4, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v4, v4, Lcom/kahuna/sdk/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    invoke-direct {v5, v3}, Lcom/kahuna/sdk/b;->a(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 70
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception loading bucket mappings from persistent store: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    :goto_1
    return-void

    .line 67
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 76
    invoke-static {p0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 80
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v1, v0, Lcom/kahuna/sdk/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/b;->a:Lcom/kahuna/sdk/b;

    iget-object v0, v0, Lcom/kahuna/sdk/b;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/kahuna/sdk/b;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 197
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/kahuna/sdk/b;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    iget-object v0, p0, Lcom/kahuna/sdk/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v2, p2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_0
    :goto_0
    monitor-exit v1

    .line 208
    return-object v0

    .line 203
    :cond_1
    sget-boolean v3, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v3, :cond_0

    .line 204
    const-string/jumbo v3, "KahunaAnalytics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempted to obtain a bucket mapping for event not in bucketConfig: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
