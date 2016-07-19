.class Lcom/kahuna/sdk/q$b;
.super Ljava/util/TimerTask;
.source "KahunaInternalDebugManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/q;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/kahuna/sdk/q;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/kahuna/sdk/q$b;->a:Lcom/kahuna/sdk/q;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 339
    iput-object p2, p0, Lcom/kahuna/sdk/q$b;->b:Ljava/lang/String;

    .line 340
    iput-object p3, p0, Lcom/kahuna/sdk/q$b;->c:Ljava/lang/String;

    .line 341
    iput-boolean p4, p0, Lcom/kahuna/sdk/q$b;->d:Z

    .line 342
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 347
    :try_start_0
    new-instance v1, Lcom/kahuna/sdk/RequestParams;

    invoke-direct {v1}, Lcom/kahuna/sdk/RequestParams;-><init>()V

    .line 349
    const-string/jumbo v0, "key"

    iget-object v2, p0, Lcom/kahuna/sdk/q$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "dev_id"

    iget-object v2, p0, Lcom/kahuna/sdk/q$b;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string/jumbo v2, "env"

    iget-boolean v0, p0, Lcom/kahuna/sdk/q$b;->d:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "s"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x15180

    add-long/2addr v2, v4

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "kah"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    const-string/jumbo v2, "monitoring_key"

    invoke-virtual {v1, v2, v0}, Lcom/kahuna/sdk/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 359
    const-string/jumbo v0, "Kahuna"

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

    .line 361
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/l;->t()Ljava/lang/String;

    move-result-object v0

    .line 362
    if-nez v0, :cond_1

    .line 363
    const-string/jumbo v0, "https://tap-nexus.appspot.com"

    .line 366
    :cond_1
    iget-object v2, p0, Lcom/kahuna/sdk/q$b;->a:Lcom/kahuna/sdk/q;

    invoke-static {v2}, Lcom/kahuna/sdk/q;->a(Lcom/kahuna/sdk/q;)Lcom/kahuna/sdk/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "monitor_device"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/kahuna/sdk/q$b$1;

    invoke-direct {v3, p0}, Lcom/kahuna/sdk/q$b$1;-><init>(Lcom/kahuna/sdk/q$b;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/kahuna/sdk/m;->a(Ljava/lang/String;Lcom/kahuna/sdk/RequestParams;Lcom/kahuna/sdk/n;)V

    .line 386
    :cond_2
    :goto_1
    return-void

    .line 351
    :cond_3
    const-string/jumbo v0, "p"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_2

    .line 384
    const-string/jumbo v1, "Kahuna"

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
