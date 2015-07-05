.class Lcom/brightcove/player/view/BrightcoveVideoView$19;
.super Ljava/lang/Object;
.source "BrightcoveVideoView.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

.field final synthetic val$pair:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveVideoView;Landroid/util/Pair;)V
    .locals 0

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$19;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iput-object p2, p0, Lcom/brightcove/player/view/BrightcoveVideoView$19;->val$pair:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    .line 1230
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "nextVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 1232
    if-eqz v0, :cond_0

    .line 1233
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$19;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v2, p0, Lcom/brightcove/player/view/BrightcoveVideoView$19;->val$pair:Landroid/util/Pair;

    # invokes: Lcom/brightcove/player/view/BrightcoveVideoView;->addSubtitlePair(Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V
    invoke-static {v1, v0, v2}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$1200(Lcom/brightcove/player/view/BrightcoveVideoView;Lcom/brightcove/player/model/Video;Landroid/util/Pair;)V

    .line 1235
    :cond_0
    return-void
.end method
