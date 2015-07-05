.class Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;
.super Ljava/lang/Object;
.source "VideoDisplayComponent.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoDisplayComponent;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/display/VideoDisplayComponent;Lcom/brightcove/player/display/VideoDisplayComponent$1;)V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;-><init>(Lcom/brightcove/player/display/VideoDisplayComponent;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    iget-object v0, v0, Lcom/brightcove/player/display/VideoDisplayComponent;->brightcoveSurfaceView:Lcom/brightcove/player/view/BrightcoveSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/brightcove/player/view/BrightcoveSurfaceView;->setVisibility(I)V

    .line 694
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "original"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/event/Event;

    .line 696
    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$1200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnWillResumeContentListener: originalEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    if-eqz v0, :cond_0

    .line 699
    iget-object v1, p0, Lcom/brightcove/player/display/VideoDisplayComponent$OnWillResumeContentListener;->this$0:Lcom/brightcove/player/display/VideoDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoDisplayComponent;->access$2800(Lcom/brightcove/player/display/VideoDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 701
    :cond_0
    return-void
.end method
