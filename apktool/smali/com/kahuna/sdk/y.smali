.class public Lcom/kahuna/sdk/y;
.super Ljava/lang/Object;
.source "KahunaInAppManager.java"


# static fields
.field private static f:Lcom/kahuna/sdk/y;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;

.field private d:J

.field private e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/y;->a:Ljava/lang/Object;

    return-void
.end method

.method protected static a()V
    .locals 6

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/y;->b()Lcom/kahuna/sdk/y;

    move-result-object v1

    .line 61
    iget-object v2, v1, Lcom/kahuna/sdk/y;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iget-object v3, v1, Lcom/kahuna/sdk/y;->b:Ljava/lang/String;

    .line 63
    iget-wide v4, v1, Lcom/kahuna/sdk/y;->d:J

    .line 64
    iget-object v0, v1, Lcom/kahuna/sdk/y;->c:Landroid/os/Bundle;

    .line 65
    iget-object v1, v1, Lcom/kahuna/sdk/y;->e:Lorg/json/JSONObject;

    .line 66
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    if-eqz v3, :cond_1

    :try_start_2
    invoke-static {}, Lcom/kahuna/sdk/h;->i()Lcom/kahuna/sdk/z;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 71
    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    :cond_0
    invoke-static {v3, v4, v5, v0, v1}, Lcom/kahuna/sdk/y;->a(Ljava/lang/String;JLandroid/os/Bundle;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    :cond_1
    :goto_0
    return-void

    .line 66
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception when checking pending in-app message on activity start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;JLandroid/os/Bundle;Lorg/json/JSONObject;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-static {}, Lcom/kahuna/sdk/y;->b()Lcom/kahuna/sdk/y;

    move-result-object v4

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 161
    cmp-long v0, v0, p1

    if-gez v0, :cond_5

    .line 163
    if-eqz p4, :cond_7

    .line 165
    invoke-static {}, Lcom/kahuna/sdk/h;->e()Ljava/util/Map;

    move-result-object v5

    .line 166
    invoke-virtual {p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 167
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    :try_start_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 176
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 188
    :goto_1
    if-eqz v0, :cond_2

    .line 189
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_1

    .line 190
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "In-App Message recieved, but was restricted due to non-matching user not logged into the app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    :goto_2
    return-void

    .line 195
    :cond_2
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_3

    .line 196
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Calling in-app message listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_3
    invoke-static {}, Lcom/kahuna/sdk/h;->i()Lcom/kahuna/sdk/z;

    move-result-object v0

    invoke-interface {v0, p0, p3}, Lcom/kahuna/sdk/z;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 205
    :cond_4
    :goto_3
    iget-object v1, v4, Lcom/kahuna/sdk/y;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, v4, Lcom/kahuna/sdk/y;->b:Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/kahuna/sdk/y;->c:Landroid/os/Bundle;

    .line 208
    const-wide/16 v2, 0x0

    iput-wide v2, v4, Lcom/kahuna/sdk/y;->d:J

    .line 209
    const/4 v0, 0x0

    iput-object v0, v4, Lcom/kahuna/sdk/y;->e:Lorg/json/JSONObject;

    .line 210
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 201
    :cond_5
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_4

    .line 202
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Supressing in-app message due to expiration time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method protected static a(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    .line 83
    if-nez p0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    :try_start_0
    const-string/jumbo v0, "k_m"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string/jumbo v0, "k_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1c20

    add-long/2addr v4, v6

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 89
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 91
    invoke-static {v2}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string/jumbo v0, "k_m"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v0, "k_t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v0, "k_c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 97
    if-nez v6, :cond_2

    const-string/jumbo v0, "k_c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "In-App Message recieved, but was restricted due to non-matching user not logged into the app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception in handle InAppMessage Response handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_2
    :try_start_1
    const-string/jumbo v0, "k_c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 107
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 108
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_3

    .line 112
    instance-of v8, v1, Ljava/lang/Boolean;

    if-eqz v8, :cond_4

    .line 113
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 115
    :cond_4
    instance-of v8, v1, Ljava/lang/Integer;

    if-eqz v8, :cond_5

    .line 116
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 118
    :cond_5
    instance-of v8, v1, Ljava/lang/Long;

    if-eqz v8, :cond_6

    .line 119
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 121
    :cond_6
    instance-of v8, v1, Ljava/lang/Float;

    if-eqz v8, :cond_7

    .line 122
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 124
    :cond_7
    instance-of v8, v1, Ljava/lang/Double;

    if-eqz v8, :cond_8

    .line 125
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 128
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_9
    invoke-static {}, Lcom/kahuna/sdk/y;->b()Lcom/kahuna/sdk/y;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/kahuna/sdk/h;->i()Lcom/kahuna/sdk/z;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 137
    invoke-static {v2, v4, v5, v3, v6}, Lcom/kahuna/sdk/y;->a(Ljava/lang/String;JLandroid/os/Bundle;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 140
    :cond_a
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_b

    .line 141
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In-App Message recieved, but no listener exists. Holding message until: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_b
    iget-object v1, v0, Lcom/kahuna/sdk/y;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :try_start_2
    iput-object v2, v0, Lcom/kahuna/sdk/y;->b:Ljava/lang/String;

    .line 145
    iput-object v3, v0, Lcom/kahuna/sdk/y;->c:Landroid/os/Bundle;

    .line 146
    iput-wide v4, v0, Lcom/kahuna/sdk/y;->d:J

    .line 147
    iput-object v6, v0, Lcom/kahuna/sdk/y;->e:Lorg/json/JSONObject;

    .line 148
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private static b()Lcom/kahuna/sdk/y;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/kahuna/sdk/y;->f:Lcom/kahuna/sdk/y;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/kahuna/sdk/y;

    invoke-direct {v0}, Lcom/kahuna/sdk/y;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/y;->f:Lcom/kahuna/sdk/y;

    .line 49
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/y;->f:Lcom/kahuna/sdk/y;

    return-object v0
.end method
