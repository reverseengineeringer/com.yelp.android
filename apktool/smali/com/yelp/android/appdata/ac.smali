.class Lcom/yelp/android/appdata/ac;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "NotificationsCountController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/serializable/AlertsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/ab;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/ab;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/yelp/android/appdata/ac;->a:Lcom/yelp/android/appdata/ab;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/AlertsResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/appdata/ac;->a:Lcom/yelp/android/appdata/ab;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->getUnreadMessageCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/ab;->a(Lcom/yelp/android/appdata/ab;I)V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/appdata/ac;->a:Lcom/yelp/android/appdata/ab;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/ab;->b(Lcom/yelp/android/appdata/ab;I)V

    .line 159
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

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
    .line 149
    iget-object v0, p0, Lcom/yelp/android/appdata/ac;->a:Lcom/yelp/android/appdata/ab;

    invoke-static {v0}, Lcom/yelp/android/appdata/ab;->a(Lcom/yelp/android/appdata/ab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/yelp/android/appdata/ac;->a:Lcom/yelp/android/appdata/ab;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ab;->i()V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/appdata/ac;->a:Lcom/yelp/android/appdata/ab;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/ab;->a(Lcom/yelp/android/appdata/ab;Z)Z

    .line 153
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 141
    check-cast p2, Lcom/yelp/android/serializable/AlertsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/ac;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/AlertsResponse;)V

    return-void
.end method
