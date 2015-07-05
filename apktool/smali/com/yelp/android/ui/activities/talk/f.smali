.class Lcom/yelp/android/ui/activities/talk/f;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "ActivityTalkPost.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ft;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/f;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ft;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ft;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    const-string/jumbo v1, "talk_topic"

    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/ft;->a:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/f;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->setResult(ILandroid/content/Intent;)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/f;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/f;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->finish()V

    .line 163
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 175
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
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/f;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/f;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->a(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/f;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->showDialog(I)V

    .line 171
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ft;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/f;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ft;)V

    return-void
.end method
