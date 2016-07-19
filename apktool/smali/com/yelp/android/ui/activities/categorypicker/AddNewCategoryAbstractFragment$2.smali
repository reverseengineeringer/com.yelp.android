.class Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;
.super Ljava/lang/Object;
.source "AddNewCategoryAbstractFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->c(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->c(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->c(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Z)V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->d(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a(Ljava/util/List;)V

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->e(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->f(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->c(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->d(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
