.class Lcom/yelp/android/appdata/webrequests/df;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/eq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/dc;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/dc;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/df;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/eq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/eq;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 364
    .line 367
    invoke-virtual {p2}, Lcom/yelp/android/serializable/eq;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    const/16 v1, 0xb

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getExceptionForCode(ILorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ApiException;

    move-result-object v0

    .line 371
    :cond_0
    check-cast p1, Lcom/yelp/android/appdata/webrequests/dj;

    .line 372
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/df;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/dj;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;Ljava/lang/String;Lcom/yelp/android/serializable/eq;)V

    .line 375
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/df;->a:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v1, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/eq;)V

    .line 376
    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/df;->a:Lcom/yelp/android/appdata/webrequests/dc;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;ZLcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 377
    invoke-static {}, Lcom/yelp/android/appdata/ab;->a()Lcom/yelp/android/appdata/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ab;->i()V

    .line 378
    sget-object v0, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FirstName:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/eq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/analytics/j;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 379
    return-void

    .line 376
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/df;->a:Lcom/yelp/android/appdata/webrequests/dc;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;ZLcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 360
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 355
    check-cast p2, Lcom/yelp/android/serializable/eq;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/df;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/eq;)V

    return-void
.end method
