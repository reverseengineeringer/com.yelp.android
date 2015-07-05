.class Lcom/yelp/android/ui/activities/ec;
.super Ljava/lang/Object;
.source "ActivityTalkUrlCatcher.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/TalkTopic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ec;->a:Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/TalkTopic;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ec;->a:Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->disableLoading()V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ec;->a:Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/content/Context;Lcom/yelp/android/serializable/TalkTopic;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 90
    new-instance v0, Lcom/yelp/android/analytics/o;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ec;->a:Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->b(Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/b;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ec;->a:Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->finish()V

    .line 92
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ec;->a:Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->disableLoading()V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ec;->a:Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->a(Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;)V

    .line 84
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p2, Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ec;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/TalkTopic;)V

    return-void
.end method
