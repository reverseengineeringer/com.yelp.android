.class public Lcom/yelp/android/ui/activities/feed/bg;
.super Lcom/yelp/android/ui/activities/feed/b;
.source "TipFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/b",
        "<",
        "Lcom/yelp/android/serializable/TipFeedEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/feed/bh;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/bh;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/b;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bg;->a:Lcom/yelp/android/ui/activities/feed/bh;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/bg;)Lcom/yelp/android/ui/activities/feed/bh;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bg;->a:Lcom/yelp/android/ui/activities/feed/bh;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 40
    if-nez p4, :cond_0

    .line 41
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300e2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 43
    new-instance v0, Lcom/yelp/android/ui/activities/feed/bi;

    invoke-direct {v0, p0, p2, p4}, Lcom/yelp/android/ui/activities/feed/bi;-><init>(Lcom/yelp/android/ui/activities/feed/bg;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/bi;

    check-cast p1, Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/yelp/android/ui/activities/feed/bi;->a(Lcom/yelp/android/serializable/TipFeedEntry;ILandroid/content/Context;)V

    .line 47
    return-object p4
.end method