.class public Lcom/brightcove/player/media/tasks/FindVideoTask;
.super Lcom/brightcove/player/media/tasks/FindMediaTask;
.source "FindVideoTask.java"

# interfaces
.implements Lcom/brightcove/player/event/Component;


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {}
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {}
.end annotation


# direct methods
.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Lcom/brightcove/player/event/Event;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/brightcove/player/media/tasks/FindMediaTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method


# virtual methods
.method public findVideoById(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    const-string/jumbo v0, "find_video_by_id"

    const-string/jumbo v1, "video_id"

    invoke-virtual {p0, v0, v1, p1}, Lcom/brightcove/player/media/tasks/FindVideoTask;->executeWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public findVideoByReferenceId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    const-string/jumbo v0, "find_video_by_reference_id"

    const-string/jumbo v1, "reference_id"

    invoke-virtual {p0, v0, v1, p1}, Lcom/brightcove/player/media/tasks/FindVideoTask;->executeWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/media/tasks/FindVideoTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No data was found that matched your request. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/brightcove/player/media/tasks/FindVideoTask;->uri:Ljava/net/URI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/brightcove/player/media/tasks/FindVideoTask;->event:Lcom/brightcove/player/event/Event;

    iget-object v1, v1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v2, "errors"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/brightcove/player/media/tasks/FindVideoTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    iget-object v1, p0, Lcom/brightcove/player/media/tasks/FindVideoTask;->event:Lcom/brightcove/player/event/Event;

    invoke-interface {v0, v1}, Lcom/brightcove/player/event/EventEmitter;->respond(Lcom/brightcove/player/event/Event;)V

    .line 88
    return-void

    .line 69
    :cond_0
    const-string/jumbo v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    :try_start_0
    const-string/jumbo v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    const-string/jumbo v1, "mediaRequestInvalidJSON"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/brightcove/player/media/tasks/FindVideoTask;->uri:Ljava/net/URI;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/brightcove/player/media/tasks/FindVideoTask;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-static {p1, v1, v0}, Lcom/brightcove/player/media/MediaService;->buildVideoFromJSON(Lorg/json/JSONObject;Lcom/brightcove/player/event/EventEmitter;Ljava/util/List;)Lcom/brightcove/player/model/Video;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/brightcove/player/media/tasks/FindVideoTask;->event:Lcom/brightcove/player/event/Event;

    iget-object v2, v2, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v3, "video"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 79
    :catch_1
    move-exception v1

    .line 80
    const-string/jumbo v1, "mediaRequestInvalidJSON"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/brightcove/player/media/tasks/FindVideoTask;->uri:Ljava/net/URI;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :catch_2
    move-exception v1

    .line 82
    const-string/jumbo v1, "mediaRequestNoJSON"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/brightcove/player/media/tasks/FindVideoTask;->uri:Ljava/net/URI;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
