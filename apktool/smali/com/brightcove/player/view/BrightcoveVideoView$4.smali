.class Lcom/brightcove/player/view/BrightcoveVideoView$4;
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
    .line 452
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$4;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$4;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    const-string/jumbo v1, "duration"

    invoke-virtual {p1, v1}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->duration:I

    .line 459
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$4;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$4;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$4;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 462
    :cond_0
    return-void
.end method
