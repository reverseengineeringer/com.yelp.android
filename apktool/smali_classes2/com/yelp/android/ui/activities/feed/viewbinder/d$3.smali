.class Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;
.super Ljava/lang/Object;
.source "BusinessListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;ILcom/yelp/android/ci/f;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ci/f;

.field final synthetic b:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic c:I

.field final synthetic d:Lcom/yelp/android/ui/activities/feed/viewbinder/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/d;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;I)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/d;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;->a:Lcom/yelp/android/ci/f;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;->b:Lcom/yelp/android/serializable/FeedItem;

    iput p4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 132
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;->a:Lcom/yelp/android/ci/f;

    new-instance v2, Lcom/yelp/android/ci/b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;->b:Lcom/yelp/android/serializable/FeedItem;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$3;->c:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/yelp/android/ci/b;-><init>(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-interface {v1, v2}, Lcom/yelp/android/ci/f;->a(Lcom/yelp/android/ci/e;)V

    .line 135
    return-void
.end method
