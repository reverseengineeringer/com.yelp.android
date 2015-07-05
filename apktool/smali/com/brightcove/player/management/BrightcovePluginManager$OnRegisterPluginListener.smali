.class public Lcom/brightcove/player/management/BrightcovePluginManager$OnRegisterPluginListener;
.super Ljava/lang/Object;
.source "BrightcovePluginManager.java"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/management/BrightcovePluginManager;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/management/BrightcovePluginManager;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/brightcove/player/management/BrightcovePluginManager$OnRegisterPluginListener;->this$0:Lcom/brightcove/player/management/BrightcovePluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation runtime Lcom/brightcove/player/event/Default;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "pluginName"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "pluginName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    # getter for: Lcom/brightcove/player/management/BrightcovePluginManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/brightcove/player/management/BrightcovePluginManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnRegisterPluginListener: plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/brightcove/player/management/BrightcovePluginManager$OnRegisterPluginListener;->this$0:Lcom/brightcove/player/management/BrightcovePluginManager;

    # getter for: Lcom/brightcove/player/management/BrightcovePluginManager;->pluginsInUse:Ljava/util/List;
    invoke-static {v1}, Lcom/brightcove/player/management/BrightcovePluginManager;->access$100(Lcom/brightcove/player/management/BrightcovePluginManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/brightcove/player/management/BrightcovePluginManager$OnRegisterPluginListener;->this$0:Lcom/brightcove/player/management/BrightcovePluginManager;

    # getter for: Lcom/brightcove/player/management/BrightcovePluginManager;->pluginsInUse:Ljava/util/List;
    invoke-static {v1}, Lcom/brightcove/player/management/BrightcovePluginManager;->access$100(Lcom/brightcove/player/management/BrightcovePluginManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    return-void
.end method
