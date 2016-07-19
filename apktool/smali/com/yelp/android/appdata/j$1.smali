.class Lcom/yelp/android/appdata/j$1;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "NotificationsCountController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/serializable/AlertsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/j;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/j;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/yelp/android/appdata/j$1;->a:Lcom/yelp/android/appdata/j;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

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
    .line 162
    iget-object v0, p0, Lcom/yelp/android/appdata/j$1;->a:Lcom/yelp/android/appdata/j;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/j;->a(Lcom/yelp/android/appdata/j;I)V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/appdata/j$1;->a:Lcom/yelp/android/appdata/j;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/AlertsResponse;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/j;->b(Lcom/yelp/android/appdata/j;I)V

    .line 164
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 149
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
    .line 154
    iget-object v0, p0, Lcom/yelp/android/appdata/j$1;->a:Lcom/yelp/android/appdata/j;

    invoke-static {v0}, Lcom/yelp/android/appdata/j;->a(Lcom/yelp/android/appdata/j;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yelp/android/appdata/j$1;->a:Lcom/yelp/android/appdata/j;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/j;->i()V

    .line 156
    iget-object v0, p0, Lcom/yelp/android/appdata/j$1;->a:Lcom/yelp/android/appdata/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/j;->a(Lcom/yelp/android/appdata/j;Z)Z

    .line 158
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p2, Lcom/yelp/android/serializable/AlertsResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/j$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/AlertsResponse;)V

    return-void
.end method
