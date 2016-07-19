.class Lcom/kahuna/sdk/l$9;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/l;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/l;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 384
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->c(Lcom/kahuna/sdk/l;)V

    .line 387
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/l;->v()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->g(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    .line 391
    invoke-static {}, Lcom/kahuna/sdk/q;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->h(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v2}, Lcom/kahuna/sdk/l;->i(Lcom/kahuna/sdk/l;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v3}, Lcom/kahuna/sdk/l;->j(Lcom/kahuna/sdk/l;)Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/kahuna/sdk/q;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/q;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Z)V

    .line 399
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->k(Lcom/kahuna/sdk/l;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->k(Lcom/kahuna/sdk/l;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 401
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Ljava/util/Timer;)Ljava/util/Timer;

    .line 402
    monitor-exit v1

    .line 458
    :goto_0
    return-void

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->l(Lcom/kahuna/sdk/l;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/kahuna/sdk/l;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 408
    invoke-static {}, Lcom/kahuna/sdk/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 409
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 410
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_3

    .line 411
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v2, "Device not registered yet, will now register with GCM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_3
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/kahuna/sdk/l;->c(Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/kahuna/sdk/l;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/kahuna/sdk/f;->a(Ljava/lang/String;)V

    .line 422
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    new-instance v2, Lcom/kahuna/sdk/Event;

    const-string/jumbo v3, "Start"

    invoke-direct {v2, v3}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    :try_start_1
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 427
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 428
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 430
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 431
    const-string/jumbo v4, "kahuna_tz"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string/jumbo v2, "kahuna_lang"

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0, v3}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :cond_5
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->m(Lcom/kahuna/sdk/l;)V

    .line 455
    :cond_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    invoke-static {}, Lcom/kahuna/sdk/o;->a()V

    goto/16 :goto_0

    .line 416
    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/kahuna/sdk/l$9;->a:Lcom/kahuna/sdk/l;

    invoke-virtual {v2, v0}, Lcom/kahuna/sdk/l;->c(Ljava/lang/String;)V

    .line 417
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_4

    .line 418
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v2, "Device already registered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    :try_start_4
    sget-boolean v2, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v2, :cond_5

    .line 437
    const-string/jumbo v2, "Kahuna"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception occured trying to retrieve app language or timezone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method
