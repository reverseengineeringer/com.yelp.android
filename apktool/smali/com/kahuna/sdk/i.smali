.class final Lcom/kahuna/sdk/i;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/kahuna/sdk/i;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 224
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    .line 227
    invoke-static {v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/ai;->a(Landroid/content/Context;)V

    .line 229
    invoke-static {v1}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-static {v1}, Lcom/kahuna/sdk/h;->c(Lcom/kahuna/sdk/h;)V

    .line 232
    :cond_0
    invoke-static {v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/aa;->a(Landroid/content/Context;)V

    .line 233
    iget-object v0, p0, Lcom/kahuna/sdk/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/f;->a(Landroid/content/Context;)V

    .line 234
    iget-object v0, p0, Lcom/kahuna/sdk/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/ak;->a(Landroid/content/Context;)V

    .line 237
    :try_start_0
    invoke-static {v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kahuna/sdk/location/m;->a(Lcom/kahuna/sdk/h;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kahuna/sdk/ag;->a(Landroid/content/Context;Z)Lcom/kahuna/sdk/a;

    move-result-object v0

    .line 255
    invoke-static {v1}, Lcom/kahuna/sdk/h;->d(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 256
    :try_start_1
    invoke-virtual {v0}, Lcom/kahuna/sdk/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Ljava/util/List;)Ljava/util/List;

    .line 257
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    invoke-static {v1}, Lcom/kahuna/sdk/h;->e(Lcom/kahuna/sdk/h;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/kahuna/sdk/b;->a(Ljava/util/List;)V

    .line 260
    invoke-static {v1}, Lcom/kahuna/sdk/h;->f(Lcom/kahuna/sdk/h;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 261
    :try_start_2
    invoke-static {v1}, Lcom/kahuna/sdk/h;->g(Lcom/kahuna/sdk/h;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/kahuna/sdk/ag;->g(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 262
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 265
    invoke-virtual {v0}, Lcom/kahuna/sdk/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    invoke-virtual {v0}, Lcom/kahuna/sdk/a;->c()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 267
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    sget-boolean v2, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v2, :cond_1

    .line 247
    const-string/jumbo v2, "KahunaAnalytics"

    const-string/jumbo v3, "Caught error when attepmting to initialize location services. If you are NOT using location services please ignore this error: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string/jumbo v2, "KahunaAnalytics"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 262
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
