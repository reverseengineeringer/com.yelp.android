.class public Lcom/yelp/android/ui/activities/feed/viewbinder/t;
.super Lcom/yelp/android/ui/util/w;
.source "RecentCheckInAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/YelpCheckIn;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 21
    if-nez p2, :cond_0

    .line 22
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030135

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 25
    new-instance v0, Lcom/yelp/android/cg/g;

    invoke-direct {v0, p2}, Lcom/yelp/android/cg/g;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/cg/g;

    .line 28
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/t;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->y()Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/cg/g;->a(Lcom/yelp/android/serializable/User;Landroid/content/Context;)V

    .line 29
    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/t$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/t$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/t;I)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/g;->b(Landroid/view/View$OnClickListener;)V

    .line 39
    return-object p2
.end method
