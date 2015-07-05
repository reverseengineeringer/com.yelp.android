.class public Lcom/yelp/android/ui/panels/p;
.super Lcom/yelp/android/ui/util/au;
.source "BusinessCategorySuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v8, 0x7f070598

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessCategorySuggest;

    .line 24
    if-nez p2, :cond_1

    .line 25
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03005a

    invoke-virtual {v1, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 27
    new-instance v1, Lcom/yelp/android/ui/panels/r;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/yelp/android/ui/panels/r;-><init>(Landroid/view/View;Lcom/yelp/android/ui/panels/q;)V

    .line 28
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->getParentTitle()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 36
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->getTitleMatch()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->getExactMatch()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    :cond_0
    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v4, v8, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    .line 43
    :goto_1
    invoke-static {v1}, Lcom/yelp/android/ui/panels/r;->a(Lcom/yelp/android/ui/panels/r;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/categorypicker/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-object p2

    .line 30
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/panels/r;

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->getParentTitleMatch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v2, v0, v6

    invoke-virtual {v4, v8, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v0, v2

    move-object v2, v3

    goto :goto_1
.end method
