.class Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;
.super Ljava/lang/Object;
.source "CheckInFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpCheckIn;

.field final synthetic b:Lcom/yelp/android/ci/f;

.field final synthetic c:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic d:Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;->b:Lcom/yelp/android/ci/f;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;->c:Lcom/yelp/android/serializable/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;->a:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/g$a;Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 142
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;->b:Lcom/yelp/android/ci/f;

    new-instance v2, Lcom/yelp/android/ci/d;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/g$a$3;->c:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/yelp/android/ci/d;-><init>(Lcom/yelp/android/serializable/FeedItem;Z)V

    invoke-interface {v1, v2}, Lcom/yelp/android/ci/f;->a(Lcom/yelp/android/ci/e;)V

    .line 145
    return-void

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    goto :goto_0
.end method
