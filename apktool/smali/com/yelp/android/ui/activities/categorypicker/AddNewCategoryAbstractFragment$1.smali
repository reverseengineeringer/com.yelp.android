.class Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$1;
.super Ljava/lang/Object;
.source "AddNewCategoryAbstractFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Ljava/util/List",
        "<TApiResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

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
            "<TApiResult;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->b(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Lcom/yelp/android/ui/activities/categorypicker/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/b$a;->a(Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a(Ljava/util/List;)V

    .line 159
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
    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;->a(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
