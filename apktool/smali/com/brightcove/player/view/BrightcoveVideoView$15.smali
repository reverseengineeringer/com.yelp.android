.class Lcom/brightcove/player/view/BrightcoveVideoView$15;
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
    .line 588
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$15;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$15;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$15;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 593
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$15;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v1, "progress"

    new-instance v2, Lcom/brightcove/player/view/BrightcoveVideoView$15$1;

    invoke-direct {v2, p0}, Lcom/brightcove/player/view/BrightcoveVideoView$15$1;-><init>(Lcom/brightcove/player/view/BrightcoveVideoView$15;)V

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 600
    :cond_0
    return-void
.end method
