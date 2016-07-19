.class Lcom/yelp/android/ui/activities/FacebookConnectManager$1;
.super Ljava/lang/Object;
.source "FacebookConnectManager.java"

# interfaces
.implements Lcom/facebook/GraphRequest$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yelp/android/ui/activities/FacebookConnectManager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    iput-boolean p2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 3

    .prologue
    .line 356
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->a()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 357
    if-nez v0, :cond_0

    if-nez p1, :cond_2

    .line 358
    :cond_0
    if-eqz v0, :cond_1

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Facebook Fetch User Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    .line 391
    :goto_0
    return-void

    .line 368
    :cond_2
    :try_start_0
    sget-object v0, Lcom/yelp/android/serializable/FacebookUser;->CREATOR:Lcom/yelp/android/serializable/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FacebookUser;

    .line 370
    if-nez v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
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

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 375
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Lcom/yelp/android/serializable/FacebookUser;)Lcom/yelp/android/serializable/FacebookUser;

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager$a;->c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 378
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->a:Z

    if-eqz v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;

    goto :goto_0

    .line 381
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/b;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/b;->hideLoadingDialog()V

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$1;->b:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
