.class public Lcom/yelp/android/ui/activities/search/c;
.super Lcom/yelp/android/ui/util/au;
.source "SavedSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/database/savedsearch/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 19
    if-nez p2, :cond_0

    .line 20
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030147

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 22
    new-instance v0, Lcom/yelp/android/ui/activities/search/d;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/search/d;-><init>(Landroid/view/View;)V

    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 28
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/database/savedsearch/k;

    .line 29
    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/k;->a()Lcom/yelp/android/serializable/Filter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Filter;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/d;->a(Lcom/yelp/android/ui/activities/search/d;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/d;->b(Lcom/yelp/android/ui/activities/search/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/d;->c(Lcom/yelp/android/ui/activities/search/d;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f070520

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-object p2

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/d;

    move-object v1, v0

    goto :goto_0
.end method
