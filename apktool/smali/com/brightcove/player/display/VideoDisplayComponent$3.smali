.class Lcom/brightcove/player/display/VideoDisplayComponent$3;
.super Ljava/lang/Object;
.source "VideoDisplayComponent.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 832
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$3;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3

    .prologue
    .line 835
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 836
    const-string/jumbo v1, "percentComplete"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$3;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2900(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string/jumbo v2, "bufferedUpdate"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 838
    return-void
.end method
