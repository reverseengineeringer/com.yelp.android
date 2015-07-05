.class Lcom/yelp/android/ui/activities/categorypicker/a;
.super Ljava/lang/Object;
.source "AddNewCategoryFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/a;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/a;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/appdata/webrequests/v;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/a;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/appdata/webrequests/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/v;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/a;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/appdata/webrequests/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/v;->cancel(Z)V

    .line 91
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/a;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    new-instance v2, Lcom/yelp/android/appdata/webrequests/v;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/a;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->b(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/a;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->b(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lcom/yelp/android/ui/activities/categorypicker/a;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->c(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/yelp/android/appdata/webrequests/v;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;Lcom/yelp/android/appdata/webrequests/v;)Lcom/yelp/android/appdata/webrequests/v;

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/a;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;)Lcom/yelp/android/appdata/webrequests/v;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/v;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 96
    :cond_1
    return-void

    .line 92
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
