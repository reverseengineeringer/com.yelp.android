.class public Lcom/yelp/android/ui/activities/feed/viewbinder/ae;
.super Lcom/yelp/android/ui/activities/feed/viewbinder/a;
.source "UserPhotoFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;
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

.field private final b:Lcom/yelp/android/ui/util/t;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/t;Landroid/support/v7/widget/RecyclerView$l;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/a;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae;->a:Landroid/support/v7/widget/RecyclerView$l;

    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae;->b:Lcom/yelp/android/ui/util/t;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/ae;)Landroid/support/v7/widget/RecyclerView$l;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae;->a:Landroid/support/v7/widget/RecyclerView$l;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/viewbinder/ae;)Lcom/yelp/android/ui/util/t;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae;->b:Lcom/yelp/android/ui/util/t;

    return-object v0
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

    const v1, 0x7f030137

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;

    invoke-direct {v0, p0, p2, p4}, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ae;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 52
    return-object p4
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 26
    move-object v1, p1

    check-cast v1, Lcom/yelp/android/serializable/FeedItem;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/viewbinder/ae;->a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
