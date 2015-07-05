.class public Lcom/yelp/android/ui/activities/nearby/ae;
.super Lcom/yelp/android/ui/util/au;
.source "NearbyResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/NearbyResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ae;->a:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/nearby/af;ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    const v6, 0x7f0202c6

    const v9, 0x7f0200c4

    const/16 v8, 0x8

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 87
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 88
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/nearby/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyResult;

    .line 89
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->getReason()Lcom/yelp/android/serializable/NearbyReason;

    move-result-object v3

    .line 90
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    .line 91
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->getReason()Lcom/yelp/android/serializable/NearbyReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyReason;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v5

    .line 94
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotos()Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 96
    :goto_0
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 97
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 98
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 99
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    :goto_2
    if-eqz v5, :cond_d

    .line 107
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->l:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {v3}, Lcom/yelp/android/serializable/NearbyReason;->getUserReason()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->getPhotos()Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v1

    .line 113
    :goto_3
    iget-object v4, p1, Lcom/yelp/android/ui/activities/nearby/af;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_4
    const v6, 0x7f02009c

    invoke-virtual {v4, v0, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 115
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    const-string/jumbo v0, "ROYALTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    iget-object v1, p1, Lcom/yelp/android/ui/activities/nearby/af;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->isMale()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0702fb

    :goto_5
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->g:Landroid/widget/TextView;

    const v1, 0x7f0203ef

    invoke-virtual {v0, v7, v7, v1, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 157
    :cond_0
    :goto_6
    return-void

    .line 95
    :cond_1
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getLargeUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 101
    :cond_3
    iget-object v4, p1, Lcom/yelp/android/ui/activities/nearby/af;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v4, v0, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 102
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 112
    :cond_4
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    goto :goto_3

    .line 113
    :cond_5
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 117
    :cond_6
    const v0, 0x7f0702fa

    goto :goto_5

    .line 122
    :cond_7
    const-string/jumbo v0, "REGULAR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    iget-object v1, p1, Lcom/yelp/android/ui/activities/nearby/af;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->isMale()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f0702fd

    :goto_7
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->g:Landroid/widget/TextView;

    const v1, 0x7f020315

    invoke-virtual {v0, v7, v7, v1, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_6

    .line 123
    :cond_8
    const v0, 0x7f0702fc

    goto :goto_7

    .line 128
    :cond_9
    const-string/jumbo v0, "FOUR_STAR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 129
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/af;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->isMale()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0704b5

    :goto_8
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 135
    iget-object v2, p1, Lcom/yelp/android/ui/activities/nearby/af;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 129
    :cond_a
    const v0, 0x7f0704b4

    goto :goto_8

    .line 137
    :cond_b
    const-string/jumbo v0, "FIVE_STAR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/af;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->isMale()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0704b5

    :goto_9
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 143
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 144
    iget-object v2, p1, Lcom/yelp/android/ui/activities/nearby/af;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 138
    :cond_c
    const v0, 0x7f0704b4

    goto :goto_9

    .line 147
    :cond_d
    invoke-virtual {v3}, Lcom/yelp/android/serializable/NearbyReason;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 149
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->l:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/NearbyReason;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 153
    :cond_e
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->l:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private b(Lcom/yelp/android/ui/activities/nearby/af;ILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 10

    .prologue
    .line 161
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 163
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/nearby/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyResult;

    .line 165
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    .line 171
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/af;->d:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 172
    const-string/jumbo v3, "NearbyResultAdapter"

    const-string/jumbo v4, "bizName is null"

    invoke-static {v3, v4}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    :cond_0
    if-nez v2, :cond_1

    .line 175
    const-string/jumbo v3, "NearbyResultAdapter"

    const-string/jumbo v4, "biz is null"

    invoke-static {v3, v4}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    :cond_1
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/af;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/af;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getCategoryForBusinessSearchResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getPrice()I

    move-result v3

    .line 182
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v4

    .line 183
    iget-object v5, p1, Lcom/yelp/android/ui/activities/nearby/af;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Lcom/yelp/android/appdata/LocaleSettings;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v5, p1, Lcom/yelp/android/ui/activities/nearby/af;->i:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/yelp/android/ui/activities/nearby/af;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/af;->j:Landroid/widget/TextView;

    .line 189
    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v4

    .line 190
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0022

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v0

    invoke-static {v3, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/TextView;F)V

    .line 195
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/af;->k:Landroid/widget/TextView;

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v2, v1, v3}, Lcom/yelp/android/serializable/YelpBusiness;->getDistanceFormatted(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/nearby/ae;->b:Z

    .line 84
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/nearby/af;

    if-nez v0, :cond_2

    .line 52
    :cond_0
    if-eqz p2, :cond_1

    .line 53
    const-string/jumbo v0, "NearbyResultAdapter"

    const-string/jumbo v1, "Creating view because tag is not a ViewHolder"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/af;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/nearby/af;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/af;

    .line 62
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ae;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/NearbyResult;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ae;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/NearbyResult;->setRowId(Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/nearby/ae;->b(Lcom/yelp/android/ui/activities/nearby/af;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 65
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/nearby/ae;->a(Lcom/yelp/android/ui/activities/nearby/af;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ae;->b:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ae;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 79
    :goto_0
    return-object p2

    .line 73
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010049

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;I)I

    move-result v0

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
