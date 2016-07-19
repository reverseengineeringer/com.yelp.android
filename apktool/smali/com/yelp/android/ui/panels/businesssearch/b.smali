.class public Lcom/yelp/android/ui/panels/businesssearch/b;
.super Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
.source "BusinessSearchResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/ui/panels/businesssearch/c;",
        ">",
        "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final c:Landroid/view/LayoutInflater;

.field private d:Ljava/lang/String;

.field private e:Landroid/app/Activity;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->c:Landroid/view/LayoutInflater;

    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->e:Landroid/app/Activity;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->c:Landroid/view/LayoutInflater;

    .line 54
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->e:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesssearch/b;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 191
    instance-of v0, p1, Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 192
    const v0, 0x7f0f023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 194
    const v1, 0x7f0f058a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 197
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 198
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 199
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 3

    .prologue
    .line 113
    const v0, 0x7f0f0452

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    const v1, 0x7f0f0462

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 119
    iget-boolean v2, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->f:Z

    if-eqz v2, :cond_0

    .line 120
    invoke-direct {p0, v0, p2}, Lcom/yelp/android/ui/panels/businesssearch/b;->b(Landroid/view/View;Lcom/yelp/android/serializable/BusinessSearchResult;)V

    .line 121
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/panels/businesssearch/b;->a(Landroid/view/View;)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/yelp/android/ui/panels/businesssearch/b;->b(Landroid/view/View;Lcom/yelp/android/serializable/BusinessSearchResult;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/b;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchResultAnnotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    const v0, 0x7f0f0461

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 88
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 89
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SearchResultAnnotation;

    .line 90
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->c:Landroid/view/LayoutInflater;

    const v3, 0x7f0301a2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 94
    const v3, 0x7f0f0518

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->e()I

    move-result v5

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->c()I

    move-result v6

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->d()I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    const v3, 0x7f0f0517

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 104
    iget-object v5, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 105
    iget-object v5, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->e:Landroid/app/Activity;

    invoke-static {v5}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v5

    invoke-virtual {v1}, Lcom/yelp/android/serializable/SearchResultAnnotation;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 107
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 109
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/businesssearch/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/view/View;Lcom/yelp/android/serializable/BusinessSearchResult;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 129
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Landroid/view/ViewStub;

    .line 131
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 134
    :cond_0
    const v0, 0x7f0f023a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 135
    const v1, 0x7f0f058a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 137
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 138
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 139
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->c()Ljava/util/ArrayList;

    move-result-object v3

    .line 145
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/serializable/SearchAction;

    .line 146
    invoke-interface {v2}, Lcom/yelp/android/serializable/SearchAction;->a()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v3

    sget-object v6, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    if-ne v3, v6, :cond_4

    if-nez v4, :cond_4

    iget-boolean v3, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->f:Z

    if-eqz v3, :cond_4

    move-object v3, v2

    .line 149
    check-cast v3, Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/PlatformSearchAction;->q()Ljava/util/List;

    move-result-object v3

    .line 152
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 153
    iget-object v4, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6, v1, v3}, Lcom/yelp/android/ui/util/ai;->b(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 158
    const/4 v4, 0x1

    move v3, v4

    .line 162
    :goto_1
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BusinessSearchResult;->d()Ljava/util/ArrayList;

    move-result-object v4

    .line 164
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v3, :cond_1

    .line 165
    iget-object v6, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7, v1, v4}, Lcom/yelp/android/ui/util/ai;->a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/util/List;)V

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->c:Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->b:Landroid/content/Context;

    invoke-static {v0, v2, v4, v6}, Lcom/yelp/android/ui/util/ah;->a(Landroid/view/ViewGroup;Lcom/yelp/android/serializable/SearchAction;Landroid/view/LayoutInflater;Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v4

    .line 175
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    invoke-interface {v2}, Lcom/yelp/android/serializable/SearchAction;->b()Z

    move-result v6

    if-nez v6, :cond_2

    .line 177
    new-instance v6, Lcom/yelp/android/ui/panels/businesssearch/b$1;

    invoke-direct {v6, p0, v2, p2}, Lcom/yelp/android/ui/panels/businesssearch/b$1;-><init>(Lcom/yelp/android/ui/panels/businesssearch/b;Lcom/yelp/android/serializable/SearchAction;Lcom/yelp/android/serializable/BusinessSearchResult;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    move v4, v3

    .line 186
    goto :goto_0

    .line 187
    :cond_3
    return-void

    :cond_4
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->d:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/yelp/android/ui/panels/businesssearch/b;->f:Z

    .line 79
    return-void
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x7f030148

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/businesssearch/c;

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/businesssearch/c;->e()Lcom/yelp/android/serializable/BusinessSearchResult;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->h()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/b;->a(Landroid/view/View;Ljava/util/List;)V

    .line 62
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/b;->a(Landroid/view/View;Lcom/yelp/android/serializable/BusinessSearchResult;)V

    .line 64
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchAction;

    .line 65
    invoke-interface {v0}, Lcom/yelp/android/serializable/SearchAction;->a()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->RequestAQuote:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    if-ne v0, v3, :cond_0

    .line 66
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchRequestAQuoteShown:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 69
    :cond_1
    return-object v1
.end method
