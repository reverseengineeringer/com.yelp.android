.class Lcom/brightcove/player/view/BrightcoveVideoView$16;
.super Ljava/lang/Object;
.source "BrightcoveVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveVideoView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V
    .locals 0

    .prologue
    .line 679
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->canPause()Z

    move-result v0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->canSeekBackward()Z

    move-result v0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->canSeekForward()Z

    move-result v0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 732
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->pause()V

    .line 688
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->seekTo(I)V

    .line 703
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$16;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->start()V

    .line 683
    return-void
.end method
