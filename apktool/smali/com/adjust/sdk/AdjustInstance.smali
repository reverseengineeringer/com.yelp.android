.class public Lcom/adjust/sdk/AdjustInstance;
.super Ljava/lang/Object;
.source "AdjustInstance.java"


# instance fields
.field private activityHandler:Lcom/adjust/sdk/ActivityHandler;

.field private referrer:Ljava/lang/String;

.field private referrerClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkActivityHandler()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-nez v1, :cond_0

    .line 80
    invoke-static {}, Lcom/adjust/sdk/AdjustInstance;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v1

    const-string/jumbo v2, "Adjust not initialized correctly"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appWillOpenUrl(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->readOpenUrl(Landroid/net/Uri;J)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/adjust/sdk/AdjustInstance;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const-string/jumbo v1, "Adjust already initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrer:Ljava/lang/String;

    iput-object v0, p1, Lcom/adjust/sdk/AdjustConfig;->referrer:Ljava/lang/String;

    .line 25
    iget-wide v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrerClickTime:J

    iput-wide v0, p1, Lcom/adjust/sdk/AdjustConfig;->referrerClickTime:J

    .line 27
    invoke-static {p1}, Lcom/adjust/sdk/ActivityHandler;->getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->onResume()V

    goto :goto_0
.end method

.method public sendReferrer(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    if-nez v2, :cond_0

    .line 66
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance;->referrer:Ljava/lang/String;

    .line 67
    iput-wide v0, p0, Lcom/adjust/sdk/AdjustInstance;->referrerClickTime:J

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v2, p1, v0, v1}, Lcom/adjust/sdk/ActivityHandler;->sendReferrer(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setOfflineMode(Z)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->setOfflineMode(Z)V

    goto :goto_0
.end method

.method public trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/adjust/sdk/AdjustInstance;->checkActivityHandler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance;->activityHandler:Lcom/adjust/sdk/ActivityHandler;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityHandler;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    goto :goto_0
.end method
