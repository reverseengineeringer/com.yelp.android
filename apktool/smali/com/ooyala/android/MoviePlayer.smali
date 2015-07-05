.class public Lcom/ooyala/android/MoviePlayer;
.super Lcom/ooyala/android/Player;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "MoviePlayer"


# instance fields
.field private _basePlayer:Lcom/ooyala/android/StreamPlayer;

.field private _live:Z

.field private _millisToResume:I

.field protected _seekable:Z

.field private _stateToResume:Lcom/ooyala/android/OoyalaPlayer$State;

.field private _streams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private _suspended:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/ooyala/android/Player;-><init>()V

    .line 18
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    iput-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_stateToResume:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 19
    iput v1, p0, Lcom/ooyala/android/MoviePlayer;->_millisToResume:I

    .line 22
    iput-boolean v2, p0, Lcom/ooyala/android/MoviePlayer;->_suspended:Z

    .line 23
    iput-boolean v2, p0, Lcom/ooyala/android/MoviePlayer;->_seekable:Z

    .line 24
    iput-boolean v1, p0, Lcom/ooyala/android/MoviePlayer;->_live:Z

    return-void
.end method

.method private getPlayerForStreams(Ljava/util/Set;)Lcom/ooyala/android/StreamPlayer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;)",
            "Lcom/ooyala/android/StreamPlayer;"
        }
    .end annotation

    .prologue
    .line 32
    .line 33
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    new-instance v0, Lcom/ooyala/android/EmptyStreamPlayer;

    invoke-direct {v0}, Lcom/ooyala/android/EmptyStreamPlayer;-><init>()V

    .line 55
    :goto_0
    return-object v0

    .line 40
    :cond_1
    sget-boolean v0, Lcom/ooyala/android/OoyalaPlayer;->enableCustomHLSPlayer:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "hls"

    invoke-static {p1, v0}, Lcom/ooyala/android/Stream;->streamSetContainsDeliveryType(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "remote_asset"

    invoke-static {p1, v0}, Lcom/ooyala/android/Stream;->streamSetContainsDeliveryType(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "remote_asset"

    invoke-static {p1, v0}, Lcom/ooyala/android/Stream;->getStreamWithDeliveryType(Ljava/util/Set;Ljava/lang/String;)Lcom/ooyala/android/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->decodedURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.ooyala.android.VisualOnStreamPlayer"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/StreamPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v0, Lcom/ooyala/android/BaseStreamPlayer;

    invoke-direct {v0}, Lcom/ooyala/android/BaseStreamPlayer;-><init>()V

    goto :goto_0

    .line 53
    :cond_3
    new-instance v0, Lcom/ooyala/android/BaseStreamPlayer;

    invoke-direct {v0}, Lcom/ooyala/android/BaseStreamPlayer;-><init>()V

    goto :goto_0
.end method

.method private setStreams(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_streams:Ljava/util/Set;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/ooyala/android/MoviePlayer;->_streams:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method public buffer()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->buffer()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentTime()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->currentTime()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->destroy()V

    .line 162
    :cond_0
    return-void
.end method

.method public duration()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->duration()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBasePlayer()Lcom/ooyala/android/StreamPlayer;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getBufferPercentage()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_error:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_error:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getError()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$SeekStyle;->ENHANCED:Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    goto :goto_0
.end method

.method public getState()Lcom/ooyala/android/OoyalaPlayer$State;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/ooyala/android/Player;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ooyala/android/OoyalaPlayer;",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p2}, Lcom/ooyala/android/MoviePlayer;->setStreams(Ljava/util/Set;)V

    .line 69
    iput-object p1, p0, Lcom/ooyala/android/MoviePlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    .line 70
    iput-object p2, p0, Lcom/ooyala/android/MoviePlayer;->_streams:Ljava/util/Set;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/MoviePlayer;->_suspended:Z

    .line 72
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0, p2}, Lcom/ooyala/android/MoviePlayer;->getPlayerForStreams(Ljava/util/Set;)Lcom/ooyala/android/StreamPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/StreamPlayer;->addObserver(Ljava/util/Observer;)V

    .line 76
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/ooyala/android/StreamPlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V

    .line 77
    return-void
.end method

.method public isLiveClosedCaptionsAvailable()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->isLiveClosedCaptionsAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->pause()V

    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 181
    const-string/jumbo v0, "MoviePlayer"

    const-string/jumbo v1, "play()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->play()V

    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->reset()V

    .line 114
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/ooyala/android/MoviePlayer;->_millisToResume:I

    iget-object v1, p0, Lcom/ooyala/android/MoviePlayer;->_stateToResume:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/MoviePlayer;->resume(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 145
    return-void
.end method

.method public resume(ILcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/ooyala/android/MoviePlayer;->_suspended:Z

    .line 150
    iget-object v1, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    iget-object v2, p0, Lcom/ooyala/android/MoviePlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v3, p0, Lcom/ooyala/android/MoviePlayer;->_streams:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Lcom/ooyala/android/StreamPlayer;->init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V

    .line 151
    iget-object v1, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v1, p0}, Lcom/ooyala/android/StreamPlayer;->addObserver(Ljava/util/Observer;)V

    .line 153
    iget-boolean v1, p0, Lcom/ooyala/android/MoviePlayer;->_live:Z

    if-eqz v1, :cond_0

    move p1, v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Movie Player Resuming. ms to resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State to resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/ooyala/android/StreamPlayer;->resume(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 157
    return-void
.end method

.method public seekToTime(I)V
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/ooyala/android/MoviePlayer;->_seekable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/StreamPlayer;->seekToTime(I)V

    :cond_0
    return-void
.end method

.method public seekable()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/ooyala/android/MoviePlayer;->_seekable:Z

    return v0
.end method

.method public setBasePlayer(Lcom/ooyala/android/StreamPlayer;)V
    .locals 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/ooyala/android/MoviePlayer;->_suspended:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 98
    :goto_0
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/ooyala/android/MoviePlayer;->suspend()V

    .line 102
    :cond_0
    if-eqz p1, :cond_3

    :goto_1
    iput-object p1, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    .line 104
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/ooyala/android/MoviePlayer;->resume()V

    .line 107
    :cond_1
    return-void

    .line 97
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/ooyala/android/MoviePlayer;->_streams:Ljava/util/Set;

    invoke-direct {p0, v1}, Lcom/ooyala/android/MoviePlayer;->getPlayerForStreams(Ljava/util/Set;)Lcom/ooyala/android/StreamPlayer;

    move-result-object p1

    goto :goto_1
.end method

.method public setBasePlayer(Lcom/ooyala/android/StreamPlayer;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ooyala/android/StreamPlayer;",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p2}, Lcom/ooyala/android/MoviePlayer;->setStreams(Ljava/util/Set;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/ooyala/android/MoviePlayer;->setBasePlayer(Lcom/ooyala/android/StreamPlayer;)V

    .line 94
    return-void
.end method

.method public setLive(Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/ooyala/android/MoviePlayer;->_live:Z

    .line 85
    return-void
.end method

.method public setLiveClosedCaptionsEnabled(Z)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/StreamPlayer;->setLiveClosedCaptionsEnabled(Z)V

    return-void
.end method

.method public setParent(Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/ooyala/android/MoviePlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    .line 176
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/StreamPlayer;->setParent(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 177
    return-void
.end method

.method public setSeekable(Z)V
    .locals 0

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/ooyala/android/MoviePlayer;->_seekable:Z

    return-void
.end method

.method protected setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0, p1}, Lcom/ooyala/android/StreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-super {p0, p1}, Lcom/ooyala/android/Player;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->stop()V

    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/StreamPlayer;->currentTime()I

    move-result v0

    iget-object v1, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/StreamPlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/MoviePlayer;->suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/MoviePlayer;->suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0
.end method

.method public suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 3

    .prologue
    .line 128
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne p2, v0, :cond_1

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Trying to suspend an already suspended MoviePlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Movie Player Suspending. ms to resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State to resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/MoviePlayer;->_suspended:Z

    .line 134
    iput p1, p0, Lcom/ooyala/android/MoviePlayer;->_millisToResume:I

    .line 135
    iput-object p2, p0, Lcom/ooyala/android/MoviePlayer;->_stateToResume:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 136
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/StreamPlayer;->deleteObserver(Ljava/util/Observer;)V

    .line 138
    iget-object v0, p0, Lcom/ooyala/android/MoviePlayer;->_basePlayer:Lcom/ooyala/android/StreamPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/ooyala/android/StreamPlayer;->suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/ooyala/android/MoviePlayer;->setChanged()V

    .line 167
    invoke-virtual {p0, p2}, Lcom/ooyala/android/MoviePlayer;->notifyObservers(Ljava/lang/Object;)V

    .line 168
    return-void
.end method
