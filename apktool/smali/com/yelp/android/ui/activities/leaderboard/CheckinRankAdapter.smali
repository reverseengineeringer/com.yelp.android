.class public Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;
.super Lcom/yelp/android/ui/util/w;
.source "CheckinRankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;,
        Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/Ranking;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "rank_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;)V

    .line 67
    const-string/jumbo v0, "rank_items"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a(Ljava/util/List;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    .line 57
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 78
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 79
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Ranking;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Ranking;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_1
    return v1

    .line 78
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 84
    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 165
    const-string/jumbo v0, "rank_items"

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 167
    const-string/jumbo v0, "rank_type"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 168
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Ranking;

    .line 157
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Ranking;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Ranking;

    .line 91
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 92
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->getItemViewType(I)I

    move-result v1

    .line 94
    if-nez p2, :cond_0

    .line 95
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03017b

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance v3, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;

    invoke-direct {v3, p2}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;-><init>(Landroid/view/View;)V

    .line 99
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 101
    iget-object v1, v3, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    sget-object v4, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->BIZ:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    if-ne v1, v4, :cond_2

    const v1, 0x7f080006

    .line 106
    :goto_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Ranking;->m()I

    move-result v4

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v2, v1, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 107
    iget-object v4, v3, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, v3, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v3, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->CLIP:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    .line 112
    invoke-static {p2}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/ar$a;

    move-result-object v1

    .line 113
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    invoke-static {p2, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;Lcom/yelp/android/ui/util/ar$a;)V

    .line 122
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 123
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;

    .line 126
    iget-object v3, v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Ranking;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v3, v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Ranking;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v3, v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Ranking;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v3, p0, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter;->b:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    sget-object v4, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;->BIZ:Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$RankMode;

    if-ne v3, v4, :cond_1

    .line 134
    if-nez p1, :cond_4

    .line 135
    iget-object v3, v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->b:Landroid/widget/TextView;

    const v4, 0x7f020583

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v3, v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->b:Landroid/widget/TextView;

    const v4, 0x7f0e0152

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v3, v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->b:Landroid/widget/TextView;

    const v4, 0x7f0705cf

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    :cond_1
    :goto_2
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->a(Lcom/yelp/android/serializable/DisplayableAsUserBadge;)V

    .line 146
    return-object p2

    .line 102
    :cond_2
    const v1, 0x7f080008

    goto/16 :goto_0

    .line 118
    :cond_3
    iget-object v1, v3, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->a:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 140
    :cond_4
    iget-object v3, v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v3, v1, Lcom/yelp/android/ui/activities/leaderboard/CheckinRankAdapter$a;->b:Landroid/widget/TextView;

    const v4, 0x7f0e00ac

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x2

    return v0
.end method
