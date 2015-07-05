.class public abstract Lcom/yelp/android/ui/panels/a;
.super Landroid/widget/BaseAdapter;
.source "AbstractBusinessAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/i;
.implements Lcom/yelp/android/ui/util/j;


# instance fields
.field private final a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/a;->a:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/panels/a;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public a(ILcom/yelp/android/ui/activities/feed/c;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/a;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v3, v2, v3}, Lcom/yelp/android/ui/activities/feed/c;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCategoryForBusinessSearchResult()Ljava/lang/String;

    move-result-object v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ui/activities/feed/c;->a(Ljava/lang/String;FIILjava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/a;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 65
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/feed/au;

    if-nez v0, :cond_1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030111

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/yelp/android/ui/activities/feed/au;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-direct {v0, v1, p2}, Lcom/yelp/android/ui/activities/feed/au;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/au;

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/panels/a;->a(ILcom/yelp/android/ui/activities/feed/c;)V

    .line 74
    return-object p2
.end method
