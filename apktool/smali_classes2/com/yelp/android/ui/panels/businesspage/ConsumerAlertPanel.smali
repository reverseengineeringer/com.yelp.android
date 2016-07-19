.class public Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;
.super Landroid/widget/RelativeLayout;
.source "ConsumerAlertPanel.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/yelp/android/ui/util/aj;

.field private c:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private d:Lcom/yelp/android/ui/util/e;

.field private e:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/util/aj;Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->b:Lcom/yelp/android/ui/util/aj;

    .line 65
    iput-object p3, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->c:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 66
    iput-object p4, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->e:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    .line 67
    new-instance v0, Lcom/yelp/android/ui/util/e;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/e;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->d:Lcom/yelp/android/ui/util/e;

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->b:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f030156

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->d:Lcom/yelp/android/ui/util/e;

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/e;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->d:Lcom/yelp/android/ui/util/e;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/aj;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->b:Lcom/yelp/android/ui/util/aj;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->c:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/appdata/webrequests/core/MetricsManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->e:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 8

    .prologue
    const v7, 0x7f0f0483

    const v6, 0x7f0f0482

    const/16 v5, 0x8

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aE()Lcom/yelp/android/serializable/SpamAlert;

    move-result-object v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aE()Lcom/yelp/android/serializable/SpamAlert;

    move-result-object v2

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v1, "type"

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->e:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->BusinessSpamAlertShown:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v3, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 93
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a:Landroid/view/View;

    if-nez v1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030156

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a:Landroid/view/View;

    .line 97
    :cond_2
    new-instance v3, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel$1;-><init>(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;Ljava/util/Map;)V

    .line 132
    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0f0481

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 137
    const v1, 0x7f0f047e

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/webimageview/WebImageView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 139
    const v1, 0x7f0f047f

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v1, 0x7f0f0480

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->f:Ljava/lang/String;

    .line 142
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 143
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :goto_1
    const-string/jumbo v0, "fraud_warning"

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 151
    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->b:Lcom/yelp/android/ui/util/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->a(Z)V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->c:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c(Z)V

    goto/16 :goto_0

    .line 145
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
