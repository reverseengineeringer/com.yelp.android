.class public Lcom/yelp/android/ui/activities/reviewpage/bi;
.super Lcom/yelp/android/ui/util/au;
.source "TranslatableReviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReview;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

.field private final b:Lcom/yelp/android/ui/activities/reviewpage/ak;

.field private c:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

.field private final d:Lcom/yelp/android/ui/activities/reviewpage/aj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 212
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/bj;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/bj;-><init>(Lcom/yelp/android/ui/activities/reviewpage/bi;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->d:Lcom/yelp/android/ui/activities/reviewpage/aj;

    .line 37
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->c:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 38
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    .line 39
    return-void
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->c()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 157
    :cond_0
    return v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    check-cast p2, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, p1, v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 203
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->d:Lcom/yelp/android/ui/activities/reviewpage/aj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setOnTranslationStateChangedCb(Lcom/yelp/android/ui/activities/reviewpage/aj;)V

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setVisibility(I)V

    .line 206
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1, v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 189
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->notifyDataSetChanged()V

    .line 129
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setState(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->c:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/util/Collection;)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Ljava/util/Collection;)V

    .line 145
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Ljava/util/List;)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setContents(Ljava/util/List;)V

    .line 137
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Z)V

    .line 193
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getState()Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    move-result-object v0

    .line 163
    :goto_0
    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->c:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    goto :goto_0

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->clear()V

    .line 120
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    if-nez p1, :cond_0

    const/4 v0, 0x2

    .line 70
    :goto_0
    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getItemViewType(I)I

    move-result v0

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 98
    :cond_0
    if-nez p1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->c:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->d:Lcom/yelp/android/ui/activities/reviewpage/aj;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;Ljava/util/List;Lcom/yelp/android/ui/activities/reviewpage/aj;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    const v1, 0x7f0c035f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setId(I)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a()V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bi;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ak;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
