.class final Lcom/kahuna/sdk/o;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1245
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v8

    .line 1246
    invoke-static {v8}, Lcom/kahuna/sdk/h;->b(Lcom/kahuna/sdk/h;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1247
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "You need to call onAppCreate() before any other call to the SDK. Ignoring disablePush request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    invoke-static {v8}, Lcom/kahuna/sdk/h;->m(Lcom/kahuna/sdk/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Z)Z

    .line 1254
    invoke-static {v8}, Lcom/kahuna/sdk/h;->m(Lcom/kahuna/sdk/h;)Z

    move-result v0

    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v1

    invoke-static {v1}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kahuna/sdk/ag;->a(ZLandroid/content/Context;)V

    .line 1256
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "k_push_disabled"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1257
    invoke-static {v8, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/Event;)V

    goto :goto_0
.end method
