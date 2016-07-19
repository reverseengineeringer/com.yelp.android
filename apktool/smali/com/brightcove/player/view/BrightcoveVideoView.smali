.class public Lcom/brightcove/player/view/BrightcoveVideoView;
.super Landroid/widget/FrameLayout;
.source "BrightcoveVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "didChangeList",
        "didSelectSource",
        "pause",
        "play",
        "prebufferNextVideo",
        "readyToPlay",
        "seekTo",
        "selectSource",
        "setSource",
        "setVideo",
        "stop",
        "willChangeVideo"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "bufferedUpdate",
        "completed",
        "didPause",
        "didPlay",
        "didSeekTo",
        "didSetSource",
        "didStop",
        "hideSeekControls",
        "progress",
        "seekTo",
        "showSeekControls",
        "sourceNotPlayable",
        "videoDurationChanged",
        "willChangeVideo",
        "willInterruptContent"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;
    }
.end annotation


# static fields
.field private static final FFWD:Ljava/lang/String; = "ffwd"

.field private static final NEXT:Ljava/lang/String; = "next"

.field private static final PREV:Ljava/lang/String; = "prev"

.field private static final PROGRESS_BAR:Ljava/lang/String; = "mediacontroller_progress"

.field private static final REW:Ljava/lang/String; = "rew"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected anchorView:Landroid/view/View;

.field protected brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

.field protected brightcoveSurfaceViewClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/brightcove/player/view/BrightcoveSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private bufferedPercent:I

.field private currentIndex:I

.field private currentlyPlaying:Z

.field protected duration:I

.field protected eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field private hasPendingPlay:Z

.field private hasSetSource:Z

.field protected imageView:Landroid/widget/ImageView;

.field protected mediaController:Landroid/widget/MediaController;

.field private mediaControllerIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mediaControllerViewNames:[Ljava/lang/String;

.field protected mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected playbackController:Lcom/brightcove/player/controller/VideoPlaybackController;

.field protected playheadPosition:I

.field protected pluginManager:Lcom/brightcove/player/management/BrightcovePluginManager;

.field protected sourceController:Lcom/brightcove/player/controller/DefaultSourceSelectionController;

.field protected surfaceListener:Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;

.field protected videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

.field protected videoStillDisplay:Lcom/brightcove/player/display/VideoStillDisplayComponent;

.field private videoToSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/brightcove/player/model/Video;",
            "Lcom/brightcove/player/model/Source;",
            ">;"
        }
    .end annotation
.end field

