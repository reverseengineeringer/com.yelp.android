.class Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;
.super Ljava/lang/Object;
.source "EditBusinessCategories.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Category;

.field final synthetic b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;Lcom/yelp/android/serializable/Category;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;->a:Lcom/yelp/android/serializable/Category;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->f()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.category"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;->a:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 198
    new-instance v1, Lcom/yelp/android/ui/activities/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/activities/a;-><init>(Z)V

    .line 199
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/a;->a(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;->b:Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesRemoved:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories$1;->a:Lcom/yelp/android/serializable/Category;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->e()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a(Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    return v0
.end method
