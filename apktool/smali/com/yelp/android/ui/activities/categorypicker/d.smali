.class public Lcom/yelp/android/ui/activities/categorypicker/d;
.super Lcom/yelp/android/ui/activities/categorypicker/b;
.source "CategoryPickerHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/categorypicker/b$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/categorypicker/b",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        "Lcom/yelp/android/serializable/BusinessCategorySuggest;",
        ">;",
        "Lcom/yelp/android/ui/activities/categorypicker/b$a;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILandroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/categorypicker/b;-><init>(ILandroid/support/v4/app/FragmentActivity;)V

    .line 23
    return-void
.end method


# virtual methods
.method public A_()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesRemoved:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 60
    return-void
.end method

.method protected bridge synthetic a(Lcom/yelp/android/serializable/CategorySuggestion;)Lcom/yelp/android/serializable/BizCategory;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/yelp/android/serializable/BusinessCategorySuggest;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/categorypicker/d;->a(Lcom/yelp/android/serializable/BusinessCategorySuggest;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/yelp/android/serializable/BusinessCategorySuggest;)Lcom/yelp/android/serializable/Category;
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/serializable/Category;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/BusinessCategorySuggest;->e()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected a(ZLjava/lang/String;)Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryAbstractFragment;
    .locals 1

    .prologue
    .line 37
    invoke-static {p1, p2}, Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;->a(ZLjava/lang/String;)Lcom/yelp/android/ui/activities/categorypicker/AddNewCategoryFragment;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)",
            "Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->d(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesAdded:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "numberOfCategories"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesNoneAvailable:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "searchTerm"

    invoke-static {v0, v1, p1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesSelected:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "categoryRank"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesEdited:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 65
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesSaved:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 70
    return-void
.end method

.method public z_()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesTapSearch:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 49
    return-void
.end method