.field private videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/brightcove/player/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const-class v0, Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 175
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoToSourceMap:Ljava/util/Map;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerIdMap:Ljava/util/Map;

    .line 162
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ffwd"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "rew"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "next"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "prev"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mediacontroller_progress"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerViewNames:[Ljava/lang/String;

    .line 176
    invoke-virtual {p0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView;->init(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoToSourceMap:Ljava/util/Map;

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerIdMap:Ljava/util/Map;

    .line 162
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ffwd"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "rew"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "next"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "prev"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "mediacontroller_progress"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerViewNames:[Ljava/lang/String;

    .line 185
    invoke-virtual {p0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView;->init(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/view/BrightcoveVideoView;Lcom/brightcove/player/event/Event;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView;->setupSeekControls(Lcom/brightcove/player/event/Event;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/brightcove/player/view/BrightcoveVideoView;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->prebufferNextVideo()V

    return-void
.end method

.method static synthetic access$1100(Lcom/brightcove/player/view/BrightcoveVideoView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoToSourceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/brightcove/player/view/BrightcoveVideoView;Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/view/BrightcoveVideoView;->addSubtitlePair(Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V

    return-void
.end method

.method static synthetic access$200(Lcom/brightcove/player/view/BrightcoveVideoView;)Lcom/brightcove/player/model/Video;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getCurrentVideo()Lcom/brightcove/player/model/Video;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/brightcove/player/view/BrightcoveVideoView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/brightcove/player/view/BrightcoveVideoView;I)I
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    return p1
.end method

.method static synthetic access$408(Lcom/brightcove/player/view/BrightcoveVideoView;)I
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/brightcove/player/view/BrightcoveVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/brightcove/player/view/BrightcoveVideoView;Z)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentlyPlaying(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/brightcove/player/view/BrightcoveVideoView;I)I
    .locals 0

    .prologue
    .line 118
    iput p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->bufferedPercent:I

    return p1
.end method

.method static synthetic access$802(Lcom/brightcove/player/view/BrightcoveVideoView;Z)Z
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->hasSetSource:Z

    return p1
.end method

.method static synthetic access$900(Lcom/brightcove/player/view/BrightcoveVideoView;)Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->hasPendingPlay:Z

    return v0
.end method

.method static synthetic access$902(Lcom/brightcove/player/view/BrightcoveVideoView;Z)Z
    .locals 0

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->hasPendingPlay:Z

    return p1
.end method

.method private addSubtitlePair(Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/model/Video;",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1242
    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "subtitleSources"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1245
    if-nez v0, :cond_0

    .line 1246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    invoke-virtual {p1}, Lcom/brightcove/player/model/Video;->getProperties()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "subtitleSources"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    return-void
.end method

.method private emitDidChangeList()V
    .locals 3

    .prologue
    .line 1172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1173
    const-string/jumbo v1, "list"

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "didChangeList"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 1175
    return-void
.end method

.method private getCurrentVideo()Lcom/brightcove/player/model/Video;
    .locals 3

    .prologue
    .line 982
    const/4 v0, 0x0

    .line 984
    iget v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 985
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 988
    :cond_0
    return-object v0
.end method

.method private hasNextVideo()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1207
    const/4 v1, 0x0

    .line 1209
    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1213
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private prebufferNextVideo()V
    .locals 5

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->hasNextVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    iget v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 1181
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoToSourceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/brightcove/player/model/Source;

    .line 1183
    if-eqz v1, :cond_0

    .line 1184
    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v3, "prebufferNextVideo"

    invoke-static {v2, v3, v0, v1}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 1204
    :goto_0
    return-void

    .line 1188
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1189
    const-string/jumbo v2, "video"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v3, "selectSource"

    new-instance v4, Lcom/brightcove/player/view/BrightcoveVideoView$18;

    invoke-direct {v4, p0, v0}, Lcom/brightcove/player/view/BrightcoveVideoView$18;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;Lcom/brightcove/player/model/Video;)V

    invoke-interface {v2, v3, v1, v4}, Lcom/brightcove/player/event/EventEmitter;->request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V

    goto :goto_0

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "prebufferNextVideo"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurrentIndexPrivate(I)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1011
    if-ne p1, v1, :cond_0

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->hasSetSource:Z

    .line 1014
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    if-ne v0, v1, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1021
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 1023
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "willChangeVideo"

    new-instance v3, Lcom/brightcove/player/view/BrightcoveVideoView$17;

    invoke-direct {v3, p0, v1, p1}, Lcom/brightcove/player/view/BrightcoveVideoView$17;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;Ljava/util/UUID;I)V

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 1043
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1044
    const-string/jumbo v0, "index"

    iget v3, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getCurrentVideo()Lcom/brightcove/player/model/Video;

    move-result-object v0

    .line 1047
    const-string/jumbo v3, "currentVideo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    const/4 v0, 0x0

    .line 1051
    if-ltz p1, :cond_1

    iget-object v3, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 1055
    :cond_1
    const-string/jumbo v3, "nextVideo"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string/jumbo v0, "uuid"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "willChangeVideo"

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private setCurrentlyPlaying(Z)V
    .locals 1

    .prologue
    .line 786
    iput-boolean p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentlyPlaying:Z

    .line 788
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 792
    :cond_0
    return-void
.end method

.method private setupSeekControls(Lcom/brightcove/player/event/Event;)V
    .locals 6

    .prologue
    .line 1261
    const-string/jumbo v0, "visibility"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v2

    .line 1262
    const/4 v0, -0x1

    if-le v2, v0, :cond_2

    .line 1264
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->updateMediaControllerIdMap()V

    .line 1267
    iget-object v3, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerViewNames:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 1268
    iget-object v5, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerIdMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1269
    if-eqz v0, :cond_0

    .line 1270
    iget-object v5, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1271
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1274
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 1276
    :cond_2
    return-void
.end method

.method private updateIndex(II)V
    .locals 2

    .prologue
    .line 934
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    if-ne v0, p1, :cond_2

    .line 936
    :cond_0
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentIndexPrivate(I)V

    .line 944
    :cond_1
    :goto_0
    return-void

    .line 937
    :cond_2
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    if-ge p1, v0, :cond_3

    .line 939
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    goto :goto_0

    .line 940
    :cond_3
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentlyPlaying:Z

    if-eqz v0, :cond_1

    .line 942
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->prebufferNextVideo()V

    goto :goto_0
.end method

.method private updateMediaControllerIdMap()V
    .locals 7

    .prologue
    .line 1283
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1285
    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerViewNames:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 1286
    iget-object v5, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerIdMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1287
    iget-object v5, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerIdMap:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    :cond_0
    iget-object v5, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerIdMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1290
    const-string/jumbo v5, "id"

    const-string/jumbo v6, "android"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1291
    if-lez v5, :cond_1

    .line 1292
    iget-object v6, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaControllerIdMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1296
    :cond_2
    return-void
.end method


# virtual methods
.method public add(ILcom/brightcove/player/model/Video;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 922
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 923
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->emitDidChangeList()V

    .line 924
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->updateIndex(II)V

    .line 925
    return-void
.end method

.method public add(Lcom/brightcove/player/model/Video;)V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView;->add(ILcom/brightcove/player/model/Video;)V

    .line 912
    return-void
.end method

.method public addAll(ILjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<",
            "Lcom/brightcove/player/model/Video;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 961
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 962
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->emitDidChangeList()V

    .line 963
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->updateIndex(II)V

    .line 964
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/brightcove/player/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView;->addAll(ILjava/util/Collection;)V

    .line 952
    return-void
.end method

.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 1221
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getCurrentVideo()Lcom/brightcove/player/model/Video;

    move-result-object v0

    .line 1222
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1224
    if-eqz v0, :cond_0

    .line 1225
    invoke-direct {p0, v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->addSubtitlePair(Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V

    .line 1238
    :goto_0
    return-void

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "willChangeVideo"

    new-instance v3, Lcom/brightcove/player/view/BrightcoveVideoView$19;

    invoke-direct {v3, p0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView$19;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;Landroid/util/Pair;)V

    invoke-interface {v0, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    goto :goto_0
.end method

.method protected attachMediaController()V
    .locals 3

    .prologue
    .line 670
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attachMediaController: mediaPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mediaController = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->anchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 676
    :goto_0
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    if-nez v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    new-instance v1, Lcom/brightcove/player/view/BrightcoveVideoView$16;

    invoke-direct {v1, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$16;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 738
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 740
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 745
    :cond_2
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    if-lez v0, :cond_3

    .line 746
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 750
    :cond_3
    return-void

    :cond_4
    move-object v0, p0

    .line 675
    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 1103
    :goto_0
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1104
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoToSourceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1105
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentIndexPrivate(I)V

    .line 1106
    if-eqz v0, :cond_0

    .line 1107
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->emitDidChangeList()V

    .line 1109
    :cond_0
    return-void

    .line 1102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearOnCompletionListener()V
    .locals 1

    .prologue
    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 620
    return-void
.end method

.method public clearOnPreparedListener()V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 628
    return-void
.end method

.method public get(I)Lcom/brightcove/player/model/Video;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    return-object v0
.end method

.method public getAnalytics()Lcom/brightcove/player/analytics/Analytics;
    .locals 2

    .prologue
    .line 1162
    const/4 v0, 0x0

    .line 1164
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    if-eqz v1, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->getAnalytics()Lcom/brightcove/player/analytics/Analytics;

    move-result-object v0

    .line 1168
    :cond_0
    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->bufferedPercent:I

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->duration:I

    return v0
.end method

.method public getEventEmitter()Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    check-cast v0, Lcom/brightcove/player/event/RegisteringEventEmitter;

    invoke-virtual {v0}, Lcom/brightcove/player/event/RegisteringEventEmitter;->getRootEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    goto :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/model/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackController()Lcom/brightcove/player/controller/VideoPlaybackController;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playbackController:Lcom/brightcove/player/controller/VideoPlaybackController;

    return-object v0
.end method

.method public getSourceController()Lcom/brightcove/player/controller/DefaultSourceSelectionController;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->sourceController:Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    return-object v0
.end method

.method public getVideoDisplay()Lcom/brightcove/player/display/VideoDisplayComponent;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoStillDisplay()Lcom/brightcove/player/display/VideoStillDisplayComponent;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoStillDisplay:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 221
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->resetMetaData()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    .line 226
    invoke-virtual {p0, v2}, Lcom/brightcove/player/view/BrightcoveVideoView;->setClickable(Z)V

    .line 227
    invoke-virtual {p0, v2}, Lcom/brightcove/player/view/BrightcoveVideoView;->setFocusable(Z)V

    .line 228
    invoke-virtual {p0, v2}, Lcom/brightcove/player/view/BrightcoveVideoView;->setFocusableInTouchMode(Z)V

    .line 230
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceViewClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 232
    const-class v0, Lcom/brightcove/player/view/BrightcoveClosedCaptioningSurfaceView;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceViewClass:Ljava/lang/Class;

    .line 239
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceViewClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/view/BrightcoveSurfaceView;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    .line 242
    new-instance v0, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;

    invoke-direct {v0, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->surfaceListener:Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;

    .line 243
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->surfaceListener:Lcom/brightcove/player/view/BrightcoveVideoView$SurfaceListener;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 252
    :goto_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->imageView:Landroid/widget/ImageView;

    .line 254
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->addView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->addView(Landroid/view/View;)V

    .line 256
    return-void

    .line 234
    :cond_1
    const-class v0, Lcom/brightcove/player/view/BrightcoveSurfaceView;

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceViewClass:Ljava/lang/Class;

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 246
    :catch_1
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 248
    :catch_2
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method protected initListeners()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "hideSeekControls"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$1;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$1;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 436
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "showSeekControls"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$2;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$2;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 444
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "sourceNotPlayable"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$3;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$3;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 452
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "videoDurationChanged"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$4;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$4;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 465
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "progress"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$5;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$5;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 487
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "didSetSource"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$6;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$6;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 508
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "completed"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$7;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$7;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 521
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "bufferedUpdate"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$8;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$8;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 528
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "seekTo"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$9;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$9;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 538
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "didSeekTo"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$10;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$10;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 548
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "didSetSource"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$11;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$11;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 561
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "didPlay"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$12;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$12;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 574
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "didStop"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$13;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$13;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 581
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "didPause"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$14;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$14;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 588
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "willInterruptContent"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$15;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$15;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 602
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentlyPlaying:Z

    return v0
.end method

.method public onControllerHide()V
    .locals 2

    .prologue
    .line 771
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onControllerHide"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 304
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 307
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/brightcove/player/event/EventEmitterImpl;

    invoke-direct {v0}, Lcom/brightcove/player/event/EventEmitterImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V

    .line 310
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 190
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout: changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", left = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 195
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    .line 205
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 206
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 207
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 208
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 210
    sget-object v4, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMeasure: width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", height = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", videoWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getVideoWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", videoHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", widthMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/brightcove/player/view/LayoutUtil;->getSpecMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", heightMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/brightcove/player/view/LayoutUtil;->getSpecMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 218
    return-void
.end method

.method protected onPrepared()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-virtual {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 608
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 199
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSizeChanged: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldh = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 201
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 754
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTouchEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 756
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 763
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 816
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 817
    const-string/jumbo v1, "playheadPosition"

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "pause"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 819
    return-void
.end method

.method public remove(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 1075
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoToSourceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    if-le v0, p1, :cond_1

    .line 1079
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    .line 1095
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->emitDidChangeList()V

    .line 1096
    return-void

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1081
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentIndexPrivate(I)V

    goto :goto_0

    .line 1082
    :cond_2
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    if-ne v0, p1, :cond_4

    .line 1084
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1086
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentIndex(I)V

    goto :goto_0

    .line 1087
    :cond_3
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1088
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentIndexPrivate(I)V

    goto :goto_0

    .line 1090
    :cond_4
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentlyPlaying:Z

    if-eqz v0, :cond_0

    .line 1092
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->prebufferNextVideo()V

    goto :goto_0
.end method

.method protected resetMetaData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0, v1, v1}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->setVideoSize(II)V

    .line 320
    :cond_0
    iput v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->bufferedPercent:I

    .line 321
    iput v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->duration:I

    .line 323
    invoke-direct {p0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentlyPlaying(Z)V

    .line 324
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .prologue
    .line 836
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Seeking to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 838
    const-string/jumbo v1, "seekPosition"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    iput p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    .line 840
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "seekTo"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 841
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 998
    iget v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I

    if-ne p1, v0, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 1003
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 1004
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1007
    :cond_2
    invoke-direct {p0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentIndexPrivate(I)V

    goto :goto_0
.end method

.method public setEventEmitter(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/brightcove/player/event/RegisteringEventEmitter;->build(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)Lcom/brightcove/player/event/RegisteringEventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 341
    new-instance v0, Lcom/brightcove/player/controller/VideoPlaybackController;

    invoke-direct {v0, p1}, Lcom/brightcove/player/controller/VideoPlaybackController;-><init>(Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playbackController:Lcom/brightcove/player/controller/VideoPlaybackController;

    .line 342
    new-instance v0, Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    invoke-direct {v0, p1}, Lcom/brightcove/player/controller/DefaultSourceSelectionController;-><init>(Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->sourceController:Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    .line 343
    new-instance v0, Lcom/brightcove/player/display/VideoStillDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->imageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1, p1}, Lcom/brightcove/player/display/VideoStillDisplayComponent;-><init>(Landroid/widget/ImageView;Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoStillDisplay:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    .line 344
    new-instance v0, Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-direct {v0, v1, p1}, Lcom/brightcove/player/display/VideoDisplayComponent;-><init>(Lcom/brightcove/player/view/BrightcoveSurfaceView;Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoDisplay:Lcom/brightcove/player/display/VideoDisplayComponent;

    .line 345
    new-instance v0, Lcom/brightcove/player/management/BrightcovePluginManager;

    invoke-direct {v0, p1}, Lcom/brightcove/player/management/BrightcovePluginManager;-><init>(Lcom/brightcove/player/event/EventEmitter;)V

    iput-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->pluginManager:Lcom/brightcove/player/management/BrightcovePluginManager;

    .line 347
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->initListeners()V

    .line 348
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v0, 0x0

    .line 260
    sget-object v1, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLayoutParams: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    if-eqz p1, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getChildCount()I

    move-result v2

    move v1, v0

    .line 272
    :goto_0
    if-ge v1, v2, :cond_1

    .line 273
    invoke-virtual {p0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 278
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.brightcove.ima.GoogleIMAVideoAdPlayer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    const/4 v0, 0x1

    .line 272
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    if-nez v0, :cond_2

    .line 284
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 286
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 287
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 291
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 293
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 294
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    :cond_3
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 643
    invoke-virtual {p0, p1, v0, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setMediaController(Landroid/widget/MediaController;Landroid/view/View;Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 644
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;Landroid/view/View;Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 660
    :cond_0
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    .line 661
    iput-object p3, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    .line 662
    iput-object p2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->anchorView:Landroid/view/View;

    .line 663
    invoke-virtual {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->attachMediaController()V

    .line 664
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 616
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 624
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/brightcove/player/view/BrightcoveVideoView;->hasNextVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "prebufferNextVideo"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 888
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videoToSourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 890
    invoke-static {p1}, Lcom/brightcove/player/model/Video;->createVideo(Ljava/lang/String;)Lcom/brightcove/player/model/Video;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->add(Lcom/brightcove/player/model/Video;)V

    .line 891
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 898
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->hasSetSource:Z

    if-eqz v0, :cond_0

    .line 800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->hasPendingPlay:Z

    .line 801
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 802
    const-string/jumbo v1, "playheadPosition"

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "play"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 809
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->hasPendingPlay:Z

    goto :goto_0

    .line 807
    :cond_1
    sget-object v0, Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No video to play."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    .line 825
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 826
    const-string/jumbo v1, "playheadPosition"

    iget v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "stop"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 828
    return-void
.end method
