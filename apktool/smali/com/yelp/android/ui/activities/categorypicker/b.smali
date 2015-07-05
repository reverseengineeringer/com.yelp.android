.class Lcom/yelp/android/ui/activities/categorypicker/b;
.super Ljava/lang/Object;
.source "AddNewCategoryFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->d(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->d(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->e(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/ui/activities/categorypicker/c;

    move-result-object v0

    check-cast p2, Ljava/util/ArrayList;

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/activities/categorypicker/c;->a(Ljava/util/ArrayList;)V

    .line 139
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->d(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->d(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/b;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 124
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/categorypicker/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
