.class public Lcom/yelp/android/ui/activities/deals/ChooseDealOption;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ChooseDealOption.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/ChooseDealOption;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    const-string/jumbo v1, "DEAL.xtra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    const-string/jumbo v1, "BUSINESS.xtra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->DealOptions:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ChooseDealOption;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ChooseDealOption;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    const-string/jumbo v0, "DEAL.xtra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/yelp/android/serializable/YelpDeal;

    .line 44
    const-string/jumbo v0, "BUSINESS.xtra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/yelp/android/serializable/YelpBusiness;

    .line 45
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpDeal;->y()Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v10, :cond_0

    .line 47
    invoke-static {p0, v7, v6, v9}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ChooseDealOption;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ChooseDealOption;->finish()V

    .line 81
    :goto_0
    return-void

    .line 51
    :cond_0
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/ChooseDealOption;->setContentView(I)V

    .line 52
    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v1, "Title"

    aput-object v1, v4, v9

    const-string/jumbo v1, "Subtitle"

    aput-object v1, v4, v10

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDealOption;

    .line 55
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 56
    aget-object v5, v4, v9

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDealOption;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    aget-object v5, v4, v10

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDealOption;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :cond_1
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030088

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 68
    const v1, 0x7f0f012b

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/ChooseDealOption;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;

    invoke-direct {v0, p0, v7, v6}, Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;-><init>(Lcom/yelp/android/ui/activities/deals/ChooseDealOption;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;)V

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0

    .line 60
    :array_0
    .array-data 4
        0x7f0f00a9
        0x7f0f00ef
    .end array-data
.end method
