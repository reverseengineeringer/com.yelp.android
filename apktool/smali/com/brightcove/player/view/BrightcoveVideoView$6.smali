.class Lcom/brightcove/player/view/BrightcoveVideoView$6;
.super Ljava/lang/Object;
.source "BrightcoveVideoView.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BrightcoveVideoView;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveVideoView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$6;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$6;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->onPrepared()V

    .line 493
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$6;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->attachMediaController()V

    .line 496
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "video"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 499
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$6;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    # invokes: Lcom/brightcove/player/view/BrightcoveVideoView;->getCurrentVideo()Lcom/brightcove/player/model/Video;
    invoke-static {v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$200(Lcom/brightcove/player/view/BrightcoveVideoView;)Lcom/brightcove/player/model/Video;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$6;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->videos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$300(Lcom/brightcove/player/view/BrightcoveVideoView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$6;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    # operator++ for: Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I
    invoke-static {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$408(Lcom/brightcove/player/view/BrightcoveVideoView;)I

    .line 505
    :cond_0
    return-void
.end method
