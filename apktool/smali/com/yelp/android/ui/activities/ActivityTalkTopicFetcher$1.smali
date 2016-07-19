.class Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;
.super Ljava/lang/Object;
.source "ActivityTalkTopicFetcher.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;
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
        "Lcom/yelp/android/serializable/TalkTopic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;->a:Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/TalkTopic;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;->a:Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->disableLoading()V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;->a:Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;->a:Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;

    invoke-static {v1, p2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Landroid/content/Context;Lcom/yelp/android/serializable/TalkTopic;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->startActivity(Landroid/content/Intent;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;->a:Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->finish()V

    .line 92
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;->a:Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->disableLoading()V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;->a:Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->a(Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;)V

    .line 85
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p2, Lcom/yelp/android/serializable/TalkTopic;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/TalkTopic;)V

    return-void
.end method
