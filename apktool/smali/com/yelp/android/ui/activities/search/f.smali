.class public Lcom/yelp/android/ui/activities/search/f;
.super Landroid/widget/BaseAdapter;
.source "SeparatedSearchAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/g;


# static fields
.field private static final a:Ljava/lang/Integer;

.field private static final b:Ljava/lang/Integer;

.field private static final c:Ljava/lang/Integer;

.field private static final d:Ljava/lang/Integer;

.field private static final e:Ljava/lang/Integer;


# instance fields
.field private final f:Lcom/yelp/android/ui/panels/businesssearch/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/panels/businesssearch/b",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/SearchSeparator;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/search/f;->a:Ljava/lang/Integer;

    .line 34
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/search/f;->b:Ljava/lang/Integer;

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/search/f;->c:Ljava/lang/Integer;

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/search/f;->d:Ljava/lang/Integer;

    .line 38
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/search/f;->e:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->g:Ljava/util/List;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->h:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->i:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-direct {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->g:Ljava/util/List;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->h:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->i:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-direct {v0, p1, p2}, Lcom/yelp/android/ui/panels/businesssearch/b;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    .line 54
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 263
    .line 264
    if-nez p2, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030161

    invoke-virtual {v0, v1, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 268
    const v0, 0x7f0f0496

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f020227

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    const v0, 0x7f0f0498

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_0
    const v0, 0x7f0f0497

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 274
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f070433

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/search/f;->h:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/yelp/android/ui/activities/search/f;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-object p2
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .prologue
    .line 251
    check-cast p2, Landroid/widget/TextView;

    .line 252
    if-nez p2, :cond_0

    .line 253
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0101cc

    invoke-direct {p2, v0, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 255
    const v0, 0x7f020443

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 257
    :cond_0
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    return-object p2
.end method

.method private a(Lcom/yelp/android/serializable/SearchSeparator;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/b;->e()I

    move-result v3

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/b;->getCount()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchSeparator;->a()I

    move-result v4

    if-le v0, v4, :cond_0

    move v0, v1

    .line 245
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchSeparator;->a()I

    move-result v4

    if-gt v3, v4, :cond_1

    move v3, v1

    .line 246
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 243
    goto :goto_0

    :cond_1
    move v3, v2

    .line 245
    goto :goto_1

    :cond_2
    move v1, v2

    .line 246
    goto :goto_2
.end method

.method private b(I)Lcom/yelp/android/g/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/g/g",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/yelp/android/g/g;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v1, p1}, Lcom/yelp/android/ui/panels/businesssearch/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/g/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    :goto_0
    return-object v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/b;->e()I

    move-result v6

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v2

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchSeparator;

    .line 200
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/f;->a(Lcom/yelp/android/serializable/SearchSeparator;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 206
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchSeparator;->a()I

    move-result v5

    if-nez v5, :cond_6

    .line 208
    add-int/lit8 v5, v3, 0x1

    .line 209
    if-nez p1, :cond_2

    .line 210
    new-instance v0, Lcom/yelp/android/g/g;

    sget-object v1, Lcom/yelp/android/ui/activities/search/f;->a:Ljava/lang/Integer;

    sget-object v2, Lcom/yelp/android/ui/activities/search/f;->b:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/g/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v1, v4

    .line 217
    :goto_1
    add-int v8, v6, p1

    if-eqz v1, :cond_3

    move v3, v4

    :goto_2
    sub-int/2addr v8, v3

    .line 218
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchSeparator;->a()I

    move-result v3

    if-le v8, v3, :cond_5

    .line 219
    add-int/lit8 v3, v5, 0x1

    .line 221
    :goto_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchSeparator;->a()I

    move-result v5

    if-ne v8, v5, :cond_1

    .line 222
    new-instance v1, Lcom/yelp/android/g/g;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchSeparator;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/ui/activities/search/f;->b:Ljava/lang/Integer;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/g/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move v3, v2

    .line 217
    goto :goto_2

    .line 227
    :cond_4
    sub-int v1, p1, v3

    .line 228
    new-instance v0, Lcom/yelp/android/g/g;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/panels/businesssearch/b;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/yelp/android/g/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    move v5, v3

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/b;->b(I)V

    .line 123
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/b;->a(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 2

    .prologue
    .line 146
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->m()Ljava/util/List;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 148
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/f;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->g:Ljava/util/List;

    new-instance v1, Lcom/yelp/android/ui/activities/search/f$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/f$1;-><init>(Lcom/yelp/android/ui/activities/search/f;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/b;->a(Ljava/util/List;)V

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/b;->a(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/f;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    invoke-static {p1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->h:Ljava/lang/String;

    .line 170
    :goto_0
    invoke-static {p2}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f070231

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->i:Ljava/lang/String;

    .line 175
    :goto_1
    return-void

    .line 168
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/f;->h:Ljava/lang/String;

    goto :goto_0

    .line 173
    :cond_1
    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/f;->i:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/b;->c(Ljava/util/Collection;)V

    .line 135
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/b;->a(Z)V

    .line 143
    return-void
.end method

.method public varargs a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/b;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 131
    return-void
.end method

.method public varargs b([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/b;->b([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 139
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/b;->clear()V

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/f;->notifyDataSetChanged()V

    .line 61
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/b;->getCount()I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/f;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SearchSeparator;

    .line 87
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/f;->a(Lcom/yelp/android/serializable/SearchSeparator;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SearchSeparator;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 91
    add-int/lit8 v1, v1, 0x1

    .line 93
    :cond_0
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/f;->b(I)Lcom/yelp/android/g/g;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 106
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/f;->b(I)Lcom/yelp/android/g/g;

    move-result-object v0

    .line 66
    iget-object v1, v0, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    sget-object v2, Lcom/yelp/android/ui/activities/search/f;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    sget-object v0, Lcom/yelp/android/ui/activities/search/f;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-object v1, v0, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 69
    sget-object v0, Lcom/yelp/android/ui/activities/search/f;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    iget-object v0, v0, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/businesssearch/b;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/yelp/android/ui/activities/search/f;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/f;->b(I)Lcom/yelp/android/g/g;

    move-result-object v0

    .line 112
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/f;->getItemViewType(I)I

    move-result v1

    .line 113
    sget-object v2, Lcom/yelp/android/ui/activities/search/f;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 114
    invoke-direct {p0, p3, p2}, Lcom/yelp/android/ui/activities/search/f;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 115
    :cond_0
    sget-object v2, Lcom/yelp/android/ui/activities/search/f;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 116
    iget-object v0, v0, Lcom/yelp/android/g/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p3, p2, v0}, Lcom/yelp/android/ui/activities/search/f;->a(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    iget-object v0, v0, Lcom/yelp/android/g/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2, p3}, Lcom/yelp/android/ui/panels/businesssearch/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/yelp/android/ui/activities/search/f;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/f;->f:Lcom/yelp/android/ui/panels/businesssearch/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/businesssearch/b;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
