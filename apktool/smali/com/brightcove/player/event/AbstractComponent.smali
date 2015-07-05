.class public abstract Lcom/brightcove/player/event/AbstractComponent;
.super Ljava/lang/Object;
.source "AbstractComponent.java"

# interfaces
.implements Lcom/brightcove/player/event/Component;


# instance fields
.field protected eventEmitter:Lcom/brightcove/player/event/EventEmitter;

.field protected listenerTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/brightcove/player/event/Component;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "eventEmitterRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    invoke-static {p1, p2}, Lcom/brightcove/player/event/RegisteringEventEmitter;->build(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)Lcom/brightcove/player/event/RegisteringEventEmitter;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/event/AbstractComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/event/AbstractComponent;->listenerTokens:Ljava/util/Map;

    .line 48
    return-void
.end method


# virtual methods
.method protected addListener(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/brightcove/player/event/AbstractComponent;->listenerTokens:Ljava/util/Map;

    iget-object v1, p0, Lcom/brightcove/player/event/AbstractComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v1, p1, p2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public getEventEmitter()Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/brightcove/player/event/AbstractComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method protected removeListeners()V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/brightcove/player/event/AbstractComponent;->listenerTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    iget-object v3, p0, Lcom/brightcove/player/event/AbstractComponent;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    iget-object v1, p0, Lcom/brightcove/player/event/AbstractComponent;->listenerTokens:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/brightcove/player/event/AbstractComponent;->listenerTokens:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 68
    return-void
.end method
