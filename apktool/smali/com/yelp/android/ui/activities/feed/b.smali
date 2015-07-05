.class public abstract Lcom/yelp/android/ui/activities/feed/b;
.super Ljava/lang/Object;
.source "BaseFeedViewBinder.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/feed/at;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/yelp/android/serializable/FeedEntry;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/activities/feed/at",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/b;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method protected abstract a(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public b(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual/range {p0 .. p5}, Lcom/yelp/android/ui/activities/feed/b;->a(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 35
    return-void
.end method
