.class Lcom/brightcove/player/view/BrightcoveVideoView$15$1;
.super Ljava/lang/Object;
.source "BrightcoveVideoView.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$1:Lcom/brightcove/player/view/BrightcoveVideoView$15;


# direct methods
.method constructor <init>(Lcom/brightcove/player/view/BrightcoveVideoView$15;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$15$1;->this$1:Lcom/brightcove/player/view/BrightcoveVideoView$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$15$1;->this$1:Lcom/brightcove/player/view/BrightcoveVideoView$15;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView$15;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iget-object v0, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 597
    return-void
.end method
