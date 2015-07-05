.class Lcom/yelp/android/ui/activities/fc;
.super Ljava/lang/Object;
.source "FacebookConnectManager.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yelp/android/ui/activities/FacebookConnectManager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    iput-boolean p2, p0, Lcom/yelp/android/ui/activities/fc;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 3

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 349
    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Facebook Fetch User Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    .line 372
    :goto_0
    return-void

    .line 355
    :cond_1
    :try_start_0
    sget-object v1, Lcom/yelp/android/serializable/FacebookUser;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FacebookUser;

    .line 356
    if-nez v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FacebookUser CREATOR Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 359
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Lcom/yelp/android/serializable/FacebookUser;)Lcom/yelp/android/serializable/FacebookUser;

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/fg;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/fg;->c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 361
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/fc;->a:Z

    if-eqz v0, :cond_3

    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/av/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/av/i;)Lcom/yelp/android/av/h;

    goto :goto_0

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ez;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/ez;->hideLoadingDialog()V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fc;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
