.class public Lcom/yelp/android/ui/panels/ac;
.super Landroid/widget/LinearLayout;
.source "PanelMapCallout.java"


# instance fields
.field private a:Lcom/yelp/android/ui/panels/ae;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/ac;)Lcom/yelp/android/ui/panels/ae;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->a:Lcom/yelp/android/ui/panels/ae;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusiness;Z)V
    .locals 8

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ac;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayNameForBusinessSearchResult(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v4, p0, Lcom/yelp/android/ui/panels/ac;->c:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v4

    invoke-static {v0, v4}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/TextView;F)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->d:Landroid/widget/TextView;

    const v4, 0x7f0e0022

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getCategories()Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
    iget-object v4, p0, Lcom/yelp/android/ui/panels/ac;->e:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->f:Landroid/widget/TextView;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getPrice()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yelp/android/appdata/LocaleSettings;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getHours()Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ac;->getContext()Landroid/content/Context;

    move-result-object v5

    new-array v6, v1, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-static {v5, v0, v4}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;[Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Lcom/yelp/android/services/s;

    move-result-object v0

    .line 110
    if-nez p2, :cond_5

    invoke-virtual {v0}, Lcom/yelp/android/services/s;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->isClosed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 111
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 113
    iget-object v2, p0, Lcom/yelp/android/ui/panels/ac;->g:Landroid/widget/TextView;

    const v4, 0x7f0a008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->g:Landroid/widget/TextView;

    const v2, 0x7f0700f8

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 84
    goto/16 :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->g:Landroid/widget/TextView;

    const v2, 0x7f0700f5

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/panels/ac;->g:Landroid/widget/TextView;

    const v4, 0x7f0a00b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    invoke-virtual {v0}, Lcom/yelp/android/services/s;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->g:Landroid/widget/TextView;

    const v2, 0x7f0700f1

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->g:Landroid/widget/TextView;

    const v2, 0x7f0700ed

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Event;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->f:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/ac;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)V

    .line 78
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/LocalAd;)V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/ac;->a(Lcom/yelp/android/serializable/YelpBusiness;Z)V

    .line 73
    iget-object v1, p0, Lcom/yelp/android/ui/panels/ac;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/LocalAd;->isRatingDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/panels/ae;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 39
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ac;->a:Lcom/yelp/android/ui/panels/ae;

    .line 44
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ac;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ac;->setOrientation(I)V

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/ac;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    const v1, 0x7f030120

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const v0, 0x7f0c03fa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ac;->b:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0c03f9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ac;->c:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0c03fb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ac;->d:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0c03fc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ac;->f:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0c03fe

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ac;->e:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0c03fd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ac;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ac;->g:Landroid/widget/TextView;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/panels/ad;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/ad;-><init>(Lcom/yelp/android/ui/panels/ac;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ac;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method
