.class Lcom/ooyala/android/VisualOnStreamPlayer;
.super Lcom/ooyala/android/StreamPlayer;
.source "VisualOnStreamPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;
.implements Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onRequestListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VisualOnStreamPlayer"

.field protected static final TIMER_DELAY:J = 0x0L

.field protected static final TIMER_PERIOD:J = 0xfaL


# instance fields
.field private _completedQueued:Z

.field protected _holder:Landroid/view/SurfaceHolder;

.field private _isLiveClosedCaptionsAvailable:Z

.field private _isLiveClosedCaptionsEnabled:Z

.field private _lastPlayhead:I

.field private _playQueued:Z

.field protected _player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

.field protected _playheadUpdateTimer:Ljava/util/Timer;

.field private final _playheadUpdateTimerHandler:Landroid/os/Handler;

.field private _stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

.field protected _streamUrl:Ljava/lang/String;

.field private _timeBeforeSuspend:I

.field protected _videoHeight:I

.field protected _videoWidth:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/ooyala/android/StreamPlayer;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 50
    iput-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    .line 51
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_streamUrl:Ljava/lang/String;

    .line 52
    const/16 v0, 0x10

    iput v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_videoWidth:I

    .line 53
    const/16 v0, 0x9

    iput v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_videoHeight:I

    .line 55
    iput-boolean v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playQueued:Z

    .line 56
    iput-boolean v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_completedQueued:Z

    .line 57
    iput v3, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_timeBeforeSuspend:I

    .line 58
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 59
    iput-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    .line 60
    iput v3, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_lastPlayhead:I

    .line 61
    iput-boolean v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_isLiveClosedCaptionsAvailable:Z

    .line 62
    iput-boolean v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_isLiveClosedCaptionsEnabled:Z

    .line 107
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/ooyala/android/VisualOnStreamPlayer$1;

    invoke-direct {v1, p0}, Lcom/ooyala/android/VisualOnStreamPlayer$1;-><init>(Lcom/ooyala/android/VisualOnStreamPlayer;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playheadUpdateTimerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ooyala/android/VisualOnStreamPlayer;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_lastPlayhead:I

    return v0
.end method

.method static synthetic access$002(Lcom/ooyala/android/VisualOnStreamPlayer;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_lastPlayhead:I

    return p1
.end method

.method static synthetic access$100(Lcom/ooyala/android/VisualOnStreamPlayer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playheadUpdateTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ooyala/android/VisualOnStreamPlayer;)V
    .locals 0

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setChanged()V

    return-void
.end method

.method private static copyfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 74
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 76
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 77
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 78
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    :goto_1
    return-void

    .line 80
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 81
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private dequeueAll()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->dequeueCompleted()V

    .line 551
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->dequeuePlay()V

    .line 552
    return-void
.end method

.method private dequeueCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 523
    iget-boolean v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_completedQueued:Z

    if-eqz v0, :cond_0

    .line 524
    iput-boolean v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playQueued:Z

    .line 525
    iput-boolean v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_completedQueued:Z

    .line 526
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 528
    :cond_0
    return-void
.end method

.method private dequeuePlay()V
    .locals 2

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playQueued:Z

    if-eqz v0, :cond_0

    .line 537
    sget-object v0, Lcom/ooyala/android/VisualOnStreamPlayer$3;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 541
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playQueued:Z

    .line 542
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->play()V

    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private queueCompleted()V
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_completedQueued:Z

    .line 520
    return-void
.end method

.method private queuePlay()V
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playQueued:Z

    .line 533
    return-void
.end method

.method private removeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 452
    :cond_1
    iput-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    .line 453
    iput-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    .line 454
    return-void
.end method

.method private setupView()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 398
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 399
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "DANGER DANGER: setupView while we still have a view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :goto_0
    return-void

    .line 403
    :cond_0
    new-instance v0, Lcom/ooyala/android/VisualOnStreamPlayer$2;

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ooyala/android/VisualOnStreamPlayer$2;-><init>(Lcom/ooyala/android/VisualOnStreamPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    .line 433
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    .line 440
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 441
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 442
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0
.end method


# virtual methods
.method public GetCCString(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 725
    if-nez p1, :cond_1

    .line 726
    const-string/jumbo v2, ""

    .line 764
    :cond_0
    :goto_0
    return-object v2

    .line 727
    :cond_1
    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->getSubtitleEntry()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 728
    const-string/jumbo v2, ""

    goto :goto_0

    .line 730
    :cond_2
    const-string/jumbo v2, ""

    move v7, v4

    .line 731
    :goto_1
    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->getSubtitleEntry()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 734
    invoke-virtual {p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;->getSubtitleEntry()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;

    .line 735
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfoEntry;->getSubtitleDispInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;

    move-result-object v8

    .line 736
    invoke-virtual {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->getTextRowInfo()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    move v3, v4

    .line 738
    :goto_2
    invoke-virtual {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->getTextRowInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 741
    invoke-virtual {v8}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleDisplayInfo;->getTextRowInfo()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;

    .line 742
    if-nez v0, :cond_4

    .line 738
    :cond_3
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 744
    :cond_4
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->getTextInfoEntry()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 747
    const-string/jumbo v1, ""

    move v5, v4

    .line 748
    :goto_4
    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->getTextInfoEntry()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 751
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextRowInfo;->getTextInfoEntry()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->getStringText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 748
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v6

    goto :goto_4

    .line 753
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 755
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 731
    :cond_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    :cond_7
    move-object v0, v2

    goto :goto_5
.end method

.method public buffer()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_buffer:I

    return v0
.end method

.method protected createMediaPlayer()V
    .locals 7

    .prologue
    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-direct {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 274
    const/4 v4, 0x0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Init(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;III)I

    move-result v0

    .line 282
    if-nez v0, :cond_1

    .line 283
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "MediaPlayer is created."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 290
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 291
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 294
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetDisplaySize(II)V

    .line 295
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetView(Landroid/view/SurfaceView;)V

    .line 297
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->setEventListener(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer$onEventListener;)V

    .line 300
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000001

    const-string/jumbo v2, "voDRM"

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 301
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v1, 0x3000002

    const-string/jumbo v2, "voGetDRMAPI"

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 304
    const-string/jumbo v0, "VOTRUST_OOYALA_754321974"

    .line 305
    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 308
    const v0, 0x8000

    new-array v1, v0, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :try_start_1
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v2, "voVidDec.dat"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 311
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 312
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 319
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 322
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x2900

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cap.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const v2, 0x300000c

    invoke-virtual {v1, v2, v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 330
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_streamUrl:Ljava/lang/String;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Open(Ljava/lang/Object;IIII)I

    move-result v0

    .line 333
    if-nez v0, :cond_2

    .line 334
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "MediaPlayer is Opened."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_1
    return-void

    .line 268
    :cond_0
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "DANGER DANGER: Creating a Media player when one already exists"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Uninit()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 285
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/ooyala/android/VisualOnStreamPlayer;->onError(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;II)Z

    goto :goto_1

    .line 313
    :catch_1
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_streamUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method protected currentItemCompleted()V
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->stopPlayheadTimer()V

    .line 515
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 516
    return-void
.end method

.method public currentTime()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v1, :cond_0

    .line 228
    :goto_0
    :pswitch_0
    return v0

    .line 219
    :cond_0
    sget-object v1, Lcom/ooyala/android/VisualOnStreamPlayer$3;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v2}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 228
    :pswitch_1
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    goto :goto_0

    .line 219
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 501
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->stop()V

    .line 503
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Uninit()I

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->removeView()V

    .line 507
    iput v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_buffer:I

    .line 508
    iput-boolean v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playQueued:Z

    .line 509
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_timeBeforeSuspend:I

    .line 510
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 511
    return-void
.end method

.method public duration()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 233
    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v1, :cond_0

    .line 245
    :goto_0
    :pswitch_0
    return v0

    .line 236
    :cond_0
    sget-object v1, Lcom/ooyala/android/VisualOnStreamPlayer$3;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v2}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 245
    :pswitch_1
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetDuration()I

    move-result v0

    goto :goto_0

    .line 236
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

.method public getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$SeekStyle;->BASIC:Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    return-object v0
.end method

.method public init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V
    .locals 3
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
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Using VOPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {p2}, Lcom/ooyala/android/Stream;->bestStream(Ljava/util/Set;)Lcom/ooyala/android/Stream;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ERROR: Invalid Stream (no valid stream available)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string/jumbo v0, "Invalid Stream"

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_error:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 147
    :goto_0
    return-void

    .line 130
    :cond_0
    if-nez p1, :cond_1

    .line 131
    const-string/jumbo v0, "Invalid Parent"

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_error:Ljava/lang/String;

    .line 132
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0

    .line 136
    :cond_1
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v1}, Lcom/ooyala/android/VisualOnStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 137
    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->decodedURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_streamUrl:Ljava/lang/String;

    .line 138
    invoke-virtual {p0, p1}, Lcom/ooyala/android/VisualOnStreamPlayer;->setParent(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 142
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "voVidDec.dat"

    const-string/jumbo v2, "voVidDec.dat"

    invoke-static {v0, v1, v2}, Lcom/ooyala/android/VisualOnStreamPlayer;->copyfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "cap.xml"

    const-string/jumbo v2, "cap.xml"

    invoke-static {v0, v1, v2}, Lcom/ooyala/android/VisualOnStreamPlayer;->copyfile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setupView()V

    goto :goto_0
.end method

.method public isLiveClosedCaptionsAvailable()Z
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_isLiveClosedCaptionsAvailable:Z

    return v0
.end method

.method public onError(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;II)Z
    .locals 2

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "voOSPBasePlayer Error: "

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

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_error:Ljava/lang/String;

    .line 348
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method public onEvent(IIILjava/lang/Object;)I
    .locals 7

    .prologue
    const v1, 0x2000010

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 588
    if-ne p1, v1, :cond_1

    .line 589
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->READY:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 719
    :cond_0
    :goto_0
    return v3

    .line 591
    :cond_1
    const v0, 0x2000030

    if-ne p1, v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 600
    :pswitch_0
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnEvent VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_BITRATE_CHANGE, param2 is %d . "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 609
    :pswitch_1
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnEvent VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE, param2 is %d . "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 616
    :pswitch_2
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "OnEvent VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE, VOOSMP_AVAILABLE_PUREAUDIO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :pswitch_3
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "OnEvent VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE, VOOSMP_AVAILABLE_PUREVIDEO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :pswitch_4
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "OnEvent VOOSMP_SRC_ADAPTIVE_STREAMING_INFO_EVENT_MEDIATYPE_CHANGE, VOOSMP_AVAILABLE_AUDIOVIDEO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 637
    :cond_2
    const v0, -0x7ffffff4

    if-ne p1, v0, :cond_3

    .line 640
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent: Error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {p0, v0, v5, v3}, Lcom/ooyala/android/VisualOnStreamPlayer;->onError(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;II)Z

    goto/16 :goto_0

    .line 643
    :cond_3
    if-ne p1, v5, :cond_4

    .line 644
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "onEvent: Play Complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->currentItemCompleted()V

    goto/16 :goto_0

    .line 647
    :cond_4
    const/16 v0, 0xd

    if-ne p1, v0, :cond_5

    .line 649
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "onEvent: Seek Complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->dequeuePlay()V

    goto/16 :goto_0

    .line 652
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 654
    iput p2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_buffer:I

    goto/16 :goto_0

    .line 656
    :cond_6
    const/16 v0, 0xf

    if-ne p1, v0, :cond_7

    .line 659
    iput p2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_videoWidth:I

    .line 660
    iput p3, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_videoHeight:I

    .line 661
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent: Video Size Changed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_videoWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_videoHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 668
    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 670
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent: Buffering Done! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 672
    :cond_8
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 674
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent: Buffering Starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 676
    :cond_9
    const v0, -0x7dfffffa

    if-eq p1, v0, :cond_a

    const v0, -0x7dfffff9

    if-eq p1, v0, :cond_a

    const v0, -0x7dfffff8

    if-eq p1, v0, :cond_a

    const v0, -0x7dfffff7

    if-eq p1, v0, :cond_a

    const v0, -0x7dfffff6

    if-eq p1, v0, :cond_a

    const v0, 0x200000c

    if-eq p1, v0, :cond_a

    const v0, -0x7dfffff3

    if-ne p1, v0, :cond_b

    .line 685
    :cond_a
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {p0, v0, p1, v3}, Lcom/ooyala/android/VisualOnStreamPlayer;->onError(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;II)Z

    goto/16 :goto_0

    .line 687
    :cond_b
    const v0, 0x200000b

    if-ne p1, v0, :cond_c

    .line 689
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnEvent VOOSMP_SRC_CB_BA_Happened, param is %d . "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    :cond_c
    const v0, -0x7dfffff2

    if-ne p1, v0, :cond_d

    .line 691
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnEvent VOOSMP_SRC_CB_Download_Fail_Waiting_Recover, param is %d . "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 694
    :cond_d
    const v0, 0x200000f

    if-ne p1, v0, :cond_e

    .line 695
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnEvent VOOSMP_SRC_CB_Download_Fail_Recover_Success, param is %d . "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 698
    :cond_e
    if-ne p1, v1, :cond_f

    .line 699
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnEvent VOOSMP_SRC_CB_Open_Finished, param is %d . "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 700
    :cond_f
    const/16 v0, 0x2001

    if-ne p1, v0, :cond_11

    .line 704
    check-cast p4, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    .line 705
    invoke-virtual {p0, p4}, Lcom/ooyala/android/VisualOnStreamPlayer;->GetCCString(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;)Ljava/lang/String;

    move-result-object v0

    .line 706
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 707
    iput-boolean v5, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_isLiveClosedCaptionsAvailable:Z

    .line 711
    :cond_10
    iget-boolean v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_isLiveClosedCaptionsEnabled:Z

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/OoyalaPlayer;->displayClosedCaptionText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 715
    :cond_11
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnEvent UNHANDLED MESSAGE!, id is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". param is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 614
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onRequest(IIILjava/lang/Object;)I
    .locals 3

    .prologue
    .line 580
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequest arg0 is %d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playQueued:Z

    .line 152
    sget-object v0, Lcom/ooyala/android/VisualOnStreamPlayer$3;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->stopPlayheadTimer()V

    .line 155
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Pause()I

    .line 156
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public play()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iput-boolean v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playQueued:Z

    .line 165
    sget-object v0, Lcom/ooyala/android/VisualOnStreamPlayer$3;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Play: invalid status?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->queuePlay()V

    .line 169
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "Play: still laoding, queued"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :pswitch_1
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "Play: ready - about to run"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_timeBeforeSuspend:I

    if-ltz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    iget v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_timeBeforeSuspend:I

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetPos(I)I

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_timeBeforeSuspend:I

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Run()I

    move-result v0

    .line 180
    if-nez v0, :cond_1

    .line 181
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "MediaPlayer run."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_1
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 186
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->startPlayheadTimer()V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {p0, v1, v0, v2}, Lcom/ooyala/android/VisualOnStreamPlayer;->onError(Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;II)Z

    goto :goto_1

    .line 189
    :pswitch_2
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->queuePlay()V

    .line 190
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Play: Suspended already. re-queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 209
    const/4 v0, 0x0

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/VisualOnStreamPlayer;->suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 210
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setupView()V

    .line 211
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->resume()V

    .line 212
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_timeBeforeSuspend:I

    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/VisualOnStreamPlayer;->resume(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 497
    return-void
.end method

.method public resume(ILcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 2

    .prologue
    .line 483
    iput p1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_timeBeforeSuspend:I

    .line 484
    iput-object p2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 486
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "Player Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_2

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->play()V

    .line 493
    :cond_1
    :goto_0
    return-void

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->COMPLETED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_1

    .line 491
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->queueCompleted()V

    goto :goto_0
.end method

.method public seekToTime(I)V
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    const-string/jumbo v0, "VisualOnStreamPlayer"

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

    .line 259
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetPos(I)I

    goto :goto_0
.end method

.method public setLiveClosedCaptionsEnabled(Z)V
    .locals 0

    .prologue
    .line 770
    iput-boolean p1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_isLiveClosedCaptionsEnabled:Z

    .line 771
    return-void
.end method

.method public setParent(Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 0

    .prologue
    .line 392
    invoke-super {p0, p1}, Lcom/ooyala/android/StreamPlayer;->setParent(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 393
    return-void
.end method

.method protected setState(Lcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 3

    .prologue
    .line 556
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ooyala/android/OoyalaPlayer$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-super {p0, p1}, Lcom/ooyala/android/StreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 558
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->dequeueAll()V

    .line 559
    return-void
.end method

.method protected startPlayheadTimer()V
    .locals 6

    .prologue
    .line 563
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->stopPlayheadTimer()V

    .line 566
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    .line 567
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ooyala/android/VisualOnStreamPlayer$PlayheadUpdateTimerTask;

    invoke-direct {v1, p0}, Lcom/ooyala/android/VisualOnStreamPlayer$PlayheadUpdateTimerTask;-><init>(Lcom/ooyala/android/VisualOnStreamPlayer;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 569
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 200
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "MediaPlayer stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->stopPlayheadTimer()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playQueued:Z

    .line 203
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Stop()I

    .line 204
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Close()I

    .line 205
    return-void
.end method

.method protected stopPlayheadTimer()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playheadUpdateTimer:Ljava/util/Timer;

    .line 576
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 354
    const-string/jumbo v0, "VisualOnStreamPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Surface Changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x1027

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 365
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 369
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "Surface Created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/16 v1, 0x33

    iget-object v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v2}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetParam(ILjava/lang/Object;)I

    .line 379
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->createMediaPlayer()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 383
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "Surface Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Stop()I

    .line 386
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetView(Landroid/view/SurfaceView;)V

    .line 388
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->GetPos()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/VisualOnStreamPlayer;->suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V

    .line 459
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 463
    const-string/jumbo v0, "VisualOnStreamPlayer"

    const-string/jumbo v1, "Player Suspend"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    if-eqz v0, :cond_1

    .line 468
    iput p1, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_timeBeforeSuspend:I

    .line 469
    iput-object p2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_stateBeforeSuspend:Lcom/ooyala/android/OoyalaPlayer$State;

    .line 470
    invoke-virtual {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->stop()V

    .line 471
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0, v3}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->SetView(Landroid/view/SurfaceView;)V

    .line 472
    iget-object v0, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    invoke-virtual {v0}, Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;->Uninit()I

    .line 473
    iput-object v3, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_player:Lcom/visualon/OSMPBasePlayer/voOSBasePlayer;

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/ooyala/android/VisualOnStreamPlayer;->removeView()V

    .line 476
    iput v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_buffer:I

    .line 477
    iput-boolean v2, p0, Lcom/ooyala/android/VisualOnStreamPlayer;->_playQueued:Z

    .line 478
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/VisualOnStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0
.end method
