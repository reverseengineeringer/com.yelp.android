.class public Lcom/yelp/android/ui/activities/feed/d;
.super Lcom/yelp/android/ui/activities/feed/b;
.source "BizPhotoFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/b",
        "<",
        "Lcom/yelp/android/serializable/BizPhotoFeedEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/bt;

.field private b:Lcom/bumptech/glide/j;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/bt;Lcom/bumptech/glide/j;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/b;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/d;->a:Landroid/support/v7/widget/bt;

    .line 36
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/d;->b:Lcom/bumptech/glide/j;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/d;)Landroid/support/v7/widget/bt;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/d;->a:Landroid/support/v7/widget/bt;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/d;)Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/d;->b:Lcom/bumptech/glide/j;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 42
    if-nez p4, :cond_0

    .line 43
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/feed/e;

    invoke-direct {v0, p0, p2, p4}, Lcom/yelp/android/ui/activities/feed/e;-><init>(Lcom/yelp/android/ui/activities/feed/d;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/e;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/yelp/android/ui/activities/feed/e;->a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V

    .line 49
    return-object p4
.end method
