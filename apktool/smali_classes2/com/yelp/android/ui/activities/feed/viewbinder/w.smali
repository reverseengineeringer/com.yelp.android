.class public Lcom/yelp/android/ui/activities/feed/viewbinder/w;
.super Lcom/yelp/android/ui/activities/feed/viewbinder/a;
.source "ReviewFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/feed/viewbinder/w$1;,
        Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;
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
.field private final a:Lcom/yelp/android/ci/f;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ci/f;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/a;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w;->a:Lcom/yelp/android/ci/f;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 51
    if-nez p4, :cond_0

    .line 52
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 55
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w;->a:Lcom/yelp/android/ci/f;

    const/4 v2, 0x0

    invoke-direct {v0, p4, p2, v1, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;Lcom/yelp/android/ui/activities/feed/viewbinder/w$1;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;

    .line 58
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 59
    return-object p4
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 32
    move-object v1, p1

    check-cast v1, Lcom/yelp/android/serializable/FeedItem;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/viewbinder/w;->a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
