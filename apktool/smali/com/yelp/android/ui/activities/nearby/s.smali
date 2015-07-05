.class public Lcom/yelp/android/ui/activities/nearby/s;
.super Ljava/lang/Object;
.source "NearbyHeaderController.java"


# instance fields
.field private a:Z

.field private b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private c:Lcom/yelp/android/ui/widgets/WidgetSpan;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->f:J

    .line 52
    sget-object v0, Lcom/yelp/android/appdata/Features;->nearby_search_suggest:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->a:Z

    .line 53
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/s;->e()V

    .line 54
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/s;->e:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/s;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 223
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 224
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getRichSearchSuggestionType()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getRichSearchSuggestionType()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    if-eq v0, v2, :cond_0

    .line 228
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    add-int/lit8 v1, v1, -0x1

    .line 222
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 232
    :cond_1
    return-object p0
.end method

.method private c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    move v1, v2

    .line 101
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 102
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_1

    const-string/jumbo v4, "MoreCategories"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x1

    .line 109
    :goto_1
    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    const v4, 0x7f07039a

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ellipses"

    const-string/jumbo v5, "MoreCategories"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/yelp/android/serializable/RichSearchSuggestion;-><init>(Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    new-instance v3, Lcom/yelp/android/ui/activities/nearby/ag;

    invoke-direct {v3}, Lcom/yelp/android/ui/activities/nearby/ag;-><init>()V

    .line 117
    invoke-virtual {v3, p1}, Lcom/yelp/android/ui/activities/nearby/ag;->a(Ljava/util/List;)V

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/s;->b()V

    move v1, v2

    .line 121
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f030127

    iget-object v5, p0, Lcom/yelp/android/ui/activities/nearby/s;->c:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v0, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 124
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ah;

    invoke-direct {v0, v4}, Lcom/yelp/android/ui/activities/nearby/ah;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v3, v1, v4, v0}, Lcom/yelp/android/ui/activities/nearby/ag;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 126
    new-instance v5, Lcom/yelp/android/ui/activities/nearby/v;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-direct {v5, p0, v0}, Lcom/yelp/android/ui/activities/nearby/v;-><init>(Lcom/yelp/android/ui/activities/nearby/s;Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->c:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WidgetSpan;->addView(Landroid/view/View;)V

    .line 121
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 101
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private d()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/m;

    move-result-object v3

    .line 135
    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080001

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 137
    array-length v6, v4

    move v0, v2

    :goto_0
    if-ge v0, v6, :cond_2

    aget-object v7, v4, v0

    .line 138
    invoke-virtual {v3, v7}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v8

    .line 139
    if-eqz v8, :cond_1

    .line 142
    new-instance v7, Lcom/yelp/android/serializable/Category;

    invoke-direct {v7, v8}, Lcom/yelp/android/serializable/Category;-><init>(Lcom/yelp/android/serializable/Category;)V

    .line 143
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const-string/jumbo v8, "MoreCategories"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 147
    new-instance v8, Lcom/yelp/android/serializable/Category;

    const v9, 0x7f07039a

    invoke-virtual {v1, v9}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-direct {v8, v9, v7, v10}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Lcom/yelp/android/serializable/Category;->setNumChildren(I)V

    .line 149
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/s;->b()V

    .line 155
    new-instance v3, Lcom/yelp/android/ui/activities/ei;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->d:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v2, v0, v1}, Lcom/yelp/android/ui/activities/ei;-><init>(ZLjava/util/Map;Ljava/util/List;)V

    .line 157
    invoke-virtual {v3, v5}, Lcom/yelp/android/ui/activities/ei;->a(Ljava/util/List;)V

    move v1, v2

    .line 158
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f030074

    iget-object v6, p0, Lcom/yelp/android/ui/activities/nearby/s;->c:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v0, v4, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 161
    new-instance v0, Lcom/yelp/android/ui/activities/ej;

    invoke-direct {v0, v4}, Lcom/yelp/android/ui/activities/ej;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v3, v1, v4, v0}, Lcom/yelp/android/ui/activities/ei;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 163
    new-instance v6, Lcom/yelp/android/ui/activities/nearby/u;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v0, v7}, Lcom/yelp/android/ui/activities/nearby/u;-><init>(Lcom/yelp/android/ui/activities/nearby/s;Lcom/yelp/android/serializable/Category;Lcom/yelp/android/ui/activities/nearby/t;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->c:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WidgetSpan;->addView(Landroid/view/View;)V

    .line 158
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 166
    :cond_3
    return-void
.end method

.method private e()V
    .locals 7

    .prologue
    .line 196
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200eb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 199
    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 206
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/s;->d:Ljava/util/Map;

    .line 208
    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    .line 209
    iget-object v4, p0, Lcom/yelp/android/ui/activities/nearby/s;->d:Ljava/util/Map;

    aget-object v5, v2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 184
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const-string/jumbo v0, ","

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/t;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/t;-><init>(Lcom/yelp/android/ui/activities/nearby/s;)V

    invoke-static {v0, p1, v1}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/ag;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->f:J

    .line 59
    return-void
.end method

.method public a(Lcom/yelp/android/ui/util/ScrollToLoadListView;)V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->c:Lcom/yelp/android/ui/widgets/WidgetSpan;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WidgetSpan;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->c:Lcom/yelp/android/ui/widgets/WidgetSpan;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->c:Lcom/yelp/android/ui/widgets/WidgetSpan;

    const-string/jumbo v1, "HEADER"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 95
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/s;->b:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 96
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/ui/activities/nearby/s;->f:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    const-string/jumbo v3, "request_id"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v3, "location_time"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->a:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/s;->c(Ljava/util/List;)V

    .line 71
    const-string/jumbo v0, "aliases"

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/s;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->NearbySuggestSearches:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/s;->d()V

    .line 78
    const-string/jumbo v0, "aliases"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/s;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->NearbyDefaultSearches:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->c:Lcom/yelp/android/ui/widgets/WidgetSpan;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/s;->c:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->removeAllViews()V

    .line 87
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 175
    const-string/jumbo v1, ","

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
