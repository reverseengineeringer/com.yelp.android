.class public Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityMoreInfoPage.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Lcom/yelp/android/ui/util/aj;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 7

    .prologue
    .line 80
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    const-string/jumbo v1, "search_request_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string/jumbo v1, "biz_dimension"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string/jumbo v1, "is_biz_claimable"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string/jumbo v1, "biz_attributes"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    const-string/jumbo v1, "disable_edit_biz"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030069

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 264
    const v0, 0x7f0f021a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    const v0, 0x7f0f0219

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 270
    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/aj;

    new-instance v2, Lcom/yelp/android/ui/util/e;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    aput-object v1, v3, v4

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {p2, v2}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f0101cc

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 280
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 285
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setScrollBarStyle(I)V

    .line 286
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setCacheColorHint(I)V

    .line 292
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ec

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;)V

    .line 295
    return-void
.end method

.method private f()V
    .locals 14

    .prologue
    const v13, 0x7f0101cc

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 298
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->c:Z

    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/panels/businesspage/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/panels/businesspage/c;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 304
    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesspage/c;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/aj;

    const v2, 0x7f0703d7

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/util/e;

    new-array v4, v11, [Landroid/view/View;

    aput-object v0, v4, v12

    invoke-direct {v3, v4}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 318
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 319
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aU()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalizedAttribute;

    .line 321
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalizedAttribute;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 322
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 324
    :cond_3
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 328
    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 329
    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/aj;

    const/4 v8, 0x2

    new-instance v9, Lcom/yelp/android/ui/util/e;

    new-array v10, v11, [Landroid/view/View;

    new-instance v0, Lcom/yelp/android/ui/panels/businesspage/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->i()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/panels/businesspage/a;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    aput-object v0, v10, v12

    invoke-direct {v9, v10}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v9}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 343
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iget-object v7, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/aj;

    const/4 v8, 0x3

    new-instance v9, Lcom/yelp/android/ui/util/e;

    new-array v10, v11, [Landroid/view/View;

    new-instance v0, Lcom/yelp/android/ui/panels/businesspage/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->i()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/panels/businesspage/a;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    aput-object v0, v10, v12

    invoke-direct {v9, v10}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v9}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    goto/16 :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "search_request_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "biz_dimension"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessMoreInfo:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 123
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 128
    const-string/jumbo v0, "extra.business"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 129
    const-string/jumbo v0, "is_biz_claimable"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->e:Z

    .line 130
    const-string/jumbo v0, "biz_attributes"

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->c:Z

    .line 131
    const-string/jumbo v0, "disable_edit_biz"

    invoke-virtual {v3, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->d:Z

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b()V

    .line 136
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/aj;

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->f()V

    .line 141
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->e:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 143
    const-string/jumbo v0, "business_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v3, "mobile.prominent_claim_button_more_info_page"

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->q:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MoreInfoPageBizClaim:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 148
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->q:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    sget-object v2, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030089

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 152
    const v0, 0x7f0f0272

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    const v3, 0x7f0701cd

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage$1;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage$1;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->b:Lcom/yelp/android/ui/util/aj;

    const/16 v3, 0x8

    const-string/jumbo v4, ""

    new-instance v5, Lcom/yelp/android/ui/util/e;

    new-array v6, v8, [Landroid/view/View;

    aput-object v2, v6, v7

    invoke-direct {v5, v6}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    const v4, 0x7f0101cc

    invoke-virtual {v2, v4}, Lcom/yelp/android/ui/util/aj$c;->a(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aY()Lcom/yelp/android/serializable/FromThisBusiness;

    move-result-object v0

    .line 178
    if-nez v0, :cond_2

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->e()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 184
    const/4 v3, 0x4

    const v4, 0x7f07059d

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 188
    :cond_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->d()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 195
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 196
    const v4, 0x7f0702ad

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 198
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 203
    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 204
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 205
    const/4 v2, 0x5

    const v4, 0x7f070329

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4, v1, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 208
    :cond_4
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FromThisBusiness;->f()Lcom/yelp/android/serializable/BusinessRepresentative;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/yelp/android/serializable/BusinessRepresentative;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {v3}, Lcom/yelp/android/serializable/BusinessRepresentative;->f()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    .line 211
    if-nez v0, :cond_6

    move-object v0, v1

    .line 215
    :goto_1
    const v2, 0x7f0703b6

    .line 216
    const/4 v1, 0x6

    .line 217
    invoke-virtual {v3}, Lcom/yelp/android/serializable/BusinessRepresentative;->a()Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->BUSINESS_OWNER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    if-ne v4, v5, :cond_5

    .line 218
    const v2, 0x7f0703b5

    .line 219
    const/4 v1, 0x7

    .line 221
    :cond_5
    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/BusinessRepresentative;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v2, v4}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {v3}, Lcom/yelp/android/serializable/BusinessRepresentative;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 211
    :cond_6
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 228
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 229
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f100006

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 233
    const v0, 0x7f0f05fb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 234
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->c:Z

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 236
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->d:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 237
    return v1

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 242
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f05fb

    if-ne v0, v1, :cond_0

    .line 243
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreInfoUpdate:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a:Lcom/yelp/android/serializable/YelpBusiness;

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->e:Z

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->startActivity(Landroid/content/Intent;)V

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
