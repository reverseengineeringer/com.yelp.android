.class Lcom/brightcove/player/view/BrightcoveVideoView$12;
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
    .line 561
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$12;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$12;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    const/4 v1, 0x1

    # invokes: Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentlyPlaying(Z)V
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$600(Lcom/brightcove/player/view/BrightcoveVideoView;Z)V

    .line 566
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$12;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    invoke-virtual {v0}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$12;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$12;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$12;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    # invokes: Lcom/brightcove/player/view/BrightcoveVideoView;->prebufferNextVideo()V
    invoke-static {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$1000(Lcom/brightcove/player/view/BrightcoveVideoView;)V

    .line 571
    return-void
.end method
