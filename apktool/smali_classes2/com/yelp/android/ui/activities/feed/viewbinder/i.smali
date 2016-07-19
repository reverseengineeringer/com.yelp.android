.class public Lcom/yelp/android/ui/activities/feed/viewbinder/i;
.super Lcom/yelp/android/ui/activities/feed/viewbinder/ad;
.source "CheckInUserListView.java"


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/FeedItem;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$2;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/i$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/i;Lcom/yelp/android/serializable/FeedItem;)V

    return-object v0
.end method

.method protected a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/i$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/i;Lcom/yelp/android/serializable/FeedItem;I)V

    return-object v0
.end method
