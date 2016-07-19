.class Lcom/brightcove/player/view/BrightcoveVideoView$8;
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
    .line 521
    iput-object p1, p0, Lcom/brightcove/player/view/BrightcoveVideoView$8;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/brightcove/player/view/BrightcoveVideoView$8;->this$0:Lcom/brightcove/player/view/BrightcoveVideoView;

    const-string/jumbo v1, "percentComplete"

    invoke-virtual {p1, v1}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/brightcove/player/view/BrightcoveVideoView;->bufferedPercent:I
    invoke-static {v0, v1}, Lcom/brightcove/player/view/BrightcoveVideoView;->access$702(Lcom/brightcove/player/view/BrightcoveVideoView;I)I

    .line 525
    return-void
.end method
