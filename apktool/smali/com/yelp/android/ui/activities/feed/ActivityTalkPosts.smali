.class public Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityTalkPosts.java"


# instance fields
.field private final a:Lcom/yelp/android/ui/util/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/w",
            "<",
            "Lcom/yelp/android/serializable/FeedTalkPostActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts$1;-><init>(Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->a:Lcom/yelp/android/ui/util/w;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/User;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/FeedTalkPostActivity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    const-string/jumbo v1, "talk_posts"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v1, "user_first_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user_first_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    const v1, 0x7f070637

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "talk_posts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->a:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v1, v0, v4}, Lcom/yelp/android/ui/util/w;->a(Ljava/util/List;Z)V

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->a:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 49
    return-void
.end method
