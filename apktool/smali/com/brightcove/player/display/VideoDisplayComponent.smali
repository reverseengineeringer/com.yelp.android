.class public Lcom/brightcove/player/display/VideoDisplayComponent;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "VideoDisplayComponent.java"


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "bufferedUpdate",
        "completed",
        "didPause",
        "didPlay",
        "didSeekTo",
        "didSetSource",
        "didStop",
        "error",
        "pause",
        "play",
        "progress",
        "sourceNotPlayable",
        "stop",
        "videoDurationChanged",
        "videoSizeKnown",
        "willChangeVideo"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "completed",
        "didSetSource",
        "pause",
        "play",
        "prebufferNextVideo",
        "seekTo",
        "setSource",
        "stop",
        "willChangeVideo",
        "willInterruptContent",
        "willResumeContent",
        "readyToPlay",
        "setVolume"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;,
        Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

.field protected static final ON_PLAY_SEEK_THRESHOLD:I = 0x3e8

.field private static final PROGRESS_INTERVAL:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private analytics:Lcom/brightcove/player/analytics/Analytics;

.field protected brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

.field protected context:Landroid/content/Context;

.field protected currentSource:Lcom/brightcove/player/model/Source;

.field protected currentVideo:Lcom/brightcove/player/model/Video;

.field protected duration:I

.field private fromSeekPosition:I

.field private hasErrored:Z

.field private hasPlaybackStarted:Z

.field private hasPrepared:Z

.field protected hasSurface:Z

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field protected nextSource:Lcom/brightcove/player/model/Source;

.field protected nextVideo:Lcom/brightcove/player/model/Video;

.field onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field onCompletedListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

.field onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field onPauseListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;

.field onPlayListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

.field onPrebufferNextVideoListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;

.field onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field onSeekListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;

.field onSetSourceListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;

.field onSetVolumeListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;

.field onStopListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;

.field onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field onWillInterruptContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;

.field onWillResumeContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;

.field protected playheadPosition:I

.field protected seekPosition:I

.field protected seekPositionWhenPrepared:I

