.class Lcom/brightcove/player/display/VideoDisplayComponent$5;
.super Ljava/lang/Object;
.source "VideoDisplayComponent.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/display/VideoDisplayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 870
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 873
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSeekComplete: fromSeekPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I
    invoke-static {v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2100(Lcom/brightcove/player/display/VideoDisplayComponent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", seekPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", currentPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v1, v1, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    if-ge v0, v1, :cond_1

    .line 879
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 891
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iput v3, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    .line 892
    return-void

    .line 880
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I
    invoke-static {v0}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2100(Lcom/brightcove/player/display/VideoDisplayComponent;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 881
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 882
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 883
    const-string/jumbo v2, "playheadPosition"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string/jumbo v1, "seekPosition"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->seekPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string/jumbo v1, "fromSeekPosition"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I
    invoke-static {v2}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2100(Lcom/brightcove/player/display/VideoDisplayComponent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string/jumbo v1, "video"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v2, v2, Lcom/brightcove/player/display/VideoDisplayComponent;->currentVideo:Lcom/brightcove/player/model/Video;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$3200(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string/jumbo v2, "didSeekTo"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 888
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$5;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # setter for: Lcom/brightcove/player/display/VideoDisplayComponent;->fromSeekPosition:I
    invoke-static {v0, v3}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2102(Lcom/brightcove/player/display/VideoDisplayComponent;I)I

    goto :goto_0
.end method
