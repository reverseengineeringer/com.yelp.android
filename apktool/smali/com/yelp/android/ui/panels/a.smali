.class public abstract Lcom/yelp/android/ui/panels/a;
.super Landroid/widget/BaseAdapter;
.source "AbstractBusinessAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/f;
.implements Lcom/yelp/android/ui/util/g;


# instance fields
.field private final a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/a;->a:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/panels/a;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public a(ILcom/yelp/android/cg/b;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/a;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v3, v2, v3}, Lcom/yelp/android/cg/b;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v2

    const/4 v4, -0x1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v5

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->e()Ljava/lang/String;

    move-result-object v6

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/cg/b;->a(Ljava/lang/String;DIILjava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/a;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 68
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ch/f;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030172

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 70
    new-instance v0, Lcom/yelp/android/ch/f;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-direct {v0, v1, p2}, Lcom/yelp/android/ch/f;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ch/f;

    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/panels/a;->a(ILcom/yelp/android/cg/b;)V

    .line 77
    return-object p2
.end method
