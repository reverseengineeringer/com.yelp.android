.class Lcom/brightcove/player/controller/DefaultSourceSelectionController$OnSelectSourceListener;
.super Ljava/lang/Object;
.source "DefaultSourceSelectionController.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/controller/DefaultSourceSelectionController;


# direct methods
.method private constructor <init>(Lcom/brightcove/player/controller/DefaultSourceSelectionController;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/brightcove/player/controller/DefaultSourceSelectionController$OnSelectSourceListener;->this$0:Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/brightcove/player/controller/DefaultSourceSelectionController;Lcom/brightcove/player/controller/DefaultSourceSelectionController$1;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/brightcove/player/controller/DefaultSourceSelectionController$OnSelectSourceListener;-><init>(Lcom/brightcove/player/controller/DefaultSourceSelectionController;)V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 165
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "video"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/brightcove/player/controller/DefaultSourceSelectionController$OnSelectSourceListener;->this$0:Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->selectSource(Lcom/brightcove/player/model/Video;)Lcom/brightcove/player/model/Source;

    move-result-object v1

    .line 171
    iget-object v2, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v3, "source"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/brightcove/player/controller/DefaultSourceSelectionController$OnSelectSourceListener;->this$0:Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    # getter for: Lcom/brightcove/player/controller/DefaultSourceSelectionController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->access$100(Lcom/brightcove/player/controller/DefaultSourceSelectionController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/brightcove/player/event/EventEmitter;->respond(Lcom/brightcove/player/event/Event;)V
    :try_end_0
    .catch Lcom/brightcove/player/controller/NoSourceFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    sget-object v1, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no usable Source could be found for Video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/brightcove/player/model/Video;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/brightcove/player/controller/DefaultSourceSelectionController$OnSelectSourceListener;->this$0:Lcom/brightcove/player/controller/DefaultSourceSelectionController;

    # getter for: Lcom/brightcove/player/controller/DefaultSourceSelectionController;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/controller/DefaultSourceSelectionController;->access$200(Lcom/brightcove/player/controller/DefaultSourceSelectionController;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string/jumbo v2, "sourceNotFound"

    invoke-static {v1, v2, v0}, Lcom/brightcove/player/util/EventUtil;->emit(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Lcom/brightcove/player/model/Video;)V

    goto :goto_0
.end method
