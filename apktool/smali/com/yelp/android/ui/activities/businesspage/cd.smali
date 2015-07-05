.class public Lcom/yelp/android/ui/activities/businesspage/cd;
.super Lcom/yelp/android/ui/util/au;
.source "BusinessRedeemButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 32
    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/cd;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 33
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/cd;->b:Ljava/util/Collection;

    .line 34
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/cd;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/cd;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    .line 46
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/cd;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, p1, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->shouldShow(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/cd;->a(Ljava/util/List;)V

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/cd;->notifyDataSetChanged()V

    .line 53
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 38
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/cd;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 39
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/cd;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/cd;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;

    .line 58
    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 60
    const v2, 0x7f030068

    invoke-virtual {v1, v2, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 64
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 66
    const v1, 0x7f0c0207

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 67
    const v1, 0x7f0c0208

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    iget v6, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->background:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    iget v2, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->textColor:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 72
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    const/4 v7, 0x0

    iget-boolean v2, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->shadowUp:Z

    if-eqz v2, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    :goto_0
    iget v8, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->textShadow:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v3, v7, v2, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 77
    const v2, 0x7f0f00f0

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 79
    iget v2, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->title:I

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    .line 80
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f0f0090

    invoke-direct {v3, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {v2, v3, v9, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 84
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/cd;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;->getSubtitle(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 87
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v2, v0, v9, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_1
    return-object p2

    :cond_1
    move v2, v3

    .line 73
    goto :goto_0

    .line 90
    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v2, v3, v9

    const/4 v2, 0x1

    const-string/jumbo v4, "\n"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    aput-object v0, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 92
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v2, v9, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget v0, Lcom/yelp/android/appdata/ao;->n:I

    invoke-virtual {v1, v9, v9, v9, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1
.end method
