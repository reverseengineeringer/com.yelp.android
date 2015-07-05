.class public Lcom/yelp/android/ui/activities/search/z;
.super Lcom/yelp/android/ui/util/au;
.source "SearchHistoryAdapter.java"


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
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 18
    if-nez p2, :cond_0

    .line 19
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030147

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 21
    new-instance v0, Lcom/yelp/android/ui/activities/search/aa;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/search/aa;-><init>(Landroid/view/View;)V

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 27
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/z;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 28
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/aa;->a(Lcom/yelp/android/ui/activities/search/aa;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 29
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/aa;->a(Lcom/yelp/android/ui/activities/search/aa;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/aa;->b(Lcom/yelp/android/ui/activities/search/aa;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f0704bb

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-object p2

    .line 24
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/aa;

    move-object v1, v0

    goto :goto_0
.end method
