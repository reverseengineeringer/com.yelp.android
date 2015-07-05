.class Lcom/yelp/android/appdata/webrequests/dg;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/serializable/eq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/appdata/webrequests/dc;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/dc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dg;->b:Lcom/yelp/android/appdata/webrequests/dc;

    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/dg;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

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
    .line 490
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dg;->b:Lcom/yelp/android/appdata/webrequests/dc;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dg;->a:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;Ljava/lang/String;Lcom/yelp/android/serializable/eq;)V

    .line 494
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dg;->b:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/eq;)V

    .line 497
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dg;->b:Lcom/yelp/android/appdata/webrequests/dc;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;ZLcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 498
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x1

    return v0
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
    .line 479
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dg;->b:Lcom/yelp/android/appdata/webrequests/dc;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/dc;ZLcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 480
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 475
    check-cast p2, Lcom/yelp/android/serializable/eq;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/dg;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/eq;)V

    return-void
.end method
