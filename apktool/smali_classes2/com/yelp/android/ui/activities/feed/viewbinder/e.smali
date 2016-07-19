.class public Lcom/yelp/android/ui/activities/feed/viewbinder/e;
.super Lcom/yelp/android/ui/activities/feed/viewbinder/a;
.source "BusinessPhotoFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/viewbinder/a",
        "<",
        "Lcom/yelp/android/serializable/FeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/RecyclerView$l;

.field private final b:Lcom/yelp/android/ci/f;

.field private final c:Lcom/yelp/android/ui/util/t;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/t;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ci/f;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/a;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e;->c:Lcom/yelp/android/ui/util/t;

    .line 41
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e;->a:Landroid/support/v7/widget/RecyclerView$l;

    .line 42
    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e;->b:Lcom/yelp/android/ci/f;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 52
    if-nez p4, :cond_0

    .line 53
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 56
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e;->a:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e;->c:Lcom/yelp/android/ui/util/t;

    invoke-direct {v0, p2, p4, v1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e;->b:Lcom/yelp/android/ci/f;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 62
    return-object p4
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 30
    move-object v1, p1

    check-cast v1, Lcom/yelp/android/serializable/FeedItem;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/viewbinder/e;->a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
