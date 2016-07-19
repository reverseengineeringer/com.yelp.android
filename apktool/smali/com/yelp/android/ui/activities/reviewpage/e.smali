.class public Lcom/yelp/android/ui/activities/reviewpage/e;
.super Lcom/yelp/android/ui/util/w;
.source "TranslatableReviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReview;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

.field private final b:Lcom/yelp/android/ui/activities/reviewpage/c;

.field private c:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

.field private final d:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 237
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/e$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/e$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/e;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->d:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;

    .line 38
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->c:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 39
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    .line 40
    return-void
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/e;->c()Ljava/util/Locale;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_0

    .line 172
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    .line 173
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/appdata/LocaleSettings;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yelp/android/appdata/LocaleSettings;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 178
    :cond_0
    return v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

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
    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 226
    check-cast p2, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, p1, v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 228
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->d:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setOnTranslationStateChangedCb(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;)V

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setVisibility(I)V

    .line 231
    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1, v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 214
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->b(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/e;->notifyDataSetChanged()V

    .line 133
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setState(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->c:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/e;->b(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Ljava/lang/String;)V

    .line 210
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
    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Ljava/util/Collection;)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a(Ljava/util/Collection;)V

    .line 149
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
    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Ljava/util/List;)V

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setContents(Ljava/util/List;)V

    .line 141
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Z)V

    .line 218
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->b(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 157
    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->getState()Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    move-result-object v0

    .line 186
    :goto_0
    sget-object v1, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->c:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Ljava/util/Locale;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->o()Ljava/util/Locale;

    move-result-object v0

    .line 195
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->clear()V

    .line 124
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    if-nez p1, :cond_0

    const/4 v0, 0x2

    .line 72
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/c;->getItemViewType(I)I

    move-result v0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 100
    :cond_0
    if-nez p1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->c:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/e;->a()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->d:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;Ljava/util/List;Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    const v1, 0x7f0f0437

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setId(I)V

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->a()V

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/c;->isEnabled(I)Z

    move-result v0

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
