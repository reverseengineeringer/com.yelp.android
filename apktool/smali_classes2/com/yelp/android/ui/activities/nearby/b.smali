.class public Lcom/yelp/android/ui/activities/nearby/b;
.super Lcom/yelp/android/ui/util/w;
.source "NearbyResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/nearby/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
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
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/b;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/nearby/b$a;ILandroid/view/ViewGroup;)V
    .locals 10

    .prologue
    const v6, 0x7f0203d5

    const v9, 0x7f0200fe

    const/16 v8, 0x8

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 88
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/nearby/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyResult;

    .line 90
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->e()Lcom/yelp/android/serializable/NearbyReason;

    move-result-object v3

    .line 91
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    .line 92
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->e()Lcom/yelp/android/serializable/NearbyReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyReason;->a()Lcom/yelp/android/serializable/User;

    move-result-object v5

    .line 95
    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->aT()Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 97
    :goto_0
    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    .line 98
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 100
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :goto_2
    if-eqz v5, :cond_d

    .line 108
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->l:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {v3}, Lcom/yelp/android/serializable/NearbyReason;->b()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->ag()Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v1

    .line 114
    :goto_3
    iget-object v4, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    :goto_4
    const v6, 0x7f0200c7

    invoke-virtual {v4, v0, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 116
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->f:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const-string/jumbo v0, "ROYALTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 118
    iget-object v1, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f070341

    :goto_5
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->g:Landroid/widget/TextView;

    const v1, 0x7f020582

    invoke-virtual {v0, v7, v7, v1, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 163
    :cond_0
    :goto_6
    return-void

    .line 96
    :cond_1
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 102
    :cond_3
    iget-object v4, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v4, v0, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 103
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 113
    :cond_4
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    goto :goto_3

    .line 114
    :cond_5
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 118
    :cond_6
    const v0, 0x7f070340

    goto :goto_5

    .line 123
    :cond_7
    const-string/jumbo v0, "REGULAR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 124
    iget-object v1, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->w()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f070343

    :goto_7
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->g:Landroid/widget/TextView;

    const v1, 0x7f02044b

    invoke-virtual {v0, v7, v7, v1, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_6

    .line 124
    :cond_8
    const v0, 0x7f070342

    goto :goto_7

    .line 131
    :cond_9
    const-string/jumbo v0, "FOUR_STAR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 132
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->w()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0704cf

    :goto_8
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 140
    iget-object v2, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 132
    :cond_a
    const v0, 0x7f0704ce

    goto :goto_8

    .line 142
    :cond_b
    const-string/jumbo v0, "FIVE_STAR"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->g:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->w()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0704cf

    :goto_9
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 151
    iget-object v2, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 143
    :cond_c
    const v0, 0x7f0704ce

    goto :goto_9

    .line 154
    :cond_d
    invoke-virtual {v3}, Lcom/yelp/android/serializable/NearbyReason;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 156
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->l:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/NearbyReason;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 160
    :cond_e
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->l:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private b(Lcom/yelp/android/ui/activities/nearby/b$a;ILandroid/view/ViewGroup;)V
    .locals 10

    .prologue
    .line 166
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 168
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/nearby/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/NearbyResult;

    .line 170
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    .line 172
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->ar()Ljava/lang/String;

    move-result-object v3

    .line 177
    iget-object v4, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v3

    .line 179
    iget-object v4, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->i:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->i:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->M()I

    move-result v6

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v3, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->j:Landroid/widget/TextView;

    .line 185
    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v4

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080025

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v0}, Lcom/yelp/android/serializable/NearbyResult;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 191
    iget-object v0, p1, Lcom/yelp/android/ui/activities/nearby/b$a;->k:Landroid/widget/TextView;

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v2, v1, v3}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/nearby/b;->b:Z

    .line 85
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/nearby/b$a;

    if-nez v0, :cond_1

    .line 47
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030105

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/b$a;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/nearby/b$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/b$a;

    .line 54
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/NearbyResult;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/NearbyResult;->a(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, v0, p1, p3}, Lcom/yelp/android/ui/activities/nearby/b;->b(Lcom/yelp/android/ui/activities/nearby/b$a;ILandroid/view/ViewGroup;)V

    .line 57
    invoke-direct {p0, v0, p1, p3}, Lcom/yelp/android/ui/activities/nearby/b;->a(Lcom/yelp/android/ui/activities/nearby/b$a;ILandroid/view/ViewGroup;)V

    .line 61
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/b;->b:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/b;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 80
    :goto_0
    return-object p2

    .line 68
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 73
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method
