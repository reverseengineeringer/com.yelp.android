.class public Lcom/yelp/android/ch/a;
.super Lcom/yelp/android/cg/a;
.source "FeedFullContentBusinessViewHolder.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/cg/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    .line 19
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aT()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aT()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
