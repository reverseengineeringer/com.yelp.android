.class Lcom/yelp/android/ch/d$1;
.super Ljava/lang/Object;
.source "FeedUserProfileViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/yelp/android/serializable/User;

.field final synthetic d:Lcom/yelp/android/ch/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ch/d;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ch/d$1;->d:Lcom/yelp/android/ch/d;

    iput-object p2, p0, Lcom/yelp/android/ch/d$1;->a:Lcom/yelp/android/serializable/FeedItem;

    iput-object p3, p0, Lcom/yelp/android/ch/d$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/yelp/android/ch/d$1;->c:Lcom/yelp/android/serializable/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_USER:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ch/d$1;->d:Lcom/yelp/android/ch/d;

    invoke-static {v1}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/ch/d;)Lcom/yelp/android/ui/activities/feed/FeedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ch/d$1;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->i()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ch/d$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ch/d$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ch/d$1;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
