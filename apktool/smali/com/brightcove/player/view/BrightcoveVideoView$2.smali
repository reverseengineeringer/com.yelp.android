.class Lcom/brightcove/player/view/BrightcoveVideoView$2;
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
    .line 436
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$2;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$2;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    # invokes: Lcom/brightcove/player/view/BrightcoveVideoView;->setupSeekControls(Lcom/brightcove/player/event/Event;)V
    invoke-static {v0, p1}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$000(Lcom/brightcove/player/view/BrightcoveVideoView;Lcom/brightcove/player/event/Event;)V

    .line 441
    return-void
.end method
