.class Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;
.super Ljava/lang/Object;
.source "VideoStillDisplayComponent.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/display/VideoStillDisplayComponent;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/display/VideoStillDisplayComponent;Lcom/brightcove/player/display/VideoStillDisplayComponent$1;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;-><init>(Lcom/brightcove/player/display/VideoStillDisplayComponent;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 5
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 107
    sget-object v0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "OnSetVideoStill"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # invokes: Lcom/brightcove/player/display/VideoStillDisplayComponent;->recycle()V
    invoke-static {v0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$300(Lcom/brightcove/player/display/VideoStillDisplayComponent;)V

    .line 111
    new-instance v0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;

    iget-object v1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;-><init>(Lcom/brightcove/player/display/VideoStillDisplayComponent;Lcom/brightcove/player/display/VideoStillDisplayComponent$1;)V

    .line 112
    iget-object v1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    iget-object v2, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$1300(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    const-string/jumbo v3, "cuePoint"

    invoke-interface {v2, v3, v0}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v2

    # setter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->cuePointListenerToken:I
    invoke-static {v1, v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$402(Lcom/brightcove/player/display/VideoStillDisplayComponent;I)I

    .line 113
    iget-object v1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    iget-object v2, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$1400(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    const-string/jumbo v3, "didPlay"

    invoke-interface {v2, v3, v0}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v2

    # setter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->didPlayListenerToken:I
    invoke-static {v1, v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$602(Lcom/brightcove/player/display/VideoStillDisplayComponent;I)I

    .line 114
    iget-object v1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    iget-object v2, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$1500(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    const-string/jumbo v3, "didSeekTo"

    invoke-interface {v2, v3, v0}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v2

    # setter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->didSeekToListenerToken:I
    invoke-static {v1, v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$802(Lcom/brightcove/player/display/VideoStillDisplayComponent;I)I

    .line 115
    iget-object v1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    iget-object v2, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$1600(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v2

    const-string/jumbo v3, "willInterruptContent"

    invoke-interface {v2, v3, v0}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v0

    # setter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->willInterruptContentListenerToken:I
    invoke-static {v1, v0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$1002(Lcom/brightcove/player/display/VideoStillDisplayComponent;I)I

    .line 116
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "video_still"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 117
    iget-object v1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    new-instance v2, Lcom/brightcove/player/display/tasks/LoadImageTask;

    iget-object v3, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->view:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$100(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v4}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$1700(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/brightcove/player/display/tasks/LoadImageTask;-><init>(Landroid/widget/ImageView;Lcom/brightcove/player/event/EventEmitter;)V

    # setter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->task:Lcom/brightcove/player/display/tasks/LoadImageTask;
    invoke-static {v1, v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$202(Lcom/brightcove/player/display/VideoStillDisplayComponent;Lcom/brightcove/player/display/tasks/LoadImageTask;)Lcom/brightcove/player/display/tasks/LoadImageTask;

    .line 118
    iget-object v1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->task:Lcom/brightcove/player/display/tasks/LoadImageTask;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$200(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/display/tasks/LoadImageTask;

    move-result-object v1

    const-string/jumbo v2, "didSetVideoStill"

    invoke-virtual {v1, v2}, Lcom/brightcove/player/display/tasks/LoadImageTask;->setSuccessEventType(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$OnSetVideoStill;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->task:Lcom/brightcove/player/display/tasks/LoadImageTask;
    invoke-static {v1}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$200(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/display/tasks/LoadImageTask;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/net/URI;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/brightcove/player/display/tasks/LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method
