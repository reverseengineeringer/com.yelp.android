.class Lcom/brightcove/player/view/BrightcoveVideoView$10;
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
    .line 538
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$10;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 541
    const-string/jumbo v0, "playheadPosition"

    invoke-virtual {p1, v0}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v0

    .line 542
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$10;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    iput v0, v1, Lcom/brightcove/player/view/BrightcoveVideoView;->playheadPosition:I

    .line 545
    :cond_0
    return-void
.end method
