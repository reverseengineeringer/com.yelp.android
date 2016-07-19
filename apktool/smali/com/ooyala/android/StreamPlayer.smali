.class public abstract Lcom/ooyala/android/StreamPlayer;
.super Lcom/ooyala/android/Player;
.source "StreamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/StreamPlayer$TimerHandler;
    }
.end annotation


# static fields
.field protected static final TIMER_DELAY:J = 0x0L

.field protected static final TIMER_PERIOD:J = 0xfaL

.field public static defaultPlayerInfo:Lcom/ooyala/android/PlayerInfo;


# instance fields
.field protected _playheadUpdateTimer:Ljava/util/Timer;

.field private final _playheadUpdateTimerHandler:Landroid/os/Handler;

.field private customPlayerInfo:Lcom/ooyala/android/PlayerInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/ooyala/android/DefaultPlayerInfo;

    invoke-direct {v0}, Lcom/ooyala/android/DefaultPlayerInfo;-><init>()V

    sput-object v0, Lcom/ooyala/android/StreamPlayer;->defaultPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ooyala/android/Player;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/StreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    .line 44
    new-instance v0, Lcom/ooyala/android/StreamPlayer$TimerHandler;

    invoke-direct {v0, p0}, Lcom/ooyala/android/StreamPlayer$TimerHandler;-><init>(Lcom/ooyala/android/StreamPlayer;)V

    iput-object v0, p0, Lcom/ooyala/android/StreamPlayer;->_playheadUpdateTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ooyala/android/StreamPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ooyala/android/StreamPlayer;->_playheadUpdateTimerHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic buffer()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->buffer()I

    move-result v0

    return v0
.end method

.method public bridge synthetic currentTime()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->currentTime()I

    move-result v0

    return v0
.end method

.method public bridge synthetic duration()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->duration()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBufferPercentage()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->getError()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerInfo()Lcom/ooyala/android/PlayerInfo;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ooyala/android/StreamPlayer;->customPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/StreamPlayer;->customPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ooyala/android/StreamPlayer;->defaultPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    goto :goto_0
.end method

.method public bridge synthetic getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState()Lcom/ooyala/android/OoyalaPlayer$State;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/ooyala/android/Player;->init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V

    return-void
.end method

.method public bridge synthetic isLiveClosedCaptionsAvailable()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->isLiveClosedCaptionsAvailable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPlaying()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->isPlaying()Z

    move-result v0

    return v0
.end method

.method protected notifyTimeChanged()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/ooyala/android/StreamPlayer;->setChanged()V

    .line 69
    const-string/jumbo v0, "timeChanged"

    invoke-virtual {p0, v0}, Lcom/ooyala/android/StreamPlayer;->notifyObservers(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public bridge synthetic pause()V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->pause()V

    return-void
.end method

.method public bridge synthetic play()V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->play()V

    return-void
.end method

.method public bridge synthetic seekToTime(I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/ooyala/android/Player;->seekToTime(I)V

    return-void
.end method

.method public bridge synthetic setLiveClosedCaptionsEnabled(Z)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/ooyala/android/Player;->setLiveClosedCaptionsEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setParent(Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/ooyala/android/Player;->setParent(Lcom/ooyala/android/OoyalaPlayer;)V

    return-void
.end method

.method public setPlayerInfo(Lcom/ooyala/android/PlayerInfo;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ooyala/android/StreamPlayer;->customPlayerInfo:Lcom/ooyala/android/PlayerInfo;

    .line 20
    return-void
.end method

.method protected startPlayheadTimer()V
    .locals 6

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ooyala/android/StreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/ooyala/android/StreamPlayer;->stopPlayheadTimer()V

    .line 51
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/StreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    .line 52
    iget-object v0, p0, Lcom/ooyala/android/StreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ooyala/android/StreamPlayer$1;

    invoke-direct {v1, p0}, Lcom/ooyala/android/StreamPlayer$1;-><init>(Lcom/ooyala/android/StreamPlayer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 58
    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0}, Lcom/ooyala/android/Player;->stop()V

    return-void
.end method

.method protected stopPlayheadTimer()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ooyala/android/StreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/ooyala/android/StreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/StreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    .line 65
    :cond_0
    return-void
.end method
