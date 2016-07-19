.class public Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;
.super Lcom/yelp/android/ui/activities/businesspage/c;
.source "ClaimButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$a;,
        Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/businesspage/b;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/activities/businesspage/c;-><init>(Ljava/util/Collection;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 129
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$1;-><init>(Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->d:Landroid/view/View$OnAttachStateChangeListener;

    .line 80
    sget-object v0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;->BIZPAGE_TOP:Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter$ClaimButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->a:Lcom/yelp/android/ui/activities/businesspage/b;

    .line 81
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use updateBusiness(YelpBusiness business, Boolean isBizClaimable) instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 91
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->c:Ljava/lang/Boolean;

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->w_()V

    .line 93
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/businesspage/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->d:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 126
    return-object v0
.end method

.method public w_()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->a(Ljava/util/List;)V

    .line 120
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->a:Lcom/yelp/android/ui/activities/businesspage/b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v2}, Lcom/yelp/android/ui/activities/businesspage/b;->shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 110
    const-string/jumbo v0, "business_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v3, "prominent_claim_button_bizpage_experiment"

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->n:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPopupClaim:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 115
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->n:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;->on_bizpage_top:Lcom/yelp/android/appdata/experiment/ProminentClaimButtonBizpageExperiment$Cohort;

    if-ne v0, v2, :cond_2

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->a:Lcom/yelp/android/ui/activities/businesspage/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_2
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ClaimButtonAdapter;->a(Ljava/util/List;)V

    goto :goto_0
.end method
