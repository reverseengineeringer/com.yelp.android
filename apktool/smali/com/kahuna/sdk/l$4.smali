.class Lcom/kahuna/sdk/l$4;
.super Ljava/lang/Object;
.source "KahunaCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kahuna/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/kahuna/sdk/l;


# direct methods
.method constructor <init>(Lcom/kahuna/sdk/l;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/kahuna/sdk/l$4;->c:Lcom/kahuna/sdk/l;

    iput-object p2, p0, Lcom/kahuna/sdk/l$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/kahuna/sdk/l$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1133
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1134
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/kahuna/sdk/l$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    const-string/jumbo v1, "status"

    iget-object v2, p0, Lcom/kahuna/sdk/l$4;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "circle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    new-instance v1, Lcom/kahuna/sdk/Event;

    const-string/jumbo v2, "k_user_location"

    invoke-direct {v1, v2}, Lcom/kahuna/sdk/Event;-><init>(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {v1, v0}, Lcom/kahuna/sdk/Event;->c(Ljava/util/Map;)V

    .line 1139
    iget-object v0, p0, Lcom/kahuna/sdk/l$4;->c:Lcom/kahuna/sdk/l;

    invoke-static {v0, v1}, Lcom/kahuna/sdk/l;->a(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :goto_0
    return-void

    .line 1141
    :catch_0
    move-exception v0

    .line 1143
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
