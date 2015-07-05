.class final Lcom/yelp/android/ui/activities/search/l;
.super Landroid/database/DataSetObserver;
.source "SearchBusinessesByList.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/appdata/ap;

.field private final d:Lcom/yelp/android/ui/panels/businesssearch/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/panels/businesssearch/g",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/widget/TextView;

.field private final g:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

.field private final h:Lcom/yelp/android/ui/panels/businesssearch/j;

.field private final i:Lcom/yelp/android/ui/panels/businesssearch/j;

.field private final j:Lcom/yelp/android/ui/util/h;

.field private final k:Lcom/yelp/android/ui/util/bs;

.field private final l:Lcom/yelp/android/ui/util/h;

.field private final m:Lcom/yelp/android/ui/util/h;

.field private final n:Lcom/yelp/android/ui/util/h;

.field private final o:Lcom/yelp/android/ui/activities/search/PagingPanel;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;Lcom/yelp/android/appdata/ap;Lcom/yelp/android/ui/panels/businesssearch/g;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Landroid/widget/TextView;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;Lcom/yelp/android/ui/panels/businesssearch/j;Lcom/yelp/android/ui/panels/businesssearch/j;Lcom/yelp/android/ui/util/h;Lcom/yelp/android/ui/util/bs;Lcom/yelp/android/ui/util/h;Lcom/yelp/android/ui/util/h;Lcom/yelp/android/ui/util/h;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/view/View;",
            "Lcom/yelp/android/appdata/ap;",
            "Lcom/yelp/android/ui/panels/businesssearch/g",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;",
            "Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;",
            "Landroid/widget/TextView;",
            "Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;",
            "Lcom/yelp/android/ui/panels/businesssearch/j;",
            "Lcom/yelp/android/ui/panels/businesssearch/j;",
            "Lcom/yelp/android/ui/util/h;",
            "Lcom/yelp/android/ui/util/bs;",
            "Lcom/yelp/android/ui/util/h;",
            "Lcom/yelp/android/ui/util/h;",
            "Lcom/yelp/android/ui/util/h;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 842
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 843
    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/l;->a:Landroid/view/View;

    .line 844
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->a:Landroid/view/View;

    const v2, 0x7f0c035b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/search/PagingPanel;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    .line 845
    iput-object p3, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    .line 846
    iput-object p4, p0, Lcom/yelp/android/ui/activities/search/l;->d:Lcom/yelp/android/ui/panels/businesssearch/g;

    .line 847
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->e:Ljava/lang/ref/WeakReference;

    .line 848
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/l;->b:Landroid/widget/TextView;

    .line 849
    iput-object p6, p0, Lcom/yelp/android/ui/activities/search/l;->f:Landroid/widget/TextView;

    .line 850
    iput-object p7, p0, Lcom/yelp/android/ui/activities/search/l;->g:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    .line 851
    iput-object p8, p0, Lcom/yelp/android/ui/activities/search/l;->h:Lcom/yelp/android/ui/panels/businesssearch/j;

    .line 852
    iput-object p9, p0, Lcom/yelp/android/ui/activities/search/l;->i:Lcom/yelp/android/ui/panels/businesssearch/j;

    .line 853
    iput-object p10, p0, Lcom/yelp/android/ui/activities/search/l;->j:Lcom/yelp/android/ui/util/h;

    .line 854
    iput-object p11, p0, Lcom/yelp/android/ui/activities/search/l;->k:Lcom/yelp/android/ui/util/bs;

    .line 855
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->l:Lcom/yelp/android/ui/util/h;

    .line 856
    iput-object p12, p0, Lcom/yelp/android/ui/activities/search/l;->m:Lcom/yelp/android/ui/util/h;

    .line 857
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->n:Lcom/yelp/android/ui/util/h;

    .line 858
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/search/l;->p:Z

    .line 860
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/l;->onChanged()V

    .line 861
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/l;)Lcom/yelp/android/appdata/ap;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->m:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->h:Lcom/yelp/android/ui/panels/businesssearch/j;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/l;->a(Lcom/yelp/android/ui/util/h;Lcom/yelp/android/ui/panels/businesssearch/j;)V

    .line 1080
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->n:Lcom/yelp/android/ui/util/h;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->i:Lcom/yelp/android/ui/panels/businesssearch/j;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/l;->a(Lcom/yelp/android/ui/util/h;Lcom/yelp/android/ui/panels/businesssearch/j;)V

    .line 1081
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    .line 1021
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSpellingSuggestion()Ljava/lang/String;

    move-result-object v1

    .line 1023
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->g:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setVisibility(I)V

    .line 1032
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->g:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setSuggestion(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->g:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Filter;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->j:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 1107
    invoke-static {p1, p2}, Lcom/yelp/android/serializable/Filter;->getFilterDisplayString(Lcom/yelp/android/serializable/Filter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    new-instance v2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x7f01015d

    invoke-direct {v2, v0, v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1111
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->j:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 1114
    :cond_0
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/PromotedFilter;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->l:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 1119
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PromotedFilter;->getFilterType()Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PromotedFilter;->getFilterType()Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;->Boolean:Lcom/yelp/android/serializable/PromotedFilter$PromotedFilterType;

    if-eq v0, v1, :cond_1

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->k()Lcom/yelp/android/serializable/Filter;

    move-result-object v1

    .line 1126
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PromotedFilter;->isOn()Z

    move-result v0

    .line 1127
    if-eqz v1, :cond_6

    .line 1129
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Filter;->getAttributes()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PromotedFilter;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/AttributeFilters;->getAttribute(Ljava/lang/String;)Lcom/yelp/android/serializable/AttributeFilter;

    move-result-object v3

    .line 1131
    if-nez v0, :cond_2

    if-eqz v3, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_1
    move v3, v0

    .line 1135
    :goto_2
    sget-object v4, Lcom/yelp/android/analytics/iris/ViewIri;->SearchPromotedFilterShown:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v5, "toggle_on"

    if-eqz v3, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    invoke-static {v4, v5, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1141
    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 1142
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Filter;->getAttributes()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/AttributeFilters;->addPromotedFilter(Lcom/yelp/android/serializable/PromotedFilter;)V

    .line 1145
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1146
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f030139

    invoke-virtual {v1, v4, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->l:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 1150
    const v0, 0x7f0c0424

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1151
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PromotedFilter;->getLabelAttributed()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    const v0, 0x7f0c02a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 1155
    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1156
    new-instance v1, Lcom/yelp/android/ui/activities/search/q;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/search/q;-><init>(Lcom/yelp/android/ui/activities/search/l;Lcom/yelp/android/serializable/PromotedFilter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1131
    goto :goto_1

    .line 1135
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_6
    move v3, v0

    goto :goto_2
.end method

.method private a(Lcom/yelp/android/ui/util/h;Lcom/yelp/android/ui/panels/businesssearch/j;)V
    .locals 4

    .prologue
    .line 1085
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 1092
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->d:Lcom/yelp/android/ui/panels/businesssearch/g;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/g;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/ui/panels/businesssearch/j;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->j:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->l:Lcom/yelp/android/ui/util/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x7f01015d

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1101
    sget v0, Lcom/yelp/android/appdata/ao;->h:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 1102
    invoke-virtual {p1, v1}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/l;)Lcom/yelp/android/ui/panels/businesssearch/g;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->d:Lcom/yelp/android/ui/panels/businesssearch/g;

    return-object v0
.end method

.method private b(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 4

    .prologue
    .line 1035
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getAmbiguousLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1038
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getAmbiguousLocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 1040
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1042
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070204

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1044
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    const/16 v2, 0x3f4

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/l;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private c(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1048
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->isFolded()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    move-result-object v1

    .line 1049
    sget-object v2, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDABLE:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    if-ne v1, v2, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1051
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1075
    :goto_0
    return v0

    .line 1054
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/l;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1055
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/yelp/android/ui/activities/search/p;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/search/p;-><init>(Lcom/yelp/android/ui/activities/search/l;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1072
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->FOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    if-ne v1, v0, :cond_1

    const v0, 0x7f07056e

    .line 1074
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1075
    const/4 v0, 0x1

    goto :goto_0

    .line 1072
    :cond_1
    const v0, 0x7f0702d7

    goto :goto_1
.end method


# virtual methods
.method public onChanged()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x14

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 865
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 866
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    .line 868
    if-nez v6, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->l()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v9

    .line 873
    if-eqz v9, :cond_9

    .line 875
    invoke-virtual {v6}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "filters_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FiltersDialog;

    .line 877
    if-eqz v0, :cond_1

    .line 878
    invoke-interface {v9}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getSuggestedFilters()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/serializable/AttributeFilters;)V

    .line 881
    :cond_1
    invoke-virtual {v6}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->disableLoading()V

    .line 882
    invoke-virtual {v6}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->clearError()V

    .line 883
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->d:Lcom/yelp/android/ui/panels/businesssearch/g;

    invoke-interface {v9}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/g;->b(I)V

    .line 884
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->d:Lcom/yelp/android/ui/panels/businesssearch/g;

    invoke-interface {v9}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getBusinessSearchResults()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/g;->a(Ljava/util/List;)V

    .line 885
    invoke-direct {p0, v9}, Lcom/yelp/android/ui/activities/search/l;->c(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)Z

    move-result v0

    .line 886
    invoke-direct {p0, v9}, Lcom/yelp/android/ui/activities/search/l;->b(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    .line 887
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->a:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 888
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->k:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v1, v10}, Lcom/yelp/android/ui/util/bs;->a(Z)V

    .line 889
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->d:Lcom/yelp/android/ui/panels/businesssearch/g;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/businesssearch/g;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 890
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 893
    :cond_2
    invoke-interface {v9}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getAttribution()Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 895
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->a:Landroid/view/View;

    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 905
    :goto_1
    invoke-interface {v9}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getLocalAds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Ljava/util/List;)Ljava/util/List;

    .line 906
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 907
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 908
    invoke-static {}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 913
    invoke-static {}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 914
    sget-object v4, Lcom/yelp/android/analytics/iris/AutoIri;->AdSearchListImpression:Lcom/yelp/android/analytics/iris/AutoIri;

    invoke-virtual {v0, v11}, Lcom/yelp/android/serializable/LocalAd;->getIriParams(Z)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 915
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getLocalAdPlacement()Lcom/yelp/android/serializable/LocalAdPlacement;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/serializable/LocalAdPlacement;->ABOVE_SEARCH:Lcom/yelp/android/serializable/LocalAdPlacement;

    if-ne v4, v5, :cond_5

    .line 916
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 901
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 917
    :cond_5
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getLocalAdPlacement()Lcom/yelp/android/serializable/LocalAdPlacement;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/serializable/LocalAdPlacement;->BELOW_SEARCH:Lcom/yelp/android/serializable/LocalAdPlacement;

    if-ne v4, v5, :cond_3

    .line 918
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 923
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->h:Lcom/yelp/android/ui/panels/businesssearch/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/j;->a(Ljava/util/List;)V

    .line 924
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->i:Lcom/yelp/android/ui/panels/businesssearch/j;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/businesssearch/j;->a(Ljava/util/List;)V

    .line 927
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->k()Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Filter;->getBusinessState()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 929
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->d:Lcom/yelp/android/ui/panels/businesssearch/g;

    new-array v1, v11, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CLOSES_IN:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/g;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 934
    :goto_3
    invoke-direct {p0, v9}, Lcom/yelp/android/ui/activities/search/l;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    .line 935
    invoke-interface {v9}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getPromotedFilter()Lcom/yelp/android/serializable/PromotedFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/l;->a(Lcom/yelp/android/serializable/PromotedFilter;)V

    .line 937
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/search/l;->p:Z

    if-eqz v0, :cond_7

    .line 940
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    .line 941
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->U()I

    move-result v1

    .line 942
    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->V()I

    move-result v0

    .line 943
    invoke-virtual {v6}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/search/m;

    invoke-direct {v3, p0, v6, v1, v0}, Lcom/yelp/android/ui/activities/search/m;-><init>(Lcom/yelp/android/ui/activities/search/l;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;II)V

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->post(Ljava/lang/Runnable;)Z

    .line 952
    iput-boolean v10, p0, Lcom/yelp/android/ui/activities/search/l;->p:Z

    .line 957
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->p()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 958
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->o()Lcom/yelp/android/ax/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ax/a;->d()Ljava/lang/String;

    move-result-object v5

    .line 960
    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getSearchTerms()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getTermNear()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getPageOffset()I

    move-result v3

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getFilter()Lcom/yelp/android/serializable/Filter;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/serializable/Filter;Ljava/lang/String;)V

    .line 967
    :goto_4
    invoke-virtual {v6}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->updateOptionsMenu()V

    .line 969
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->g()Z

    move-result v0

    if-nez v0, :cond_a

    .line 970
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    new-instance v1, Lcom/yelp/android/ui/activities/search/n;

    invoke-direct {v1, p0, v6}, Lcom/yelp/android/ui/activities/search/n;-><init>(Lcom/yelp/android/ui/activities/search/l;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    invoke-virtual {v0, v1, v7}, Lcom/yelp/android/ui/activities/search/PagingPanel;->b(Landroid/view/View$OnClickListener;I)V

    .line 983
    :goto_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->f()Z

    move-result v0

    if-nez v0, :cond_b

    .line 985
    if-eqz v9, :cond_d

    .line 986
    invoke-interface {v9}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getTotal()I

    move-result v0

    invoke-interface {v9}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getOffset()I

    move-result v1

    add-int/2addr v1, v7

    sub-int/2addr v0, v1

    .line 988
    :goto_6
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    new-instance v2, Lcom/yelp/android/ui/activities/search/o;

    invoke-direct {v2, p0, v6}, Lcom/yelp/android/ui/activities/search/o;-><init>(Lcom/yelp/android/ui/activities/search/l;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->a(Landroid/view/View$OnClickListener;I)V

    .line 1000
    :goto_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->b()V

    .line 1004
    if-eqz v9, :cond_c

    invoke-interface {v9}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getPromotedFilter()Lcom/yelp/android/serializable/PromotedFilter;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1005
    invoke-interface {v9}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->getPromotedFilter()Lcom/yelp/android/serializable/PromotedFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PromotedFilter;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 1007
    :goto_8
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/l;->c:Lcom/yelp/android/appdata/ap;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/ap;->k()Lcom/yelp/android/serializable/Filter;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/search/l;->a(Lcom/yelp/android/serializable/Filter;Ljava/lang/String;)V

    .line 1008
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/l;->a()V

    goto/16 :goto_0

    .line 931
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->d:Lcom/yelp/android/ui/panels/businesssearch/g;

    new-array v1, v11, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CLOSES_IN:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/g;->b([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    goto/16 :goto_3

    .line 964
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->d:Lcom/yelp/android/ui/panels/businesssearch/g;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/g;->clear()V

    goto :goto_4

    .line 980
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v0, v8, v10}, Lcom/yelp/android/ui/activities/search/PagingPanel;->b(Landroid/view/View$OnClickListener;I)V

    goto :goto_5

    .line 998
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v0, v8, v10}, Lcom/yelp/android/ui/activities/search/PagingPanel;->a(Landroid/view/View$OnClickListener;I)V

    goto :goto_7

    :cond_c
    move-object v0, v8

    goto :goto_8

    :cond_d
    move v0, v7

    goto :goto_6
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1013
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1014
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/search/PagingPanel;->a(Landroid/view/View$OnClickListener;I)V

    .line 1015
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/search/PagingPanel;->b(Landroid/view/View$OnClickListener;I)V

    .line 1016
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/l;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->b()V

    .line 1017
    return-void
.end method
