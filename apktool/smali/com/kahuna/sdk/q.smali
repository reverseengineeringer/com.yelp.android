.class public Lcom/kahuna/sdk/q;
.super Ljava/lang/Object;
.source "KahunaInternalDebugManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/q$1;,
        Lcom/kahuna/sdk/q$b;,
        Lcom/kahuna/sdk/q$a;
    }
.end annotation


# static fields
.field private static a:Lcom/kahuna/sdk/q;


# instance fields
.field private b:Lcom/kahuna/sdk/q$a;

.field private c:J

.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Lcom/kahuna/sdk/m;

.field private g:Ljava/util/Timer;

.field private h:Z

.field private i:J


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/kahuna/sdk/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kahuna/sdk/q$a;-><init>(Lcom/kahuna/sdk/q;Lcom/kahuna/sdk/q$1;)V

    iput-object v0, p0, Lcom/kahuna/sdk/q;->b:Lcom/kahuna/sdk/q$a;

    .line 83
    iput-wide v4, p0, Lcom/kahuna/sdk/q;->c:J

    .line 84
    iput-boolean v2, p0, Lcom/kahuna/sdk/q;->d:Z

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/q;->e:Ljava/lang/Object;

    .line 89
    iput-boolean v2, p0, Lcom/kahuna/sdk/q;->h:Z

    .line 90
    iput-wide v4, p0, Lcom/kahuna/sdk/q;->i:J

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/q;)Lcom/kahuna/sdk/m;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kahuna/sdk/q;->f:Lcom/kahuna/sdk/m;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/q;->c()Lcom/kahuna/sdk/q;

    move-result-object v0

    .line 114
    iget-boolean v1, v0, Lcom/kahuna/sdk/q;->d:Z

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    const-string/jumbo v2, "com.kahuna.sdk.broadcast.FIND_MY_DEVICE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v2, "com.kahuna.sdk.broadcast.SDK_COMMAND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v2, v0, Lcom/kahuna/sdk/q;->b:Lcom/kahuna/sdk/q$a;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kahuna/sdk/q;->d:Z

    .line 123
    invoke-static {p0}, Lcom/kahuna/sdk/s;->m(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 124
    const-string/jumbo v2, "debug_logging_override"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/kahuna/sdk/q;->h:Z

    .line 125
    const-string/jumbo v2, "debug_logging_expiration_time"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kahuna/sdk/q;->i:J

    .line 126
    invoke-static {p0}, Lcom/kahuna/sdk/q;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 130
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in FindMyDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/kahuna/sdk/q;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-static {p1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    :try_start_0
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 300
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 301
    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 302
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 300
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    :cond_3
    const-string/jumbo v4, "dbg"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    invoke-static {}, Lcom/kahuna/sdk/q;->c()Lcom/kahuna/sdk/q;

    move-result-object v4

    .line 308
    const-string/jumbo v5, "t"

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 309
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/kahuna/sdk/q;->h:Z

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v8, 0x15180

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/kahuna/sdk/q;->i:J

    .line 316
    :cond_4
    :goto_3
    iget-boolean v3, v4, Lcom/kahuna/sdk/q;->h:Z

    invoke-static {v3}, Lcom/kahuna/sdk/l;->a(Z)V

    .line 317
    invoke-direct {v4, p0}, Lcom/kahuna/sdk/q;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 321
    :catch_0
    move-exception v0

    .line 322
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 323
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception processing injected SDK command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 312
    :cond_5
    :try_start_1
    const-string/jumbo v5, "f"

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 313
    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/kahuna/sdk/q;->h:Z

    .line 314
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/kahuna/sdk/q;->i:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 147
    invoke-static {}, Lcom/kahuna/sdk/q;->c()Lcom/kahuna/sdk/q;

    move-result-object v0

    .line 148
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/kahuna/sdk/q;->c:J

    .line 151
    :try_start_0
    iget-object v1, v0, Lcom/kahuna/sdk/q;->f:Lcom/kahuna/sdk/m;

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Lcom/kahuna/sdk/m;

    invoke-direct {v1}, Lcom/kahuna/sdk/m;-><init>()V

    iput-object v1, v0, Lcom/kahuna/sdk/q;->f:Lcom/kahuna/sdk/m;

    .line 153
    iget-object v1, v0, Lcom/kahuna/sdk/q;->f:Lcom/kahuna/sdk/m;

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Lcom/kahuna/sdk/m;->a(I)V

    .line 156
    :cond_0
    iget-object v1, v0, Lcom/kahuna/sdk/q;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    iget-object v2, v0, Lcom/kahuna/sdk/q;->g:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, v0, Lcom/kahuna/sdk/q;->g:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 159
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/kahuna/sdk/q;->g:Ljava/util/Timer;

    .line 162
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/kahuna/sdk/q;->g:Ljava/util/Timer;

    .line 163
    iget-object v2, v0, Lcom/kahuna/sdk/q;->g:Ljava/util/Timer;

    new-instance v3, Lcom/kahuna/sdk/q$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0, p0, p1, p2}, Lcom/kahuna/sdk/q$b;-><init>(Lcom/kahuna/sdk/q;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 164
    monitor-exit v1

    .line 170
    :cond_2
    :goto_0
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_2

    .line 168
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception attempting to schedule monitor request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static a()Z
    .locals 6

    .prologue
    .line 135
    invoke-static {}, Lcom/kahuna/sdk/q;->c()Lcom/kahuna/sdk/q;

    move-result-object v0

    .line 136
    iget-wide v2, v0, Lcom/kahuna/sdk/q;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 138
    iget-wide v0, v0, Lcom/kahuna/sdk/q;->c:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b()V
    .locals 6

    .prologue
    .line 282
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/q;->c()Lcom/kahuna/sdk/q;

    move-result-object v0

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/kahuna/sdk/q;->c:J

    .line 285
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 286
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting expire time of findMyDevice broadcast to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/kahuna/sdk/q;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 290
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in FindMyDevice Broadcast Receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x1

    .line 228
    const-string/jumbo v0, "secret_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_2

    .line 230
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kahuna/sdk/l;->k()Ljava/lang/String;

    move-result-object v1

    .line 231
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SHA-1"

    invoke-static {v1, v2, v8}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 242
    const-string/jumbo v2, "com.kahuna.sdk.broadcast.FIND_MY_DEVICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 243
    invoke-static {}, Lcom/kahuna/sdk/q;->b()V

    .line 270
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 271
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received Companion App command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_4
    const-string/jumbo v2, "com.kahuna.sdk.broadcast.SDK_COMMAND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    const-string/jumbo v1, "com.kahuna.sdk.internal_hash"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v1}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    div-long/2addr v2, v4

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "com.kahuna.sdk.internal_broadcasts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SHA-1"

    invoke-static {v4, v5, v8}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.kahuna.sdk.internal_broadcasts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SHA-1"

    invoke-static {v2, v3, v8}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    :cond_5
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kahuna/sdk/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected static b(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 173
    invoke-static {}, Lcom/kahuna/sdk/q;->c()Lcom/kahuna/sdk/q;

    move-result-object v0

    .line 174
    iget-boolean v1, v0, Lcom/kahuna/sdk/q;->h:Z

    if-eqz v1, :cond_0

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 176
    iget-wide v4, v0, Lcom/kahuna/sdk/q;->i:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kahuna/sdk/q;->h:Z

    .line 179
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/kahuna/sdk/q;->i:J

    .line 180
    invoke-direct {v0, p0}, Lcom/kahuna/sdk/q;->c(Landroid/content/Context;)V

    .line 184
    :cond_0
    iget-boolean v0, v0, Lcom/kahuna/sdk/q;->h:Z

    return v0
.end method

.method private static c()Lcom/kahuna/sdk/q;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/kahuna/sdk/q;->a:Lcom/kahuna/sdk/q;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/kahuna/sdk/q;

    invoke-direct {v0}, Lcom/kahuna/sdk/q;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/q;->a:Lcom/kahuna/sdk/q;

    .line 101
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/q;->a:Lcom/kahuna/sdk/q;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 189
    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/s;->m(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "debug_logging_override"

    iget-boolean v2, p0, Lcom/kahuna/sdk/q;->h:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 191
    const-string/jumbo v1, "debug_logging_expiration_time"

    iget-wide v2, p0, Lcom/kahuna/sdk/q;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 192
    invoke-static {v0, p1}, Lcom/kahuna/sdk/s;->a(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_0

    .line 196
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception processing request to enable debug logs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
