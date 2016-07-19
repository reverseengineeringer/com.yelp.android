.class public Lcom/yelp/android/ui/activities/reviews/a;
.super Lcom/yelp/android/ui/util/w;
.source "NearbyBusinessesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviews/a$a;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 17
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviews/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 21
    if-nez p2, :cond_0

    .line 22
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030102

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 25
    new-instance v1, Lcom/yelp/android/ui/activities/reviews/a$a;

    invoke-direct {v1, p2}, Lcom/yelp/android/ui/activities/reviews/a$a;-><init>(Landroid/view/View;)V

    .line 26
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 31
    :goto_0
    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/a$a;->a(Lcom/yelp/android/ui/activities/reviews/a$a;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200bb

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 32
    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/a$a;->b(Lcom/yelp/android/ui/activities/reviews/a$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviews/a$a;->c(Lcom/yelp/android/ui/activities/reviews/a$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    return-object p2

    .line 28
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviews/a$a;

    goto :goto_0
.end method
