.class public Lcom/yelp/android/ui/activities/feed/viewbinder/ag;
.super Lcom/yelp/android/ui/activities/feed/viewbinder/a;
.source "YnraFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;
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
.field private final a:Lcom/yelp/android/ui/util/t;

.field private final b:Lcom/yelp/android/ci/f;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/ci/f;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/a;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag;->a:Lcom/yelp/android/ui/util/t;

    .line 34
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag;->b:Lcom/yelp/android/ci/f;

    .line 35
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 44
    if-nez p4, :cond_0

    .line 45
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;

    invoke-direct {v0, p4}, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag;->a:Lcom/yelp/android/ui/util/t;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ag;->b:Lcom/yelp/android/ci/f;

    invoke-static {v0, v1, p1, v2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/ag$a;Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ci/f;I)V

    .line 52
    return-object p4
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 27
    move-object v1, p1

    check-cast v1, Lcom/yelp/android/serializable/FeedItem;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/viewbinder/ag;->a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
