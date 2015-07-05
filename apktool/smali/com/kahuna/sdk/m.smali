.class final Lcom/kahuna/sdk/m;
.super Ljava/lang/Object;
.source "KahunaAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/location/i;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/location/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/kahuna/sdk/m;->a:Lcom/kahuna/sdk/location/i;

    iput-object p2, p0, Lcom/kahuna/sdk/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, -0x1

    .line 1179
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/h;->a()Lcom/kahuna/sdk/h;

    move-result-object v8

    .line 1180
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1181
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/kahuna/sdk/m;->a:Lcom/kahuna/sdk/location/i;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const-string/jumbo v0, "status"

    iget-object v1, p0, Lcom/kahuna/sdk/m;->b:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "beacon"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    iget-object v0, p0, Lcom/kahuna/sdk/m;->a:Lcom/kahuna/sdk/location/i;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/i;->c()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 1185
    const-string/jumbo v0, "major"

    iget-object v1, p0, Lcom/kahuna/sdk/m;->a:Lcom/kahuna/sdk/location/i;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/i;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/m;->a:Lcom/kahuna/sdk/location/i;

    invoke-virtual {v0}, Lcom/kahuna/sdk/location/i;->d()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1188
    const-string/jumbo v0, "minor"

    iget-object v1, p0, Lcom/kahuna/sdk/m;->a:Lcom/kahuna/sdk/location/i;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/i;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    :cond_1
    new-instance v0, Lcom/kahuna/sdk/Event;

    const-string/jumbo v1, "k_user_location"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 1191
    invoke-static {v8, v0}, Lcom/kahuna/sdk/h;->a(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    :goto_0
    return-void

    .line 1193
    :catch_0
    move-exception v0

    .line 1195
    const-string/jumbo v1, "KahunaAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaAnalytics.trackRegionMonitoringEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
