.class Lcom/kahuna/sdk/l$8;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 238
    iput-object p1, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 243
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/u;->a(Lcom/kahuna/sdk/l;Landroid/content/Context;)V

    .line 245
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->b(Lcom/kahuna/sdk/l;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->c(Lcom/kahuna/sdk/l;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/q;->a(Landroid/content/Context;)V

    .line 249
    invoke-static {}, Lcom/kahuna/sdk/f;->a()V

    .line 250
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/y;->a(Landroid/content/Context;)V

    .line 253
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/location/i;->a(Lcom/kahuna/sdk/l;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kahuna/sdk/s;->a(Landroid/content/Context;Z)Lcom/kahuna/sdk/a;

    move-result-object v1

    .line 265
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->d(Lcom/kahuna/sdk/l;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 266
    :try_start_1
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-virtual {v1}, Lcom/kahuna/sdk/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Ljava/util/List;)Ljava/util/List;

    .line 270
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v3}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/Event;

    .line 271
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->k()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 272
    iget-object v3, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v3}, Lcom/kahuna/sdk/l;->f(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kahuna/sdk/Event;->k()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 277
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->e(Lcom/kahuna/sdk/l;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/c;->a(Ljava/util/List;)V

    .line 282
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-virtual {v1}, Lcom/kahuna/sdk/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-virtual {v1}, Lcom/kahuna/sdk/a;->c()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 284
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    sget-boolean v1, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v1, :cond_1

    .line 257
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "Caught error when attepmting to initialize location services. If you are NOT using location services please ignore this error: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string/jumbo v1, "Kahuna"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 270
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 275
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v0}, Lcom/kahuna/sdk/l;->f(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-object v3, p0, Lcom/kahuna/sdk/l$8;->a:Lcom/kahuna/sdk/l;

    invoke-static {v3}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kahuna/sdk/s;->n(Landroid/content/Context;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_2

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
