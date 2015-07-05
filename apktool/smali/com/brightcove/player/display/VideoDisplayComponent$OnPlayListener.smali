.class Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;
.super Ljava/lang/Object;
.source "VideoDisplayComponent.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 478
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnPlayListener: mediaPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hasPrepared = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z
    invoke-static {v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$800(Lcom/brightcove/player/display/VideoDisplayComponent;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hasSurface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-boolean v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # setter for: Lcom/brightcove/player/display/VideoDisplayComponent;->hasPlaybackStarted:Z
    invoke-static {v0, v3}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1002(Lcom/brightcove/player/display/VideoDisplayComponent;Z)Z

    .line 486
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    if-eqz v0, :cond_5

    .line 489
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "playheadPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    const-string/jumbo v0, "playheadPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 497
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$800(Lcom/brightcove/player/display/VideoDisplayComponent;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 498
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-boolean v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    if-eqz v1, :cond_2

    .line 499
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # invokes: Lcom/brightcove/player/display/VideoDisplayComponent;->play(I)V
    invoke-static {v1, v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1700(Lcom/brightcove/player/display/VideoDisplayComponent;I)V

    .line 543
    :goto_1
    return-void

    .line 492
    :cond_0
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnPlayListener: playheadPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    goto :goto_0

    .line 502
    :cond_1
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Already playing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 505
    :cond_2
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OnPlayListener: Surface is not available yet."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1800(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string/jumbo v2, "readyToPlay"

    new-instance v3, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$1;

    invoke-direct {v3, p0, v0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$1;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;I)V

    invoke-interface {v1, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    goto :goto_1

    .line 515
    :cond_3
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OnPlayListener: MediaPlayer has not been prepared yet."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1900(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string/jumbo v2, "didSetSource"

    new-instance v3, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$2;

    invoke-direct {v3, p0, v0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$2;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;I)V

    invoke-interface {v1, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    goto :goto_1

    .line 526
    :cond_4
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iput v3, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    .line 529
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "OnPlayListener: MediaPlayer was null - creating a new one."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2000(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string/jumbo v2, "didSetSource"

    new-instance v3, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$3;

    invoke-direct {v3, p0, v0}, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener$3;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;I)V

    invoke-interface {v1, v2, v3}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 538
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnPlayListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->currentSource:Lcom/brightcove/player/model/Source;

    invoke-virtual {v0, v1, v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->openVideo(Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    goto/16 :goto_1

    .line 541
    :cond_5
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Source has not been set yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
