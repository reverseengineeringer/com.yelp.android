.class final Lcom/kahuna/sdk/p;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 379
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v8

    .line 380
    invoke-static {v8}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-static {v8}, Lcom/kahuna/sdk/h;->c(Lcom/kahuna/sdk/h;)V

    .line 383
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/h;->q()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 384
    :try_start_0
    invoke-static {v8}, Lcom/kahuna/sdk/h;->h(Lcom/kahuna/sdk/h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 387
    invoke-static {}, Lcom/kahuna/sdk/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    invoke-static {v8}, Lcom/kahuna/sdk/h;->i(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Lcom/kahuna/sdk/h;->j(Lcom/kahuna/sdk/h;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lcom/kahuna/sdk/h;->k(Lcom/kahuna/sdk/h;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kahuna/sdk/aa;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 392
    :cond_1
    invoke-static {v8}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aa;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/kahuna/sdk/h;->a(Z)V

    .line 395
    invoke-static {v8}, Lcom/kahuna/sdk/h;->l(Lcom/kahuna/sdk/h;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 396
    invoke-static {v8}, Lcom/kahuna/sdk/h;->l(Lcom/kahuna/sdk/h;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 397
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Ljava/util/Timer;)Ljava/util/Timer;

    .line 398
    monitor-exit v9

    .line 463
    :goto_0
    return-void

    .line 403
    :cond_2
    invoke-static {v8}, Lcom/kahuna/sdk/h;->m(Lcom/kahuna/sdk/h;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/kahuna/sdk/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/kahuna/sdk/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 404
    invoke-static {}, Lcom/kahuna/sdk/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 405
    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 406
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_3

    .line 407
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Device not registered yet, will now register with GCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_3
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/kahuna/sdk/h;->c(Ljava/lang/String;)V

    .line 410
    sget-object v0, Lcom/kahuna/sdk/h;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/kahuna/sdk/f;->a(Ljava/lang/String;)V

    .line 419
    :cond_4
    :goto_1
    invoke-static {v8}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/ag;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 420
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "k_user_credentials"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v8}, Lcom/kahuna/sdk/h;->n(Lcom/kahuna/sdk/h;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 421
    invoke-static {v8, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/Event;)V

    .line 424
    :cond_5
    const/4 v0, 0x0

    invoke-static {v8}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/ag;->b(ZLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :try_start_1
    invoke-static {v8}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 429
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 430
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 432
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 433
    const-string/jumbo v3, "kahuna_tz"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string/jumbo v1, "kahuna_lang"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-static {v2}, Lcom/kahuna/sdk/h;->b(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 442
    :cond_6
    :goto_2
    :try_start_2
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "Start"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 443
    invoke-static {v8, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/Event;)V

    .line 446
    invoke-static {v8}, Lcom/kahuna/sdk/h;->o(Lcom/kahuna/sdk/h;)V

    .line 460
    :cond_7
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 462
    invoke-static {}, Lcom/kahuna/sdk/y;->a()V

    goto/16 :goto_0

    .line 412
    :cond_8
    :try_start_3
    invoke-static {v0}, Lcom/kahuna/sdk/h;->c(Ljava/lang/String;)V

    .line 413
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_4

    .line 414
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "Device already registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    :try_start_4
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_6

    .line 439
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception occured trying to retrieve app language or timezone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
