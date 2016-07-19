.class Lcom/brightcove/player/view/BrightcoveVideoView$17;
.super Ljava/lang/Object;
.source "BrightcoveVideoView.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentIndexPrivate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

.field final synthetic val$index:I

.field final synthetic val$uniqueKey:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveVideoView;Ljava/util/UUID;I)V
    .locals 0

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$17;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iput-object p2, p0, Lcom/brightcove/player/view/BrightcoveVideoView$17;->val$uniqueKey:Ljava/util/UUID;

    iput p3, p0, Lcom/brightcove/player/view/BrightcoveVideoView$17;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 1027
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$17;->val$uniqueKey:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$17;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->resetMetaData()V

    .line 1030
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$17;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$17;->val$index:I

    # setter for: Lcom/brightcove/player/view/BrightcoveVideoView;->currentIndex:I
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$402(Lcom/brightcove/player/view/BrightcoveVideoView;I)I

    .line 1032
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "nextVideo"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 1034
    if-eqz v0, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$17;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v1, v1, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "setVideo"

    invoke-static {v1, v2, v0}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;)V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$17;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "setSource"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    goto :goto_0
.end method
