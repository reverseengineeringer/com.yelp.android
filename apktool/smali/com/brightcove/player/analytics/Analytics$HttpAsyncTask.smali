.class Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;
.super Landroid/os/AsyncTask;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field httpService:Lcom/brightcove/player/media/HttpService;

.field final synthetic this$0:Lcom/brightcove/player/analytics/Analytics;


# direct methods
.method public constructor <init>(Lcom/brightcove/player/analytics/Analytics;)V
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 393
    iput-object p1, p0, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->this$0:Lcom/brightcove/player/analytics/Analytics;

    .line 394
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 396
    new-instance v0, Lcom/brightcove/player/media/HttpService;

    invoke-direct {v0, v1, v1}, Lcom/brightcove/player/media/HttpService;-><init>(II)V

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->httpService:Lcom/brightcove/player/media/HttpService;

    .line 397
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 390
    check-cast p1, [Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->doInBackground([Ljava/util/Map;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/util/Map;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 403
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 405
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 406
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 410
    :cond_0
    :try_start_0
    const-string/jumbo v0, "http://metrics.brightcove.com/tracker"

    invoke-static {v0, v1}, Lcom/brightcove/player/media/HttpService;->buildURIWithQueryParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URI;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->httpService:Lcom/brightcove/player/media/HttpService;

    invoke-virtual {v1, v0}, Lcom/brightcove/player/media/HttpService;->doGetRequest(Ljava/net/URI;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 426
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$700(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "error"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 415
    :catch_1
    move-exception v0

    .line 416
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$800(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "error"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 418
    :catch_2
    move-exception v0

    .line 419
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$900(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "error"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 421
    :catch_3
    move-exception v0

    .line 422
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->this$0:Lcom/brightcove/player/analytics/Analytics;

    # getter for: Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;
    invoke-static {v1}, Lcom/brightcove/player/analytics/Analytics;->access$1000(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;

    move-result-object v1

    const-string/jumbo v2, "error"

    const-string/jumbo v3, "error"

    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method
