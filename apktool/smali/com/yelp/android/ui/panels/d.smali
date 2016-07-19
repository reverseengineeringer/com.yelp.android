.class public Lcom/yelp/android/ui/panels/d;
.super Landroid/widget/LinearLayout;
.source "PanelMapCallout.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 40
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/d;->setOrientation(I)V

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    const v1, 0x7f030183

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    const v0, 0x7f0f04e0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/d;->a:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0f04df

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/d;->b:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0f04e1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/d;->c:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0f04e2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/d;->e:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0f04e4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/d;->d:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0f04e3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/d;->f:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Event;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->C()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->e:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/panels/d;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)V

    .line 66
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/LocalAd;)V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/panels/d;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)V

    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/panels/d;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/LocalAd;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/yelp/android/serializable/YelpBusiness;Z)V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/d;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/yelp/android/serializable/YelpBusiness;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, p0, Lcom/yelp/android/ui/panels/d;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->c:Landroid/widget/TextView;

    const v4, 0x7f080025

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aV()Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/yelp/android/ui/panels/d;->d:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->ar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aM()Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->d()Ljava/util/TimeZone;

    move-result-object v4

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/d;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v1, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-static {v5, v0, v4}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Lcom/yelp/android/services/f$a;

    move-result-object v0

    .line 100
    if-nez p2, :cond_5

    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->r()Z

    move-result v4

    if-nez v4, :cond_5

    .line 101
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/yelp/android/ui/panels/d;->f:Landroid/widget/TextView;

    const v4, 0x7f0e00c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->f:Landroid/widget/TextView;

    const v2, 0x7f07017e

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto/16 :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->f:Landroid/widget/TextView;

    const v2, 0x7f07017d

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 110
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/panels/d;->f:Landroid/widget/TextView;

    const v4, 0x7f0e00fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    invoke-virtual {v0}, Lcom/yelp/android/services/f$a;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->f:Landroid/widget/TextView;

    const v2, 0x7f070179

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->f:Landroid/widget/TextView;

    const v2, 0x7f070177

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
