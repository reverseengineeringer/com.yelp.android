.class public Lcom/yelp/android/ui/activities/feed/viewbinder/s;
.super Lcom/yelp/android/ui/util/w;
.source "RecentBookmarkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/s;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/s;)Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/s;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/s$a;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 28
    if-nez p2, :cond_0

    .line 29
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030119

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 32
    new-instance v0, Lcom/yelp/android/cg/c;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/yelp/android/cg/c;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/cg/c;

    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/s;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/cg/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V

    .line 36
    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/s$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/s$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/s;I)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->b(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/s$2;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/s$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/s;I)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->a(Landroid/view/View$OnClickListener;)V

    .line 53
    return-object p2
.end method
