.class public final Lcom/ooyala/android/WidevineStuckMonitor;
.super Ljava/lang/Object;
.source "WidevineStuckMonitor.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;,
        Lcom/ooyala/android/WidevineStuckMonitor$Listener;
    }
.end annotation


# static fields
.field private static final END_TIME_WINDOW_MILLISECONDS:I = 0x3a98

.field private static final MAX_FREEZE_MILLISECONDS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "WidevineStuckMonitor"


# instance fields
.field private final drmPlayer:Lcom/ooyala/android/Player;

.field private lastRecord:Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;

.field private final listener:Lcom/ooyala/android/WidevineStuckMonitor$Listener;

.field private final monitorAfterMsec:I

.field private final onFrozenSent:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ooyalaPlayer:Lcom/ooyala/android/OoyalaPlayer;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/Player;Lcom/ooyala/android/WidevineStuckMonitor$Listener;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ooyala/android/WidevineStuckMonitor;->ooyalaPlayer:Lcom/ooyala/android/OoyalaPlayer;

    .line 39
    iput-object p2, p0, Lcom/ooyala/android/WidevineStuckMonitor;->drmPlayer:Lcom/ooyala/android/Player;

    .line 40
    iput-object p3, p0, Lcom/ooyala/android/WidevineStuckMonitor;->listener:Lcom/ooyala/android/WidevineStuckMonitor$Listener;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->onFrozenSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ooyala/android/WidevineStuckMonitor;->calculateMonitorAfterMsec(Lcom/ooyala/android/Video;)Ljava/lang/Integer;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/ooyala/android/WidevineStuckMonitor;->ooyalaPlayer:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1, p0}, Lcom/ooyala/android/OoyalaPlayer;->addObserver(Ljava/util/Observer;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->monitorAfterMsec:I

    .line 49
    const-string/jumbo v0, "WidevineStuckMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Constructor(): enabled, monitorAfterMsec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ooyala/android/WidevineStuckMonitor;->monitorAfterMsec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    const v0, 0x7fffffff

    iput v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->monitorAfterMsec:I

    .line 53
    const-string/jumbo v0, "WidevineStuckMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Constructor(): disabled, monitorAfterMsec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ooyala/android/WidevineStuckMonitor;->monitorAfterMsec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private calculateMonitorAfterMsec(Lcom/ooyala/android/Video;)Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/ooyala/android/Video;->getDuration()I

    move-result v1

    .line 71
    const/16 v2, 0x3a98

    if-le v1, v2, :cond_0

    .line 72
    const/4 v0, 0x0

    add-int/lit16 v1, v1, -0x3a98

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    :cond_0
    const-string/jumbo v1, "WidevineStuckMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calculaeMonitorAfterMsec(): duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ooyala/android/Video;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", oi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object v0
.end method

.method private checkFrozen()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->lastRecord:Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 111
    iget-object v2, p0, Lcom/ooyala/android/WidevineStuckMonitor;->lastRecord:Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;

    iget-wide v2, v2, Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;->wallMsec:J

    sub-long/2addr v0, v2

    .line 112
    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 113
    const-string/jumbo v0, "WidevineStuckMonitor"

    const-string/jumbo v1, "doFreezeCheck(): looks frozen to me!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0}, Lcom/ooyala/android/WidevineStuckMonitor;->sendOnFrozen()V

    .line 117
    :cond_0
    return-void
.end method

.method private checkInWindow(I)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->lastRecord:Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->lastRecord:Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;

    iget v0, v0, Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;->videoMsec:I

    if-eq p1, v0, :cond_1

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/ooyala/android/WidevineStuckMonitor;->updateLastRecord(I)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/WidevineStuckMonitor;->checkFrozen()V

    goto :goto_0
.end method

.method private checkWhilePlaying()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->drmPlayer:Lcom/ooyala/android/Player;

    invoke-virtual {v0}, Lcom/ooyala/android/Player;->currentTime()I

    move-result v0

    .line 88
    iget v1, p0, Lcom/ooyala/android/WidevineStuckMonitor;->monitorAfterMsec:I

    if-lt v0, v1, :cond_0

    .line 89
    invoke-direct {p0, v0}, Lcom/ooyala/android/WidevineStuckMonitor;->checkInWindow(I)V

    .line 91
    :cond_0
    return-void
.end method

.method private sendOnFrozen()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->onFrozenSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "WidevineStuckMonitor"

    const-string/jumbo v1, "sendOnFrozen(): sending"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->ooyalaPlayer:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/OoyalaPlayer;->deleteObserver(Ljava/util/Observer;)V

    .line 123
    iget-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->listener:Lcom/ooyala/android/WidevineStuckMonitor$Listener;

    invoke-interface {v0}, Lcom/ooyala/android/WidevineStuckMonitor$Listener;->onFrozen()V

    .line 125
    :cond_0
    return-void
.end method

.method private updateLastRecord(I)V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;

    invoke-direct {v0, p1}, Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;-><init>(I)V

    iput-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->lastRecord:Lcom/ooyala/android/WidevineStuckMonitor$VideoAtWallMsec;

    .line 106
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->ooyalaPlayer:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/OoyalaPlayer;->deleteObserver(Ljava/util/Observer;)V

    .line 65
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 58
    const-string/jumbo v0, "WidevineStuckMonitor"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->ooyalaPlayer:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/OoyalaPlayer;->addObserver(Ljava/util/Observer;)V

    .line 60
    iget-object v0, p0, Lcom/ooyala/android/WidevineStuckMonitor;->onFrozenSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/ooyala/android/WidevineStuckMonitor;->drmPlayer:Lcom/ooyala/android/Player;

    invoke-virtual {v1}, Lcom/ooyala/android/Player;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "timeChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/ooyala/android/WidevineStuckMonitor;->checkWhilePlaying()V

    .line 84
    :cond_0
    return-void
.end method
