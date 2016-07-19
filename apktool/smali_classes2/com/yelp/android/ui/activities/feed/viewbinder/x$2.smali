.class Lcom/yelp/android/ui/activities/feed/viewbinder/x$2;
.super Ljava/lang/Object;
.source "SubscriptionUserListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/x;->a(Lcom/yelp/android/serializable/FeedItem;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/viewbinder/x;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/x;Lcom/yelp/android/serializable/FeedItem;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/x$2;->b:Lcom/yelp/android/ui/activities/feed/viewbinder/x;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/x$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 55
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/x$2;->b:Lcom/yelp/android/ui/activities/feed/viewbinder/x;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/viewbinder/x;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/x$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->h()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/x$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v7

    move v8, v7

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;

    .line 68
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEventSubscriptionActivity;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->statusFromString(Ljava/lang/String;)Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v0

    .line 74
    sget-object v4, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->ImIn:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    if-ne v0, v4, :cond_0

    .line 75
    add-int/lit8 v8, v8, 0x1

    move v0, v6

    move v4, v8

    :goto_1
    move v6, v0

    move v8, v4

    .line 79
    goto :goto_0

    .line 76
    :cond_0
    sget-object v4, Lcom/yelp/android/serializable/Event$SubscriptionStatus;->SoundsCool:Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    if-ne v0, v4, :cond_2

    .line 77
    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move v4, v8

    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v0, Lcom/yelp/android/serializable/EventAttendees;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v8, v5, v7

    const/4 v7, 0x1

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/EventAttendees;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;[I)V

    invoke-static {v10, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ActivityEventSubscriptions;->a(Landroid/content/Context;Lcom/yelp/android/serializable/EventAttendees;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void

    :cond_2
    move v0, v6

    move v4, v8

    goto :goto_1
.end method
