.class public Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;
.super Ljava/lang/Object;
.source "VideoDisplayComponent.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 579
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnSeekListener: mediaPlayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/4 v0, -0x1

    .line 582
    iget-object v1, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v2, "seekPosition"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const-string/jumbo v0, "seekPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 588
    :goto_0
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnSeekListener: position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->hasPrepared:Z
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$800(Lcom/brightcove/player/display/VideoDisplayComponent;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-boolean v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->hasSurface:Z

    if-eqz v1, :cond_1

    .line 591
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iput v0, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    .line 592
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->playheadPosition:I

    # setter for: Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I
    invoke-static {v1, v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2102(Lcom/brightcove/player/display/VideoDisplayComponent;I)I

    .line 593
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoDisplayComponent;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 597
    :goto_1
    return-void

    .line 585
    :cond_0
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Seek event must pass the seekPosition property"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 595
    :cond_1
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnSeekListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iput v0, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPositionWhenPrepared:I

    goto :goto_1
.end method
