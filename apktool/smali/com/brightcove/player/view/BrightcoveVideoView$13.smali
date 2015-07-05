.class Lcom/brightcove/player/view/BrightcoveVideoView$13;
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
    .line 574
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$13;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$13;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->resetMetaData()V

    .line 578
    return-void
.end method
