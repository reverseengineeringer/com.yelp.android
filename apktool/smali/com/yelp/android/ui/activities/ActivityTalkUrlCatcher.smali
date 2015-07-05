.class public Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityTalkUrlCatcher.java"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/yelp/android/appdata/webrequests/fz;

.field private final c:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
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
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    .line 77
    new-instance v0, Lcom/yelp/android/ui/activities/ec;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ec;-><init>(Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->c:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->disableLoading()V

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 73
    new-instance v0, Lcom/yelp/android/analytics/o;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->a:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/b;)V

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->finish()V

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->a()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->a:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->a:Landroid/net/Uri;

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "talk"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->a()V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string/jumbo v1, "topic"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x0

    const v1, 0x7f07033f

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 47
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fz;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->c:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/fz;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->b:Lcom/yelp/android/appdata/webrequests/fz;

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->b:Lcom/yelp/android/appdata/webrequests/fz;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fz;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onPause()V

    .line 64
    const-string/jumbo v0, "talk_topic_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->b:Lcom/yelp/android/appdata/webrequests/fz;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onResume()V

    .line 57
    const-string/jumbo v0, "talk_topic_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->b:Lcom/yelp/android/appdata/webrequests/fz;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->c:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fz;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTalkUrlCatcher;->b:Lcom/yelp/android/appdata/webrequests/fz;

    .line 59
    return-void
.end method
