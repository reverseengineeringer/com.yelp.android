.class Lcom/yelp/android/ui/activities/mutatebiz/s;
.super Ljava/lang/Object;
.source "EditBusinessCategories.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Category;

.field final synthetic b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;Lcom/yelp/android/serializable/Category;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/s;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/mutatebiz/s;->a:Lcom/yelp/android/serializable/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/s;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/s;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/s;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->f()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/s;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.categories"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/s;->a:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Lcom/yelp/android/ui/activities/ei;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/activities/ei;-><init>(Z)V

    .line 197
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ei;->a(Ljava/util/List;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/s;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/s;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesRemoved:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/s;->a:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->getDatabaseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a(Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 201
    const/4 v0, 0x1

    return v0
.end method
