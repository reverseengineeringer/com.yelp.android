.class public Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityUsedDealsAndOffers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/serializable/YelpDeal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 149
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string/jumbo v1, "deals"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 47
    const-string/jumbo v1, "offers"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;Lcom/yelp/android/serializable/YelpDeal;)Lcom/yelp/android/serializable/YelpDeal;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->c:Lcom/yelp/android/serializable/YelpDeal;

    return-object p1
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v1, :cond_2

    .line 122
    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 123
    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpDeal;->b(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 124
    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->c:Lcom/yelp/android/serializable/YelpDeal;

    .line 125
    sget v0, Lcom/yelp/android/ui/activities/deals/b;->e:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->showDialog(I)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpDeal;->a(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->a(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)V

    goto :goto_0

    .line 129
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/serializable/Offer;

    if-eqz v1, :cond_0

    .line 130
    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 132
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->h()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)V
    .locals 1

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method public b()Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->c:Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method public f()Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->DealRedeemed:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->f()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "deals"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->a:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "offers"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->b:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->f()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->c:Lcom/yelp/android/serializable/YelpDeal;

    .line 60
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers$a;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 62
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    .line 65
    new-instance v2, Lcom/yelp/android/ui/panels/b;

    invoke-direct {v2, v4}, Lcom/yelp/android/ui/panels/b;-><init>(Z)V

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/panels/b;->a(Ljava/util/List;)V

    .line 68
    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 69
    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 71
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 102
    sget v0, Lcom/yelp/android/ui/activities/deals/b;->e:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->c:Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->c:Lcom/yelp/android/serializable/YelpDeal;

    const/4 v1, 0x0

    new-instance v2, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers$1;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;)V

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/b;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpDeal;ZLcom/yelp/android/ui/activities/deals/b$a;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 92
    sget v0, Lcom/yelp/android/ui/activities/deals/b;->e:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->c:Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->c:Lcom/yelp/android/serializable/YelpDeal;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/yelp/android/ui/activities/deals/b;->a(Landroid/app/Dialog;Lcom/yelp/android/serializable/YelpDeal;Z)V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/YelpListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 98
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->b()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    return-object v0
.end method
