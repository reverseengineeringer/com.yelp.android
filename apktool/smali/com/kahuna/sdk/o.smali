.class public Lcom/kahuna/sdk/o;
.super Ljava/lang/Object;
.source "KahunaInAppManager.java"


# static fields
.field private static f:Lcom/kahuna/sdk/o;


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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/o;->a:Ljava/lang/Object;

    return-void
.end method

.method protected static a()V
    .locals 6

    .prologue
    .line 55
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/o;->b()Lcom/kahuna/sdk/o;

    move-result-object v1

    .line 62
    iget-object v2, v1, Lcom/kahuna/sdk/o;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    iget-object v3, v1, Lcom/kahuna/sdk/o;->b:Ljava/lang/String;

    .line 64
    iget-wide v4, v1, Lcom/kahuna/sdk/o;->d:J

    .line 65
    iget-object v0, v1, Lcom/kahuna/sdk/o;->c:Landroid/os/Bundle;

    .line 66
    iget-object v1, v1, Lcom/kahuna/sdk/o;->e:Lorg/json/JSONObject;

    .line 67
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    if-eqz v3, :cond_1

    :try_start_2
    invoke-static {}, Lcom/kahuna/sdk/l;->m()Lcom/kahuna/sdk/p;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 72
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    :cond_0
    invoke-static {v3, v4, v5, v0, v1}, Lcom/kahuna/sdk/o;->a(Ljava/lang/String;JLandroid/os/Bundle;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    :cond_1
    :goto_0
    return-void

    .line 67
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

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string/jumbo v1, "Kahuna"

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
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-static {}, Lcom/kahuna/sdk/o;->b()Lcom/kahuna/sdk/o;

    move-result-object v1

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 162
    cmp-long v2, v2, p1

    if-gez v2, :cond_5

    .line 164
    if-eqz p4, :cond_0

    .line 165
    invoke-static {p4}, Lcom/kahuna/sdk/w;->d(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 168
    :cond_0
    if-eqz v0, :cond_2

    .line 169
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_1

    .line 170
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "In-App Message recieved, but was restricted due to non-matching user not logged into the app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_3

    .line 176
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v2, "Calling in-app message listener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_3
    invoke-static {}, Lcom/kahuna/sdk/l;->m()Lcom/kahuna/sdk/p;

    move-result-object v0

    invoke-interface {v0, p0, p3}, Lcom/kahuna/sdk/p;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 185
    :cond_4
    :goto_1
    iget-object v2, v1, Lcom/kahuna/sdk/o;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v1, Lcom/kahuna/sdk/o;->b:Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/kahuna/sdk/o;->c:Landroid/os/Bundle;

    .line 188
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/kahuna/sdk/o;->d:J

    .line 189
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/kahuna/sdk/o;->e:Lorg/json/JSONObject;

    .line 190
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 181
    :cond_5
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_4

    .line 182
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v2, "Supressing in-app message due to expiration time"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static a(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    .line 84
    if-nez p0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    :try_start_0
    const-string/jumbo v0, "k_m"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string/jumbo v0, "k_t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x1c20

    add-long/2addr v4, v6

    invoke-virtual {p0, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 90
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 92
    invoke-static {v2}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string/jumbo v0, "k_m"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v0, "k_t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v0, "k_c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 98
    if-nez v6, :cond_2

    const-string/jumbo v0, "k_c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "In-App Message recieved, but was restricted due to non-matching user not logged into the app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string/jumbo v1, "Kahuna"

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

    .line 105
    :cond_2
    :try_start_1
    const-string/jumbo v0, "k_c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 108
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 109
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 111
    if-eqz v1, :cond_3

    .line 113
    instance-of v8, v1, Ljava/lang/Boolean;

    if-eqz v8, :cond_4

    .line 114
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 116
    :cond_4
    instance-of v8, v1, Ljava/lang/Integer;

    if-eqz v8, :cond_5

    .line 117
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 119
    :cond_5
    instance-of v8, v1, Ljava/lang/Long;

    if-eqz v8, :cond_6

    .line 120
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 122
    :cond_6
    instance-of v8, v1, Ljava/lang/Float;

    if-eqz v8, :cond_7

    .line 123
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 125
    :cond_7
    instance-of v8, v1, Ljava/lang/Double;

    if-eqz v8, :cond_8

    .line 126
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 129
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_9
    invoke-static {}, Lcom/kahuna/sdk/o;->b()Lcom/kahuna/sdk/o;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/kahuna/sdk/l;->m()Lcom/kahuna/sdk/p;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 138
    invoke-static {v2, v4, v5, v3, v6}, Lcom/kahuna/sdk/o;->a(Ljava/lang/String;JLandroid/os/Bundle;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 141
    :cond_a
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_b

    .line 142
    const-string/jumbo v1, "Kahuna"

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

    .line 144
    :cond_b
    iget-object v1, v0, Lcom/kahuna/sdk/o;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :try_start_2
    iput-object v2, v0, Lcom/kahuna/sdk/o;->b:Ljava/lang/String;

    .line 146
    iput-object v3, v0, Lcom/kahuna/sdk/o;->c:Landroid/os/Bundle;

    .line 147
    iput-wide v4, v0, Lcom/kahuna/sdk/o;->d:J

    .line 148
    iput-object v6, v0, Lcom/kahuna/sdk/o;->e:Lorg/json/JSONObject;

    .line 149
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

.method private static b()Lcom/kahuna/sdk/o;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/kahuna/sdk/o;->f:Lcom/kahuna/sdk/o;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/kahuna/sdk/o;

    invoke-direct {v0}, Lcom/kahuna/sdk/o;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/o;->f:Lcom/kahuna/sdk/o;

    .line 50
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/o;->f:Lcom/kahuna/sdk/o;

    return-object v0
.end method
