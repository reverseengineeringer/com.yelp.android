.class Lcom/kahuna/sdk/ad;
.super Ljava/util/TimerTask;
.source "KahunaInternalDebugManager.java"


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/aa;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/kahuna/sdk/aa;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/kahuna/sdk/ad;->a:Lcom/kahuna/sdk/aa;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/kahuna/sdk/ad;->b:Ljava/lang/String;

    .line 339
    iput-object p3, p0, Lcom/kahuna/sdk/ad;->c:Ljava/lang/String;

    .line 340
    iput-boolean p4, p0, Lcom/kahuna/sdk/ad;->d:Z

    .line 341
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 346
    :try_start_0
    new-instance v1, Lcom/yelp/android/ao/i;

    invoke-direct {v1}, Lcom/yelp/android/ao/i;-><init>()V

    .line 347
    const-string/jumbo v0, "key"

    iget-object v2, p0, Lcom/kahuna/sdk/ad;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "dev_id"

    iget-object v2, p0, Lcom/kahuna/sdk/ad;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string/jumbo v2, "env"

    iget-boolean v0, p0, Lcom/kahuna/sdk/ad;->d:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "s"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    add-long/2addr v2, v4

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "kah"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    const-string/jumbo v2, "monitoring_key"

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ao/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_0

    .line 357
    const-string/jumbo v0, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending monitor request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/ad;->a:Lcom/kahuna/sdk/aa;

    invoke-static {v0}, Lcom/kahuna/sdk/aa;->a(Lcom/kahuna/sdk/aa;)Lcom/yelp/android/ao/a;

    move-result-object v0

    const-string/jumbo v2, "https://tap-nexus.appspot.com/monitor_device"

    new-instance v3, Lcom/kahuna/sdk/ae;

    invoke-direct {v3, p0}, Lcom/kahuna/sdk/ae;-><init>(Lcom/kahuna/sdk/ad;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/yelp/android/ao/a;->a(Ljava/lang/String;Lcom/yelp/android/ao/i;Lcom/yelp/android/ao/f;)V

    .line 379
    :cond_1
    :goto_1
    return-void

    .line 349
    :cond_2
    const-string/jumbo v0, "p"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_1

    .line 377
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caught exception in Send Monitor Request Task handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
