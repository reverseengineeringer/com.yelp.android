.class Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;
.super Ljava/lang/Object;
.source "VideoStillDisplayComponent.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/display/VideoStillDisplayComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HideListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/display/VideoStillDisplayComponent;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/display/VideoStillDisplayComponent;Lcom/brightcove/player/display/VideoStillDisplayComponent$1;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;-><init>(Lcom/brightcove/player/display/VideoStillDisplayComponent;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcom/brightcove/player/display/VideoStillDisplayComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "OnHideListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->view:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$100(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->task:Lcom/brightcove/player/display/tasks/LoadImageTask;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$200(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/display/tasks/LoadImageTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->task:Lcom/brightcove/player/display/tasks/LoadImageTask;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$200(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/display/tasks/LoadImageTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/brightcove/player/display/tasks/LoadImageTask;->cancel(Z)Z

    .line 87
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    const/4 v1, 0x0

    # setter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->task:Lcom/brightcove/player/display/tasks/LoadImageTask;
    invoke-static {v0, v1}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$202(Lcom/brightcove/player/display/VideoStillDisplayComponent;Lcom/brightcove/player/display/tasks/LoadImageTask;)Lcom/brightcove/player/display/tasks/LoadImageTask;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # invokes: Lcom/brightcove/player/display/VideoStillDisplayComponent;->recycle()V
    invoke-static {v0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$300(Lcom/brightcove/player/display/VideoStillDisplayComponent;)V

    .line 92
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$500(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string/jumbo v1, "cuePoint"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->cuePointListenerToken:I
    invoke-static {v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$400(Lcom/brightcove/player/display/VideoStillDisplayComponent;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$700(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string/jumbo v1, "didPlay"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->didPlayListenerToken:I
    invoke-static {v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$600(Lcom/brightcove/player/display/VideoStillDisplayComponent;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    .line 94
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$900(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string/jumbo v1, "didSeekTo"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->didSeekToListenerToken:I
    invoke-static {v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$800(Lcom/brightcove/player/display/VideoStillDisplayComponent;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    .line 95
    iget-object v0, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v0}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$1100(Lcom/brightcove/player/display/VideoStillDisplayComponent;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v0

    const-string/jumbo v1, "willInterruptContent"

    iget-object v2, p0, Lcom/brightcove/player/display/VideoStillDisplayComponent$HideListener;->this$0:Lcom/brightcove/player/display/VideoStillDisplayComponent;

    # getter for: Lcom/brightcove/player/display/VideoStillDisplayComponent;->willInterruptContentListenerToken:I
    invoke-static {v2}, Lcom/brightcove/player/display/VideoStillDisplayComponent;->access$1000(Lcom/brightcove/player/display/VideoStillDisplayComponent;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    .line 96
    return-void
.end method
