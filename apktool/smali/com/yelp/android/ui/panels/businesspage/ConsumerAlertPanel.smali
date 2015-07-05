.class public Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;
.super Landroid/widget/RelativeLayout;
.source "ConsumerAlertPanel.java"


# instance fields
.field private a:Lcom/yelp/android/ui/util/bs;

.field private b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private c:Lcom/yelp/android/ui/util/h;

.field private d:Lcom/yelp/android/av/a;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/util/bs;Lcom/yelp/android/ui/util/ScrollToLoadListView;Lcom/yelp/android/av/a;)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a:Lcom/yelp/android/ui/util/bs;

    .line 59
    iput-object p3, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 60
    iput-object p4, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->d:Lcom/yelp/android/av/a;

    .line 61
    new-instance v0, Lcom/yelp/android/ui/util/h;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->c:Lcom/yelp/android/ui/util/h;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0300f8

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->c:Lcom/yelp/android/ui/util/h;

    invoke-static {v2}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/h;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->c:Lcom/yelp/android/ui/util/h;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/bs;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a:Lcom/yelp/android/ui/util/bs;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Lcom/yelp/android/av/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->d:Lcom/yelp/android/av/a;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 5

    .prologue
    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getSpamAlert()Lcom/yelp/android/serializable/SpamAlert;

    move-result-object v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getSpamAlert()Lcom/yelp/android/serializable/SpamAlert;

    move-result-object v2

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    const-string/jumbo v1, "id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "type"

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->d:Lcom/yelp/android/av/a;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->BusinessSpamAlertShown:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v3, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0300f8

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    new-instance v3, Lcom/yelp/android/ui/panels/businesspage/a;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/panels/businesspage/a;-><init>(Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;Ljava/util/Map;)V

    .line 117
    const v0, 0x7f0c03a3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0c03a4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f0c03a2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 122
    const v1, 0x7f0c039f

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/webimageview/WebImageView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yelp/android/webimageview/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 124
    const v1, 0x7f0c03a0

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v1, 0x7f0c03a1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v2}, Lcom/yelp/android/serializable/SpamAlert;->getEvidenceUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->e:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->a:Lcom/yelp/android/ui/util/bs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(Z)V

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/ConsumerAlertPanel;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->c(Z)V

    goto/16 :goto_0

    .line 130
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
