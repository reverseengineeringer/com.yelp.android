.class Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "ActivityTalkPost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/en$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/en$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/en$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    const-string/jumbo v1, "talk_topic"

    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/en$a;->a:Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->setResult(ILandroid/content/Intent;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->h()V

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->finish()V

    .line 170
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 182
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
    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->h()V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->a(Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost;->showDialog(I)V

    .line 178
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p2, Lcom/yelp/android/appdata/webrequests/en$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/ActivityTalkPost$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/en$a;)V

    return-void
.end method
