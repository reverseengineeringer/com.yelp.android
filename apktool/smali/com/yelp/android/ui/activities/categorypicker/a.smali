.class public Lcom/yelp/android/ui/activities/categorypicker/a;
.super Lcom/yelp/android/ui/util/w;
.source "BusinessCategorySuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/categorypicker/a$1;,
        Lcom/yelp/android/ui/activities/categorypicker/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Suggest::",
        "Lcom/yelp/android/serializable/CategorySuggestion;",
        ">",
        "Lcom/yelp/android/ui/util/w",
        "<TSuggest;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/categorypicker/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CategorySuggestion;

    .line 26
    if-nez p2, :cond_1

    .line 27
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/yelp/android/co/a$h;->business_category_suggest_panel:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance v1, Lcom/yelp/android/ui/activities/categorypicker/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/yelp/android/ui/activities/categorypicker/a$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/categorypicker/a$1;)V

    .line 31
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    :goto_0
    invoke-interface {v0}, Lcom/yelp/android/serializable/CategorySuggestion;->d()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-interface {v0}, Lcom/yelp/android/serializable/CategorySuggestion;->e()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-static {v3, v2}, Lcom/yelp/android/ui/activities/categorypicker/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-interface {v0}, Lcom/yelp/android/serializable/CategorySuggestion;->b()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0}, Lcom/yelp/android/serializable/CategorySuggestion;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    :cond_0
    invoke-static {v1}, Lcom/yelp/android/ui/activities/categorypicker/a$a;->a(Lcom/yelp/android/ui/activities/categorypicker/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v2, v4}, Lcom/yelp/android/ui/util/ar;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_1
    return-object p2

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/categorypicker/a$a;

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lcom/yelp/android/serializable/CategorySuggestion;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    invoke-static {v1}, Lcom/yelp/android/ui/activities/categorypicker/a$a;->a(Lcom/yelp/android/ui/activities/categorypicker/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v3, v4}, Lcom/yelp/android/ui/util/ar;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 54
    :cond_3
    invoke-static {v1}, Lcom/yelp/android/ui/activities/categorypicker/a$a;->a(Lcom/yelp/android/ui/activities/categorypicker/a$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
