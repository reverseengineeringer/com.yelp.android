.class Lcom/ooyala/android/StreamPlayer$TimerHandler;
.super Landroid/os/Handler;
.source "StreamPlayer.java"


# instance fields
.field private _lastPlayhead:I

.field private _player:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ooyala/android/StreamPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ooyala/android/StreamPlayer;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/StreamPlayer$TimerHandler;->_lastPlayhead:I

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ooyala/android/StreamPlayer$TimerHandler;->_player:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ooyala/android/StreamPlayer$TimerHandler;->_player:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/StreamPlayer;

    .line 38
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ooyala/android/StreamPlayer$TimerHandler;->_lastPlayhead:I

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->currentTime()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->notifyTimeChanged()V

    .line 41
    :cond_0
    return-void
.end method
