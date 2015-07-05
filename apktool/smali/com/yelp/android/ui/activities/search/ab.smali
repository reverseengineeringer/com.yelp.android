.class public Lcom/yelp/android/ui/activities/search/ab;
.super Lcom/yelp/android/ui/util/au;
.source "SearchLocationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 16
    if-nez p2, :cond_0

    .line 17
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030147

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 19
    new-instance v0, Lcom/yelp/android/ui/activities/search/ac;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/search/ac;-><init>(Landroid/view/View;)V

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 25
    :goto_0
    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/ac;->a(Lcom/yelp/android/ui/activities/search/ac;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/ab;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    return-object p2

    .line 22
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/ac;

    goto :goto_0
.end method
