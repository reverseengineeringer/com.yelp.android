.class Lcom/yelp/android/ui/activities/talk/b;
.super Ljava/lang/Object;
.source "ActivityTalk.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/er;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/b;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/er;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/er;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->e(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->d(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-boolean v1, p2, Lcom/yelp/android/appdata/webrequests/er;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/er;->a:Lcom/yelp/android/serializable/Location;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/er;->a:Lcom/yelp/android/serializable/Location;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Location;->getDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->f(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->g(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V

    .line 183
    :cond_0
    return-void
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
    .line 172
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p2, Lcom/yelp/android/appdata/webrequests/er;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/er;)V

    return-void
.end method
