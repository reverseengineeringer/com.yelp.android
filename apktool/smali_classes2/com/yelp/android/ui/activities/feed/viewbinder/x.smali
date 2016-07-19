.class public Lcom/yelp/android/ui/activities/feed/viewbinder/x;
.super Lcom/yelp/android/ui/activities/feed/viewbinder/ad;
.source "SubscriptionUserListView.java"


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/FeedItem;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/x$2;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/x$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/x;Lcom/yelp/android/serializable/FeedItem;)V

    return-object v0
.end method

.method protected a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/x$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/x$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/x;Lcom/yelp/android/serializable/FeedItem;I)V

    return-object v0
.end method
