.class public Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;
.super Landroid/widget/LinearLayout;
.source "FromThisBusinessPanel.java"


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/WebImageView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030061

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    const v0, 0x7f0c01ec

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 28
    const v0, 0x7f0c01ee

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->b:Landroid/widget/TextView;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/FromThisBusiness;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 32
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/FromThisBusiness;->getShowTeaser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->setVisibility(I)V

    .line 58
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p2}, Lcom/yelp/android/serializable/FromThisBusiness;->getRepresentative()Lcom/yelp/android/serializable/BusinessRepresentative;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessRepresentative;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessRepresentative;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f020090

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 46
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/FromThisBusiness;->getSpecialties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/ce;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessOpenFromThisBusinessTeaser:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v0, p0, v1, p1}, Lcom/yelp/android/ui/activities/businesspage/ce;-><init>(Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->setVisibility(I)V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto :goto_1
.end method
