.class public Lcom/ooyala/android/BaseStreamPlayer;
.super Lcom/ooyala/android/StreamPlayer;
.source "BaseStreamPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _completedQueued:Z

.field protected _height:I

.field protected _holder:Landroid/view/SurfaceHolder;

.field private _playQueued:Z

.field protected _player:Landroid/media/MediaPlayer;

.field private _stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

.field protected _streamUrl:Ljava/lang/String;

.field private _timeBeforeSuspend:I

.field protected _width:I

.field stream:Lcom/ooyala/android/Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/ooyala/android/BaseStreamPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ooyala/android/BaseStreamPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/ooyala/android/StreamPlayer;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    .line 41
    iput-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_streamUrl:Ljava/lang/String;

    .line 43
    iput v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_width:I

    .line 44
    iput v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_height:I

    .line 45
    iput-boolean v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_playQueued:Z

    .line 46
    iput-boolean v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_completedQueued:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    .line 48
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 49
    iput-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->stream:Lcom/ooyala/android/Stream;

    return-void
.end method

.method private createView(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 310
    new-instance v0, Lcom/ooyala/android/MovieView;

    invoke-direct {v0, p1}, Lcom/ooyala/android/MovieView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_view:Landroid/view/SurfaceView;

    .line 311
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_view:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_view:Landroid/view/SurfaceView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 314
    return-void
.end method

.method private dequeueAll()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->dequeueCompleted()V

    .line 455
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->dequeuePlay()V

    .line 456
    return-void
.end method

.method private dequeueCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 427
    iget-boolean v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_completedQueued:Z

    if-eqz v0, :cond_0

    .line 428
    iput-boolean v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_playQueued:Z

    .line 429
    iput-boolean v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_completedQueued:Z

    .line 430
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 432
    :cond_0
    return-void
.end method

.method private dequeuePlay()V
    .locals 2

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_playQueued:Z

    if-eqz v0, :cond_0

    .line 441
    sget-object v0, Lcom/ooyala/android/BaseStreamPlayer$1;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 445
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_playQueued:Z

    .line 446
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->play()V

    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSeekAllowed()Z
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->READY:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queueCompleted()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_completedQueued:Z

    .line 424
    return-void
.end method

.method private queuePlay()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_playQueued:Z

    .line 437
    return-void
.end method

.method private removeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 323
    :cond_1
    iput-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_view:Landroid/view/SurfaceView;

    .line 324
    iput-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    .line 325
    return-void
.end method

.method private seekToTimeOnPrepared(I)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 173
    :cond_0
    return-void
.end method

.method private setVideoSize(II)V
    .locals 3

    .prologue
    .line 412
    iput p1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_width:I

    .line 413
    iput p2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_height:I

    .line 414
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_view:Landroid/view/SurfaceView;

    check-cast v0, Lcom/ooyala/android/MovieView;

    iget v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/ooyala/android/MovieView;->setAspectRatio(F)V

    .line 415
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->createView(Landroid/content/Context;)V

    .line 295
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/BaseStreamPlayer;->setVideoSize(II)V

    .line 304
    :goto_0
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    .line 305
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 306
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 307
    return-void

    .line 301
    :cond_0
    const/16 v0, 0x10

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/BaseStreamPlayer;->setVideoSize(II)V

    goto :goto_0
.end method


# virtual methods
.method public buffer()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_buffer:I

    return v0
.end method

.method protected createMediaPlayer()V
    .locals 4

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    .line 189
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_3

    .line 190
    const/4 v0, 0x0

    .line 191
    sget-object v1, Lcom/ooyala/android/OoyalaAPIHelper;->cookies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    if-nez v1, :cond_1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/ooyala/android/OoyalaAPIHelper;->cookies:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v1, v0

    .line 195
    goto :goto_1

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->stopPlayheadTimer()V

    .line 185
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 186
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 217
    :goto_3
    return-void

    .line 195
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/ooyala/android/OoyalaAPIHelper;->cookies:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 198
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    const-string/jumbo v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_streamUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 204
    :goto_4
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 205
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 206
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 207
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 208
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 209
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 210
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 211
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 212
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 213
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 214
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto/16 :goto_3

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_streamUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4
.end method

.method protected currentItemCompleted()V
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->stopPlayheadTimer()V

    .line 419
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 420
    return-void
.end method

.method public currentTime()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 123
    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 132
    :goto_0
    :pswitch_0
    return v0

    .line 124
    :cond_0
    sget-object v1, Lcom/ooyala/android/BaseStreamPlayer$1;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v2}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 397
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->stop()V

    .line 399
    iput-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->removeView()V

    .line 402
    iput-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    .line 403
    iput v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_width:I

    .line 404
    iput v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_height:I

    .line 405
    iput v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_buffer:I

    .line 406
    iput-boolean v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_playQueued:Z

    .line 407
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    .line 408
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 409
    return-void
.end method

