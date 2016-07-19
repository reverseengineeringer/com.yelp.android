.class public Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;
.super Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;
.source "AddNewCategoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment",
        "<",
        "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;-><init>()V

    return-void
.end method

.method public static a(ZLjava/lang/String;)Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;-><init>()V

    .line 15
    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a(ZLjava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 16
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
            ">;>;)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/appdata/webrequests/x;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/yelp/android/appdata/webrequests/x;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    return-object v0
.end method
