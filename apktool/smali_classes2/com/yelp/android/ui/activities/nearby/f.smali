.class public Lcom/yelp/android/ui/activities/nearby/f;
.super Lcom/yelp/android/ui/util/w;
.source "TrendingSearchesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/nearby/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/util/t;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/yelp/android/ui/util/t;->a(Landroid/support/v4/app/Fragment;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/f;->a:Lcom/yelp/android/ui/util/t;

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/f;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 28
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/yelp/android/ui/activities/nearby/f$a;

    if-nez v1, :cond_2

    .line 29
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301b8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 32
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/f$a;

    invoke-direct {v1, p2}, Lcom/yelp/android/ui/activities/nearby/f$a;-><init>(Landroid/view/View;)V

    .line 33
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 38
    :goto_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/f;->a:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    iget-object v3, v1, Lcom/yelp/android/ui/activities/nearby/f$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 41
    :cond_1
    iget-object v1, v1, Lcom/yelp/android/ui/activities/nearby/f$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-object p2

    .line 35
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/nearby/f$a;

    goto :goto_0
.end method
