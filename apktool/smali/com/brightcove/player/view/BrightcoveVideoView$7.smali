.class Lcom/brightcove/player/view/BrightcoveVideoView$7;
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
    .line 508
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$7;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$7;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$500(Lcom/brightcove/player/view/BrightcoveVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$7;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$500(Lcom/brightcove/player/view/BrightcoveVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$7;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iput v2, v0, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    .line 517
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$7;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    # invokes: Lcom/brightcove/player/view/BrightcoveVideoView;->setCurrentlyPlaying(Z)V
    invoke-static {v0, v2}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$600(Lcom/brightcove/player/view/BrightcoveVideoView;Z)V

    .line 518
    return-void
.end method
