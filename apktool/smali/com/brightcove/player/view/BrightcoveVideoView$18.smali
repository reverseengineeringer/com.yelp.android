.class Lcom/brightcove/player/view/BrightcoveVideoView$18;
.super Ljava/lang/Object;
.source "BrightcoveVideoView.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BrightcoveVideoView;->prebufferNextVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

.field final synthetic val$video:Lcom/brightcove/player/model/Video;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveVideoView;Lcom/brightcove/player/model/Video;)V
    .locals 0

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$18;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iput-object p2, p0, Lcom/brightcove/player/view/BrightcoveVideoView$18;->val$video:Lcom/brightcove/player/model/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4

    .prologue
    .line 1194
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "source"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    .line 1195
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$18;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->videoToSourceMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$1100(Lcom/brightcove/player/view/BrightcoveVideoView;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView$18;->val$video:Lcom/brightcove/player/model/Video;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$18;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v1, v1, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "didSelectSource"

    iget-object v3, p0, Lcom/brightcove/player/view/BrightcoveVideoView$18;->val$video:Lcom/brightcove/player/model/Video;

    invoke-static {v1, v2, v3, v0}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 1197
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$18;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v1, v1, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "prebufferNextVideo"

    iget-object v3, p0, Lcom/brightcove/player/view/BrightcoveVideoView$18;->val$video:Lcom/brightcove/player/model/Video;

    invoke-static {v1, v2, v3, v0}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;Lcom/brightcove/player/model/Source;)V

    .line 1198
    return-void
.end method
