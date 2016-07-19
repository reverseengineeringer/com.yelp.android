.class Lcom/brightcove/player/view/BrightcoveVideoView$11;
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
    .line 548
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$11;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$11;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    const/4 v1, 0x1

    # setter for: Lcom/brightcove/player/view/BrightcoveVideoView;->hasSetSource:Z
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$802(Lcom/brightcove/player/view/BrightcoveVideoView;Z)Z

    .line 554
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$11;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->hasPendingPlay:Z
    invoke-static {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$900(Lcom/brightcove/player/view/BrightcoveVideoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$11;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    const/4 v1, 0x0

    # setter for: Lcom/brightcove/player/view/BrightcoveVideoView;->hasPendingPlay:Z
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$902(Lcom/brightcove/player/view/BrightcoveVideoView;Z)Z

    .line 556
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$11;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "play"

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;)V

    .line 558
    :cond_0
    return-void
.end method
