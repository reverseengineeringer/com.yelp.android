.class public Lcom/kahuna/sdk/aa;
.super Ljava/lang/Object;
.source "KahunaInternalDebugManager.java"


# static fields
.field private static a:Lcom/kahuna/sdk/aa;


# instance fields
.field private b:Lcom/kahuna/sdk/ac;

.field private c:J

.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Lcom/yelp/android/ao/a;

.field private g:Ljava/util/Timer;

.field private h:Z

.field private i:J


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/kahuna/sdk/ac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kahuna/sdk/ac;-><init>(Lcom/kahuna/sdk/aa;Lcom/kahuna/sdk/ab;)V

    iput-object v0, p0, Lcom/kahuna/sdk/aa;->b:Lcom/kahuna/sdk/ac;

    .line 86
    iput-wide v4, p0, Lcom/kahuna/sdk/aa;->c:J

    .line 87
    iput-boolean v2, p0, Lcom/kahuna/sdk/aa;->d:Z

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/aa;->e:Ljava/lang/Object;

    .line 92
    iput-boolean v2, p0, Lcom/kahuna/sdk/aa;->h:Z

    .line 93
    iput-wide v4, p0, Lcom/kahuna/sdk/aa;->i:J

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/aa;)Lcom/yelp/android/ao/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kahuna/sdk/aa;->f:Lcom/yelp/android/ao/a;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 116
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/aa;->c()Lcom/kahuna/sdk/aa;

    move-result-object v0

    .line 117
    iget-boolean v1, v0, Lcom/kahuna/sdk/aa;->d:Z

    if-eqz v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    const-string/jumbo v2, "com.kahuna.sdk.broadcast.FIND_MY_DEVICE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v2, "com.kahuna.sdk.broadcast.SDK_COMMAND"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v2, v0, Lcom/kahuna/sdk/aa;->b:Lcom/kahuna/sdk/ac;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kahuna/sdk/aa;->d:Z

    .line 126
    invoke-static {p0}, Lcom/kahuna/sdk/ag;->l(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 127
    const-string/jumbo v2, "debug_logging_override"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/kahuna/sdk/aa;->h:Z

    .line 128
    const-string/jumbo v2, "debug_logging_expiration_time"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/kahuna/sdk/aa;->i:J

    .line 129
    invoke-static {p0}, Lcom/kahuna/sdk/aa;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/kahuna/sdk/h;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v1, "KahunaAnalytics"

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
    .line 41
    invoke-static {p0, p1}, Lcom/kahuna/sdk/aa;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-static {p1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    :try_start_0
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 299
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 300
    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 301
    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 299
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_3
    const-string/jumbo v4, "dbg"

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    invoke-static {}, Lcom/kahuna/sdk/aa;->c()Lcom/kahuna/sdk/aa;

    move-result-object v4

    .line 307
    const-string/jumbo v5, "t"

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 308
    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/kahuna/sdk/aa;->h:Z

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v8, 0x15180

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/kahuna/sdk/aa;->i:J

    .line 315
    :cond_4
    :goto_3
    iget-boolean v3, v4, Lcom/kahuna/sdk/aa;->h:Z

    invoke-static {v3}, Lcom/kahuna/sdk/h;->a(Z)V

    .line 316
    invoke-direct {v4, p0}, Lcom/kahuna/sdk/aa;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 320
    :catch_0
    move-exception v0

    .line 321
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 322
    const-string/jumbo v1, "KahunaAnalytics"

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

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 311
    :cond_5
    :try_start_1
    const-string/jumbo v5, "f"

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    const/4 v3, 0x0

    iput-boolean v3, v4, Lcom/kahuna/sdk/aa;->h:Z

    .line 313
    const-wide/16 v6, -0x1

    iput-wide v6, v4, Lcom/kahuna/sdk/aa;->i:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 150
    invoke-static {}, Lcom/kahuna/sdk/aa;->c()Lcom/kahuna/sdk/aa;

    move-result-object v0

    .line 151
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/kahuna/sdk/aa;->c:J

    .line 154
    :try_start_0
    iget-object v1, v0, Lcom/kahuna/sdk/aa;->f:Lcom/yelp/android/ao/a;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lcom/yelp/android/ao/a;

    invoke-direct {v1}, Lcom/yelp/android/ao/a;-><init>()V

    iput-object v1, v0, Lcom/kahuna/sdk/aa;->f:Lcom/yelp/android/ao/a;

    .line 156
    iget-object v1, v0, Lcom/kahuna/sdk/aa;->f:Lcom/yelp/android/ao/a;

    const/16 v2, 0x3a98

    invoke-virtual {v1, v2}, Lcom/yelp/android/ao/a;->a(I)V

    .line 159
    :cond_0
    iget-object v1, v0, Lcom/kahuna/sdk/aa;->e:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :try_start_1
    iget-object v2, v0, Lcom/kahuna/sdk/aa;->g:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, v0, Lcom/kahuna/sdk/aa;->g:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 162
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/kahuna/sdk/aa;->g:Ljava/util/Timer;

    .line 165
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, v0, Lcom/kahuna/sdk/aa;->g:Ljava/util/Timer;

    .line 166
    iget-object v2, v0, Lcom/kahuna/sdk/aa;->g:Ljava/util/Timer;

    new-instance v3, Lcom/kahuna/sdk/ad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0, p0, p1, p2}, Lcom/kahuna/sdk/ad;-><init>(Lcom/kahuna/sdk/aa;Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 167
    monitor-exit v1

    .line 173
    :cond_2
    :goto_0
    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

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
    .line 138
    invoke-static {}, Lcom/kahuna/sdk/aa;->c()Lcom/kahuna/sdk/aa;

    move-result-object v0

    .line 139
    iget-wide v2, v0, Lcom/kahuna/sdk/aa;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 141
    iget-wide v0, v0, Lcom/kahuna/sdk/aa;->c:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b()V
    .locals 6

    .prologue
    .line 281
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/aa;->c()Lcom/kahuna/sdk/aa;

    move-result-object v0

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/kahuna/sdk/aa;->c:J

    .line 284
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 285
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting expire time of findMyDevice broadcast to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/kahuna/sdk/aa;->c:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 289
    const-string/jumbo v1, "KahunaAnalytics"

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

    .line 227
    const-string/jumbo v0, "secret_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_2

    .line 229
    invoke-static {}, Lcom/kahuna/sdk/h;->b()Ljava/lang/String;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SHA-1"

    invoke-static {v1, v2, v8}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 241
    const-string/jumbo v2, "com.kahuna.sdk.broadcast.FIND_MY_DEVICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    invoke-static {}, Lcom/kahuna/sdk/aa;->b()V

    .line 269
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 270
    const-string/jumbo v0, "KahunaAnalytics"

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

    .line 244
    :cond_4
    const-string/jumbo v2, "com.kahuna.sdk.broadcast.SDK_COMMAND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    const-string/jumbo v1, "com.kahuna.sdk.internal_hash"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {v1}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    div-long/2addr v2, v4

    .line 253
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

    invoke-static {v4, v5, v8}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 256
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

    invoke-static {v2, v3, v8}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 258
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    :cond_5
    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/kahuna/sdk/aa;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected static b(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 176
    invoke-static {}, Lcom/kahuna/sdk/aa;->c()Lcom/kahuna/sdk/aa;

    move-result-object v0

    .line 177
    iget-boolean v1, v0, Lcom/kahuna/sdk/aa;->h:Z

    if-eqz v1, :cond_0

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 179
    iget-wide v4, v0, Lcom/kahuna/sdk/aa;->i:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 181
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kahuna/sdk/aa;->h:Z

    .line 182
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/kahuna/sdk/aa;->i:J

    .line 183
    invoke-direct {v0, p0}, Lcom/kahuna/sdk/aa;->c(Landroid/content/Context;)V

    .line 187
    :cond_0
    iget-boolean v0, v0, Lcom/kahuna/sdk/aa;->h:Z

    return v0
.end method

.method private static c()Lcom/kahuna/sdk/aa;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/kahuna/sdk/aa;->a:Lcom/kahuna/sdk/aa;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/kahuna/sdk/aa;

    invoke-direct {v0}, Lcom/kahuna/sdk/aa;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/aa;->a:Lcom/kahuna/sdk/aa;

    .line 104
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/aa;->a:Lcom/kahuna/sdk/aa;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 192
    :try_start_0
    invoke-static {p1}, Lcom/kahuna/sdk/ag;->l(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "debug_logging_override"

    iget-boolean v2, p0, Lcom/kahuna/sdk/aa;->h:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 194
    const-string/jumbo v1, "debug_logging_expiration_time"

    iget-wide v2, p0, Lcom/kahuna/sdk/aa;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 195
    invoke-static {v0, p1}, Lcom/kahuna/sdk/ag;->a(Lorg/json/JSONObject;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_0

    .line 199
    const-string/jumbo v1, "KahunaAnalytics"

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
