.class Lcom/brightcove/player/view/BrightcoveVideoView$3;
.super Ljava/lang/Object;
.source "BrightcoveVideoView.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/view/BrightcoveVideoView;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveVideoView;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$3;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$3;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "stop"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 449
    return-void
.end method
