.class Lcom/yelp/android/appdata/webrequests/co$3;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/co;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/co$3;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/j;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 362
    .line 365
    invoke-virtual {p2}, Lcom/yelp/android/serializable/j;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    const/16 v1, 0xb

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getExceptionForCode(ILorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ApiException;

    move-result-object v0

    .line 370
    :cond_0
    check-cast p1, Lcom/yelp/android/appdata/webrequests/cp;

    .line 371
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co$3;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/cp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/appdata/webrequests/co;Ljava/lang/String;Lcom/yelp/android/serializable/j;)V

    .line 374
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co$3;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v1, p2}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/j;)V

    .line 375
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co$3;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 376
    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/j;->i()V

    .line 377
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->FirstName:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 357
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co$3;->a:Lcom/yelp/android/appdata/webrequests/co;

    invoke-static {v0, p2}, Lcom/yelp/android/appdata/webrequests/co;->b(Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 358
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 353
    check-cast p2, Lcom/yelp/android/serializable/j;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/co$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/j;)V

    return-void
.end method