.field protected updater:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const-class v0, Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    .line 133
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/view/BrightcoveSurfaceView;Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 173
    const-class v0, Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0, p2, v0}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 832
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$3;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$3;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 841
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$4;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$4;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 870
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$5;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$5;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 895
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$6;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$6;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 912
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$7;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$7;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 921
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$8;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$8;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 945
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$9;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$9;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 175
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceViewAndEventEmitterRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1
    new-instance v0, Lcom/brightcove/player/analytics/Analytics;

    invoke-virtual {p1}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/brightcove/player/analytics/Analytics;-><init>(Lcom/brightcove/player/event/EventEmitter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->analytics:Lcom/brightcove/player/analytics/Analytics;

    .line 180
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    .line 181
    invoke-virtual {p1}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->context:Landroid/content/Context;

    .line 182
    invoke-direct {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->setHolderType()V

    .line 183
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->initializeListeners()V

    .line 184
    return-void
.end method

.method static synthetic access$1000(Lcom/brightcove/player/display/VideoDisplayComponent;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPlaybackStarted:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/brightcove/player/display/VideoDisplayComponent;Z)Z
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPlaybackStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/display/VideoDisplayComponent;->createPlayer(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/brightcove/player/display/VideoDisplayComponent;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;->play(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/brightcove/player/display/VideoDisplayComponent;)I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I

    return v0
.end method

.method static synthetic access$2102(Lcom/brightcove/player/display/VideoDisplayComponent;I)I
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I

    return p1
.end method

.method static synthetic access$2200(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/brightcove/player/display/VideoDisplayComponent;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasErrored:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/brightcove/player/display/VideoDisplayComponent;Z)Z
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasErrored:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/brightcove/player/display/VideoDisplayComponent;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z

    return v0
.end method

.method static synthetic access$802(Lcom/brightcove/player/display/VideoDisplayComponent;Z)Z
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z

    return p1
.end method

.method static synthetic access$900(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method private createPlayer(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 353
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "createPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 356
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 357
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 358
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 359
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 360
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 361
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 362
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 363
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 364
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 365
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/brightcove/player/display/VideoDisplayComponent;->getHeaders(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 379
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "subtitleSources"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->setupSubtitles(Lcom/brightcove/player/model/Video;Landroid/media/MediaPlayer;)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->duration:I

    .line 391
    :goto_1
    return-void

    .line 373
    :cond_1
    invoke-static {p1, p2}, Lcom/brightcove/player/display/VideoDisplayComponent;->getHeaders(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 374
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Headers ignored below API level 14"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 388
    sget-object v1, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "IOException trying to play video"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "error"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method protected static getHeaders(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/model/Video;",
            "Lcom/brightcove/player/model/Source;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "headers"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 331
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/brightcove/player/model/Source;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v2, "headers"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 334
    if-eqz v0, :cond_1

    .line 335
    if-eqz v1, :cond_0

    .line 336
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 345
    :cond_0
    :goto_1
    sget-object v1, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "headers = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-object v0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    sget-object v2, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to use Video headers."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 341
    :catch_1
    move-exception v0

    .line 342
    sget-object v2, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to use Source headers."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private play(I)V
    .locals 5

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, -0x1

    .line 547
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "play: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", playheadPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", seekPositionWhenPrepared = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v1}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 553
    if-ltz p1, :cond_2

    iget v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v4, :cond_2

    .line 555
    iput v3, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I

    .line 556
    iput p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    .line 557
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 563
    :cond_0
    :goto_0
    iput v3, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    .line 565
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 566
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->startUpdater()V

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 570
    return-void

    .line 558
    :cond_2
    iget v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    iget v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v4, :cond_0

    .line 559
    iget v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    iput v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I

    .line 560
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method private setHolderType()V
    .locals 2

    .prologue
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 196
    :cond_0
    return-void
.end method

.method private setupSubtitles(Lcom/brightcove/player/model/Video;Landroid/media/MediaPlayer;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "subtitleSources"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 399
    if-eqz v0, :cond_0

    .line 400
    new-instance v2, Landroid/media/SubtitleController;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v3

    invoke-direct {v2, v1, v3, p2}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    .line 402
    new-instance v1, Landroid/media/WebVttRenderer;

    iget-object v3, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 406
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    check-cast v1, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;

    invoke-virtual {p2, v2, v1}, Landroid/media/MediaPlayer;->setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V

    .line 408
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 410
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaFormat;

    invoke-virtual {p2, v1, v0}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 412
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    const/16 v1, 0x385

    const/4 v3, 0x0

    invoke-interface {v0, p2, v1, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 416
    :cond_0
    return-void
.end method


# virtual methods
.method protected destroyPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->stopUpdater()V

    .line 430
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Shutting down current MediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 433
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 435
    iput-boolean v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z

    .line 436
    iput-boolean v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasErrored:Z

    .line 441
    :cond_0
    return-void
.end method

.method protected emitVideoSize(II)V
    .locals 3

    .prologue
    .line 759
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "emitVideoSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v2}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getVideoWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getVideoHeight()I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0, p1, p2}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->setVideoSize(II)V

    .line 766
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 767
    const-string/jumbo v1, "width"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string/jumbo v1, "height"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "videoSizeKnown"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 771
    :cond_1
    return-void
.end method

.method public getAnalytics()Lcom/brightcove/player/analytics/Analytics;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->analytics:Lcom/brightcove/player/analytics/Analytics;

    return-object v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    return-object v0
.end method

.method protected initializeListeners()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSetSourceListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;

    .line 201
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPlayListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

    .line 202
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPauseListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;

    .line 203
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSeekListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;

    .line 204
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onStopListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;

    .line 205
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPrebufferNextVideoListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;

    .line 206
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onCompletedListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    .line 207
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onWillInterruptContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;

    .line 208
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onWillResumeContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;

    .line 209
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;

    invoke-direct {v0, p0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSetVolumeListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;

    .line 211
    const-string/jumbo v0, "setSource"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSetSourceListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetSourceListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 212
    const-string/jumbo v0, "play"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPlayListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 213
    const-string/jumbo v0, "seekTo"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSeekListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 214
    const-string/jumbo v0, "pause"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPauseListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPauseListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 215
    const-string/jumbo v0, "stop"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onStopListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnStopListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 216
    const-string/jumbo v0, "prebufferNextVideo"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onPrebufferNextVideoListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnPrebufferNextVideoListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 217
    const-string/jumbo v0, "completed"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onCompletedListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnCompletedListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 218
    const-string/jumbo v0, "willInterruptContent"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onWillInterruptContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillInterruptContentListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 219
    const-string/jumbo v0, "willResumeContent"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onWillResumeContentListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 220
    const-string/jumbo v0, "setVolume"

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->onSetVolumeListener:Lcom/brightcove/player/display/VideoDisplayComponent$OnSetVolumeListener;

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    .line 221
    return-void
.end method

.method protected openVideo(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p2}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->destroyPlayer()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasPlaybackStarted:Z

    .line 302
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/display/VideoDisplayComponent;->createPlayer(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 318
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "readyToPlay"

    new-instance v2, Lcom/brightcove/player/display/VideoDisplayComponent$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/brightcove/player/display/VideoDisplayComponent$2;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    goto :goto_0

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalidURL"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected startUpdater()V
    .locals 7

    .prologue
    .line 224
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startUpdater"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->EXECUTOR:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/brightcove/player/display/VideoDisplayComponent$1;

    invoke-direct {v1, p0}, Lcom/brightcove/player/display/VideoDisplayComponent$1;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    .line 260
    return-void
.end method

.method protected stopUpdater()V
    .locals 3

    .prologue
    .line 263
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUpdater: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->updater:Ljava/util/concurrent/ScheduledFuture;

    .line 268
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 780
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 783
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 785
    if-eqz v0, :cond_1

    .line 786
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 787
    iput-boolean v4, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    .line 796
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    .line 797
    return-void

    .line 789
    :cond_1
    const-string/jumbo v0, "invalidSurface"

    invoke-static {v0}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    sget-object v1, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "surfaceChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "errorMessage"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 775
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    .line 777
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 800
    sget-object v0, Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 808
    const-string/jumbo v0, "releaseWhenSurfaceDestroyed"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->destroyPlayer()V

    .line 822
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    .line 823
    return-void

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getDeliveryType()Lcom/brightcove/player/media/DeliveryType;

    move-result-object v0

    sget-object v1, Lcom/brightcove/player/media/DeliveryType;->HLS:Lcom/brightcove/player/media/DeliveryType;

    if-eq v0, v1, :cond_2

    .line 815
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 817
    :cond_2
    invoke-virtual {p0}, Lcom/brightcove/player/display/VideoDisplayComponent;->destroyPlayer()V

    goto :goto_0
.end method
