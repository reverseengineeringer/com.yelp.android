.class public Lcom/kahuna/sdk/KahunaPushService;
.super Lcom/kahuna/sdk/GCMBaseIntentService;
.source "KahunaPushService.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/kahuna/sdk/l;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/kahuna/sdk/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 58
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "onMessage recieved a push event."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/j;->i()Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/kahuna/sdk/h;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "Received Kahuna push, but Push is not enabled. Aborting the notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    invoke-static {p1, v0}, Lcom/kahuna/sdk/y;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 72
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 73
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError recieved errorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    return-void
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 38
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistered recieved Push Token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    invoke-static {p2}, Lcom/kahuna/sdk/f;->b(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "Kahuna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnregistered recieved to remove Push Token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    invoke-static {}, Lcom/kahuna/sdk/f;->d()V

    .line 53
    return-void
.end method
