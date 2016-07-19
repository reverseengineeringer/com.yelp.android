.class public Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityTalkTopicFetcher.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/eq;

.field private final b:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/TalkTopic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher$1;-><init>(Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const-string/jumbo v1, "topic_alias"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->disableLoading()V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->finish()V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->a()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "topic_alias"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->a()V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v1, 0x0

    const v2, 0x7f070379

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 50
    new-instance v1, Lcom/yelp/android/appdata/webrequests/eq;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/eq;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->a:Lcom/yelp/android/appdata/webrequests/eq;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->a:Lcom/yelp/android/appdata/webrequests/eq;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eq;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 64
    const-string/jumbo v0, "talk_topic_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->a:Lcom/yelp/android/appdata/webrequests/eq;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 57
    const-string/jumbo v0, "talk_topic_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->a:Lcom/yelp/android/appdata/webrequests/eq;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->b:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/eq;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkTopicFetcher;->a:Lcom/yelp/android/appdata/webrequests/eq;

    .line 59
    return-void
.end method
