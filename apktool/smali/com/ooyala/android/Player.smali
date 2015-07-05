.class abstract Lcom/ooyala/android/Player;
.super Ljava/util/Observable;
.source "Player.java"


# instance fields
.field protected _buffer:I

.field protected _error:Ljava/lang/String;

.field protected _fullscreen:Z

.field protected _parent:Lcom/ooyala/android/OoyalaPlayer;

.field protected _pausable:Z

.field protected _resizeQueued:Z

.field protected _state:Lcom/ooyala/android/OoyalaPlayer$State;

.field protected _view:Landroid/view/SurfaceView;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 13
    iput-object v2, p0, Lcom/ooyala/android/Player;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    .line 15
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    iput-object v0, p0, Lcom/ooyala/android/Player;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 17
    iput-object v2, p0, Lcom/ooyala/android/Player;->_error:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/ooyala/android/Player;->_view:Landroid/view/SurfaceView;

    .line 19
    iput-boolean v1, p0, Lcom/ooyala/android/Player;->_resizeQueued:Z

    .line 20
    iput v1, p0, Lcom/ooyala/android/Player;->_buffer:I

    .line 21
    iput-boolean v1, p0, Lcom/ooyala/android/Player;->_fullscreen:Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/Player;->_pausable:Z

    .line 27
    return-void
.end method


# virtual methods
.method public buffer()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public currentTime()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public abstract destroy()V
.end method

.method public duration()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/ooyala/android/Player;->_buffer:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ooyala/android/Player;->_error:Ljava/lang/String;

    return-object v0
.end method

.method public getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$SeekStyle;->ENHANCED:Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    return-object v0
.end method

.method public getState()Lcom/ooyala/android/OoyalaPlayer$State;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ooyala/android/Player;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ooyala/android/Player;->_view:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V
    .locals 0
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
    .line 29
    return-void
.end method

.method public isLiveClosedCaptionsAvailable()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public play()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract resume()V
.end method

.method public abstract resume(ILcom/ooyala/android/OoyalaPlayer$State;)V
.end method

.method public seekToTime(I)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setLiveClosedCaptionsEnabled(Z)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public setParent(Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/ooyala/android/Player;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    .line 96
    return-void
.end method

.method protected setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ooyala/android/Player;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 82
    invoke-virtual {p0}, Lcom/ooyala/android/Player;->setChanged()V

    .line 83
    const-string/jumbo v0, "stateChanged"

    invoke-virtual {p0, v0}, Lcom/ooyala/android/Player;->notifyObservers(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public abstract suspend()V
.end method

.method public abstract suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V
.end method