.method public duration()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 146
    :goto_0
    :pswitch_0
    return v0

    .line 138
    :cond_0
    sget-object v1, Lcom/ooyala/android/BaseStreamPlayer$1;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v2}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V
    .locals 2
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
    .line 53
    invoke-static {p2}, Lcom/ooyala/android/Stream;->bestStream(Ljava/util/Set;)Lcom/ooyala/android/Stream;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->stream:Lcom/ooyala/android/Stream;

    .line 54
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->stream:Lcom/ooyala/android/Stream;

    if-nez v0, :cond_1

    .line 55
    sget-object v0, Lcom/ooyala/android/BaseStreamPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ERROR: Invalid Stream (no valid stream available)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string/jumbo v0, "Invalid Stream"

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_error:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    if-nez p1, :cond_2

    .line 62
    const-string/jumbo v0, "Invalid Parent"

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_error:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0

    .line 66
    :cond_2
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 67
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getUrlFormat()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "encoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->decodedURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_streamUrl:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, p1}, Lcom/ooyala/android/BaseStreamPlayer;->setParent(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 69
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->setupView()V

    .line 70
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->stream:Lcom/ooyala/android/Stream;

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .prologue
    .line 245
    iput p2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_buffer:I

    .line 246
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->setChanged()V

    .line 247
    const-string/jumbo v0, "bufferChanged"

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->notifyObservers(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->currentItemCompleted()V

    .line 265
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    const/16 v2, -0xa

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaPlayer Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_error:Ljava/lang/String;

    .line 222
    if-ne p2, v2, :cond_0

    if-ne p3, v2, :cond_0

    .line 223
    sget-object v0, Lcom/ooyala/android/BaseStreamPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Unsupported video type given to base media player"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 254
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 255
    sget-object v0, Lcom/ooyala/android/BaseStreamPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInfo: Buffering Starting! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 257
    sget-object v0, Lcom/ooyala/android/BaseStreamPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInfo: Buffering Done! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_view:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 232
    iget v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_width:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_height:I

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/ooyala/android/BaseStreamPlayer;->setVideoSize(II)V

    .line 237
    :cond_0
    iget v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    if-lez v0, :cond_1

    .line 238
    iget v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    invoke-direct {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->seekToTimeOnPrepared(I)V

    .line 240
    :cond_1
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->READY:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 241
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->setChanged()V

    .line 334
    const-string/jumbo v0, "seekCompleted"

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->notifyObservers(Ljava/lang/Object;)V

    .line 336
    iget v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xbb8

    if-le v0, v1, :cond_0

    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Seek failed. currentPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timeBefore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->dequeuePlay()V

    .line 355
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0, p2, p3}, Lcom/ooyala/android/BaseStreamPlayer;->setVideoSize(II)V

    .line 269
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_playQueued:Z

    .line 76
    sget-object v0, Lcom/ooyala/android/BaseStreamPlayer$1;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 78
    :pswitch_0
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->stopPlayheadTimer()V

    .line 79
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 80
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public play()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_playQueued:Z

    .line 89
    sget-object v0, Lcom/ooyala/android/BaseStreamPlayer$1;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 92
    :pswitch_0
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->queuePlay()V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 98
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 99
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->startPlayheadTimer()V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 115
    const/4 v0, 0x0

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/BaseStreamPlayer;->suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 116
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 117
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->setupView()V

    .line 118
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->resume()V

    .line 119
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 382
    iget v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/BaseStreamPlayer;->resume(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 383
    return-void
.end method

.method public resume(ILcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 1

    .prologue
    .line 387
    iput p1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    .line 388
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne p2, v0, :cond_1

    .line 389
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->queuePlay()V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne p2, v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->queueCompleted()V

    goto :goto_0
.end method

.method public seekToTime(I)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 157
    iput p1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->isSeekAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    .line 165
    :cond_1
    iput p1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    goto :goto_0
.end method

.method public setParent(Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/ooyala/android/StreamPlayer;->setParent(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 290
    return-void
.end method

.method protected setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 0

    .prologue
    .line 465
    invoke-super {p0, p1}, Lcom/ooyala/android/StreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 466
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->dequeueAll()V

    .line 467
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->stopPlayheadTimer()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_playQueued:Z

    .line 109
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 110
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 111
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/ooyala/android/BaseStreamPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Surface Created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lcom/ooyala/android/BaseStreamPlayer;->createMediaPlayer()V

    .line 280
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/ooyala/android/BaseStreamPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Surface Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/BaseStreamPlayer;->suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 360
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 366
    iput p1, p0, Lcom/ooyala/android/BaseStreamPlayer;->_timeBeforeSuspend:I

    .line 367
    iput-object p2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 369
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 370
    iget-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/BaseStreamPlayer;->_player:Landroid/media/MediaPlayer;

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/BaseStreamPlayer;->removeView()V

    .line 374
    iput v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_width:I

    .line 375
    iput v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_height:I

    .line 376
    iput v2, p0, Lcom/ooyala/android/BaseStreamPlayer;->_buffer:I

    .line 377
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/BaseStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0
.end method
