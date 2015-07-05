.class public Lcom/yelp/android/ui/activities/feed/i;
.super Lcom/yelp/android/ui/activities/feed/b;
.source "BookmarkFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/b",
        "<",
        "Lcom/yelp/android/serializable/BookmarkFeedEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/b;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 22
    if-nez p4, :cond_0

    .line 23
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 25
    new-instance v0, Lcom/yelp/android/ui/activities/feed/j;

    invoke-direct {v0, p0, p2, p4}, Lcom/yelp/android/ui/activities/feed/j;-><init>(Lcom/yelp/android/ui/activities/feed/i;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/j;

    .line 28
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/yelp/android/ui/activities/feed/j;->a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V

    .line 29
    return-object p4
.end method
