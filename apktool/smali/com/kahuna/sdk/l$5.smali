.class Lcom/kahuna/sdk/l$5;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/location/g;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/location/g;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/kahuna/sdk/l;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/location/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/kahuna/sdk/l$5;->c:Lcom/kahuna/sdk/l;

    iput-object p2, p0, Lcom/kahuna/sdk/l$5;->a:Lcom/kahuna/sdk/location/g;

    iput-object p3, p0, Lcom/kahuna/sdk/l$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, -0x1

    .line 1161
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1162
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/kahuna/sdk/l$5;->a:Lcom/kahuna/sdk/location/g;

    invoke-virtual {v2}, Lcom/kahuna/sdk/location/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    const-string/jumbo v1, "status"

    iget-object v2, p0, Lcom/kahuna/sdk/l$5;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "beacon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    iget-object v1, p0, Lcom/kahuna/sdk/l$5;->a:Lcom/kahuna/sdk/location/g;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/g;->c()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 1166
    const-string/jumbo v1, "major"

    iget-object v2, p0, Lcom/kahuna/sdk/l$5;->a:Lcom/kahuna/sdk/location/g;

    invoke-virtual {v2}, Lcom/kahuna/sdk/location/g;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    :cond_0
    iget-object v1, p0, Lcom/kahuna/sdk/l$5;->a:Lcom/kahuna/sdk/location/g;

    invoke-virtual {v1}, Lcom/kahuna/sdk/location/g;->d()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 1169
    const-string/jumbo v1, "minor"

    iget-object v2, p0, Lcom/kahuna/sdk/l$5;->a:Lcom/kahuna/sdk/location/g;

    invoke-virtual {v2}, Lcom/kahuna/sdk/location/g;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :cond_1
    new-instance v1, Lcom/kahuna/sdk/Event;

    const-string/jumbo v2, "k_user_location"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-direct {v1, v2, v4, v5}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;J)V

    .line 1172
    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/Event;->c(Ljava/util/Map;)V

    .line 1173
    iget-object v0, p0, Lcom/kahuna/sdk/l$5;->c:Lcom/kahuna/sdk/l;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v0

    .line 1177
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handled exception in KahunaCommon.trackRegionMonitoringEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
