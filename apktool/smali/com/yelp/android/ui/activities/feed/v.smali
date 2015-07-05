.class public Lcom/yelp/android/ui/activities/feed/v;
.super Ljava/lang/Object;
.source "DefaultFeedEntryViewBinder.java"

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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/v;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/v;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public b(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/v;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    if-nez p4, :cond_0

    .line 43
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030111

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p4

    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/feed/au;

    invoke-direct {v0, p2, p4}, Lcom/yelp/android/ui/activities/feed/au;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 46
    invoke-virtual {p4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/au;

    .line 49
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 51
    invoke-virtual {v0, p1, p3, v1}, Lcom/yelp/android/ui/activities/feed/au;->a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V

    .line 52
    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/au;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    return-object p4
.end method

.method public b()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/v;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 36
    return-void
.end method
