.class Lcom/brightcove/player/view/BrightcoveVideoView$14;
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
    .line 581
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$14;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$14;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    const/4 v1, 0x0

    # invokes: Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentlyPlaying(Z)V
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$600(Lcom/brightcove/player/view/BrightcoveVideoView;Z)V

    .line 585
    return-void
.end method
