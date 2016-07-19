.class Lcom/brightcove/player/view/BrightcoveVideoView$5;
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
    .line 465
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$5;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 8
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 472
    const-string/jumbo v0, "duration"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 473
    if-le v0, v5, :cond_0

    .line 474
    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Changing duration to %d."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$5;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iput v0, v1, Lcom/brightcove/player/view/BrightcoveVideoView;->duration:I

    .line 478
    :cond_0
    const-string/jumbo v0, "playheadPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 479
    if-le v0, v5, :cond_1

    .line 480
    # getter for: Lcom/brightcove/player/view/BrightcoveVideoView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Changing playheadPosition to %d."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$5;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iput v0, v1, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    .line 483
    :cond_1
    return-void
.end method
