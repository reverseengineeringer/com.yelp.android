.class Lcom/yelp/android/ui/activities/talk/ActivityTalk$2;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "ActivityTalk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/talk/ActivityTalk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dr$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk$2;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dr$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dr$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    iget-boolean v0, p2, Lcom/yelp/android/appdata/webrequests/dr$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/dr$a;->a:Lcom/yelp/android/serializable/Location;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalk$2;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/dr$a;->a:Lcom/yelp/android/serializable/Location;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Location;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
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
    .line 192
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 182
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dr$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/ActivityTalk$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dr$a;)V

    return-void
.end method
