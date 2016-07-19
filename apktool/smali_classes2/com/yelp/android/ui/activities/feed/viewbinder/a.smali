.class public abstract Lcom/yelp/android/ui/activities/feed/viewbinder/a;
.super Ljava/lang/Object;
.source "BaseFeedViewBinder.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/feed/viewbinder/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FeedItem:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/activities/feed/viewbinder/n",
        "<TFeedItem;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFeedItem;",
            "Lcom/yelp/android/ui/activities/feed/FeedType;",
            "I",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Object;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFeedItem;",
            "Lcom/yelp/android/ui/activities/feed/FeedType;",
            "I",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual/range {p0 .. p5}, Lcom/yelp/android/ui/activities/feed/viewbinder/a;->a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
