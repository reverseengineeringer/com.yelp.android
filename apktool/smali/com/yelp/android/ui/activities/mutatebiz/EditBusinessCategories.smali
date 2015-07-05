.class public Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "EditBusinessCategories.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    const-string/jumbo v1, "extra.categories"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    return-object v0
.end method

.method private a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 220
    :goto_0
    return-void

    .line 211
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 213
    const-string/jumbo v1, "category_id"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_2

    .line 216
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_2
    invoke-static {p1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->c()Ljava/util/List;

    move-result-object v2

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->b:Landroid/view/View;

    if-eq p2, v0, :cond_0

    .line 125
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 128
    :goto_0
    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/PickCategory;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Category;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    .line 129
    const-string/jumbo v2, "extra.categories"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.categories"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 144
    :cond_0
    return-object v0
.end method

.method f()V
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009a

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->b:Landroid/view/View;

    .line 149
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->b:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 150
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessEditCategory:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 118
    return-void

    .line 88
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 89
    invoke-static {p3}, Lcom/yelp/android/ui/activities/mutatebiz/PickCategory;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/Category;

    move-result-object v2

    .line 90
    const-string/jumbo v0, "extra.categories"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 91
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesRemoved:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getDatabaseId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 99
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "extra.categories"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesAdded:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->getDatabaseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->finish()V

    .line 111
    :cond_1
    :goto_2
    new-instance v0, Lcom/yelp/android/ui/activities/ei;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/yelp/android/ui/activities/ei;-><init>(Z)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ei;->a(Ljava/util/List;)V

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v4, :cond_4

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getFooterViewsCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->f()V

    goto :goto_2

    .line 108
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v4, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_2

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onBackPressed()V

    .line 136
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesCanceled:Lcom/yelp/android/analytics/iris/EventIri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->registerForContextMenu(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->c()Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03009b

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 68
    new-instance v1, Lcom/yelp/android/ui/activities/ei;

    invoke-direct {v1, v4}, Lcom/yelp/android/ui/activities/ei;-><init>(Z)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ei;->a(Ljava/util/List;)V

    .line 70
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ei;->getCount()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->f()V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 81
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 175
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 176
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 177
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 180
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f100006

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 182
    const v1, 0x7f0c04f3

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 184
    new-instance v2, Lcom/yelp/android/ui/activities/mutatebiz/s;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/s;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;Lcom/yelp/android/serializable/Category;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 205
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04fd

    if-ne v0, v1, :cond_0

    .line 162
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesSaved:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 163
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->setResult(ILandroid/content/Intent;)V

    .line 164
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->finish()V

    .line 165
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 167
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessCategoriesCanceled:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusinessCategories;->a(Lcom/yelp/android/analytics/iris/EventIri;Ljava/lang/String;)V

    .line 169
    :cond_1
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
