.class final Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;
.super Landroid/database/DataSetObserver;
.source "SearchBusinessesByList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/appdata/o;

.field private final d:Lcom/yelp/android/ui/activities/search/f;

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

.field private final h:Lcom/yelp/android/ui/panels/businesssearch/d;

.field private final i:Lcom/yelp/android/ui/panels/businesssearch/d;

.field private final j:Lcom/yelp/android/ui/util/aj;

.field private final k:Lcom/yelp/android/ui/panels/f;

.field private final l:Lcom/yelp/android/ui/util/e;

.field private final m:Lcom/yelp/android/ui/util/e;

.field private final n:Lcom/yelp/android/ui/util/e;

.field private final o:Lcom/yelp/android/ui/activities/search/PagingPanel;

.field private final p:Lcom/yelp/android/util/u;

.field private q:Z

.field private final r:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

.field private final s:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;

.field private final t:Landroid/view/View$OnClickListener;

.field private final u:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;Lcom/yelp/android/appdata/o;Lcom/yelp/android/ui/activities/search/f;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Landroid/widget/TextView;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;Lcom/yelp/android/ui/panels/businesssearch/d;Lcom/yelp/android/ui/panels/businesssearch/d;Lcom/yelp/android/ui/util/aj;Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/panels/f;Lcom/yelp/android/ui/util/e;Lcom/yelp/android/util/u;Z)V
    .locals 3

    .prologue
    .line 1101
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1765
    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$10;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$10;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->r:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    .line 1791
    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$11;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$11;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->s:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;

    .line 1815
    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$2;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->t:Landroid/view/View$OnClickListener;

    .line 1860
    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$3;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->u:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

    .line 1102
    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a:Landroid/view/View;

    .line 1103
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a:Landroid/view/View;

    const v2, 0x7f0f0434

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/search/PagingPanel;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    .line 1104
    iput-object p3, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    .line 1105
    iput-object p4, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    .line 1106
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    .line 1107
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b:Landroid/widget/TextView;

    .line 1108
    iput-object p6, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->f:Landroid/widget/TextView;

    .line 1109
    iput-object p7, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->g:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    .line 1110
    iput-object p8, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->h:Lcom/yelp/android/ui/panels/businesssearch/d;

    .line 1111
    iput-object p9, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->i:Lcom/yelp/android/ui/panels/businesssearch/d;

    .line 1112
    iput-object p10, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->j:Lcom/yelp/android/ui/util/aj;

    .line 1113
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->k:Lcom/yelp/android/ui/panels/f;

    .line 1114
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->l:Lcom/yelp/android/ui/util/e;

    .line 1115
    iput-object p11, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->m:Lcom/yelp/android/ui/util/e;

    .line 1116
    iput-object p12, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->n:Lcom/yelp/android/ui/util/e;

    .line 1117
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->p:Lcom/yelp/android/util/u;

    .line 1118
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->q:Z

    .line 1120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->onChanged()V

    .line 1121
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/appdata/o;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->m:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->h:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/panels/businesssearch/d;)V

    .line 1415
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->n:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->i:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/panels/businesssearch/d;)V

    .line 1416
    return-void
.end method

.method private a(Landroid/widget/ToggleButton;)V
    .locals 4

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$8;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$8;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Landroid/widget/ToggleButton;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1672
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 2

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    .line 1337
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->d()Ljava/lang/String;

    move-result-object v1

    .line 1339
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->g:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setVisibility(I)V

    .line 1348
    :goto_0
    return-void

    .line 1346
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->g:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setSuggestion(Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->g:Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Landroid/widget/ToggleButton;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 1520
    invoke-virtual {p2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    .line 1521
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->j()Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    .line 1522
    if-nez v0, :cond_1

    .line 1523
    new-instance v0, Lcom/yelp/android/serializable/Filter;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Filter;-><init>()V

    move-object v1, v0

    .line 1528
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    .line 1529
    iget-object v4, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v4}, Lcom/yelp/android/appdata/o;->h()Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v4

    .line 1531
    sget-object v5, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$4;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->ordinal()I

    move-result v0

    aget v0, v5, v0

    packed-switch v0, :pswitch_data_0

    .line 1555
    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;Z)Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    move v0, v2

    .line 1562
    :goto_1
    if-eqz v0, :cond_0

    .line 1563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1564
    const-string/jumbo v5, "requestId"

    iget-object v6, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v6}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v6

    invoke-interface {v6}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->i()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1565
    const-string/jumbo v5, "from_toggle"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    const-string/jumbo v2, "alias"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1567
    const-string/jumbo v2, "toggle_on"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->SearchPromotedFilterToggle:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 1572
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v4, v1}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v1

    .line 1578
    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1579
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Intent;)V

    .line 1581
    :cond_0
    return-void

    .line 1533
    :pswitch_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    const/4 v5, 0x0

    invoke-static {v0, v5, v3}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->a(Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;Ljava/util/Calendar;Z)Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    move v0, v2

    .line 1539
    goto :goto_1

    .line 1541
    :pswitch_1
    invoke-direct {p0, v1, p2, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/serializable/Filter;Landroid/widget/ToggleButton;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)Z

    move-result v0

    goto :goto_1

    .line 1546
    :pswitch_2
    invoke-direct {p0, p1, v1, p2, v4}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Lcom/yelp/android/serializable/Filter;Landroid/widget/ToggleButton;Lcom/yelp/android/appdata/webrequests/eo;)Z

    move-result v0

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto/16 :goto_0

    .line 1531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/yelp/android/serializable/Filter;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1436
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v3

    .line 1437
    if-nez p1, :cond_0

    move-object v2, v0

    .line 1438
    :goto_0
    if-nez p1, :cond_1

    move-object v1, v0

    .line 1439
    :goto_1
    if-nez v3, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_2
    invoke-static {v2, v1, v0}, Lcom/yelp/android/ui/activities/search/d;->a(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->k:Lcom/yelp/android/ui/panels/f;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/f;->setNonPromotedFilterText(Ljava/lang/String;)V

    .line 1445
    return-void

    .line 1437
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Filter;->d()Lcom/yelp/android/serializable/Distance;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 1438
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Filter;->b()Lcom/yelp/android/serializable/Sort;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1439
    :cond_2
    invoke-interface {v3}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Landroid/widget/ToggleButton;)V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Landroid/widget/ToggleButton;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/panels/businesssearch/d;)V
    .locals 4

    .prologue
    .line 1420
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 1425
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/f;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/ui/panels/businesssearch/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x7f0101ca

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1431
    sget v0, Lcom/yelp/android/appdata/n;->h:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 1432
    invoke-virtual {p1, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 1705
    const/4 v3, 0x0

    .line 1706
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v0

    .line 1709
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1711
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->e()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v3

    .line 1715
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c()Ljava/lang/String;

    move-result-object v2

    .line 1716
    const-string/jumbo v0, ""

    new-instance v1, Lcom/yelp/android/serializable/PlatformRSSTermMap;

    invoke-direct {v1, v2, v2}, Lcom/yelp/android/serializable/PlatformRSSTermMap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/o;->l()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "promoted_filter"

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformRSSTermMap;Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;Ljava/lang/String;Ljava/lang/Integer;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    move-result-object v1

    .line 1724
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->r:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;)V

    .line 1725
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v2, "platform_search_dialog"

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 1727
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchPromotedFilterDeliveryOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 1728
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1449
    invoke-static {p1}, Lcom/yelp/android/ui/activities/search/d;->a(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    move-result-object v2

    .line 1452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->l:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    .line 1453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->k:Lcom/yelp/android/ui/panels/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/f;->a()V

    .line 1454
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1516
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->j()Lcom/yelp/android/serializable/Filter;

    move-result-object v1

    .line 1458
    invoke-virtual {v2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->c()Z

    move-result v3

    .line 1461
    sget-object v4, Lcom/yelp/android/analytics/iris/ViewIri;->SearchPromotedFilterShown:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v5, "toggle_on"

    if-eqz v3, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-static {v4, v5, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1468
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 1469
    invoke-virtual {v2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    .line 1474
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1475
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f03019c

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->l:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 1480
    invoke-virtual {v2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v4

    .line 1481
    invoke-virtual {v4}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->d()Ljava/lang/String;

    move-result-object v0

    .line 1482
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 1483
    const v0, 0x7f0f050c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;

    .line 1485
    if-eqz v3, :cond_5

    .line 1486
    invoke-virtual {v4}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->a()I

    move-result v4

    invoke-static {v5, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;I)Landroid/text/Spannable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1491
    :goto_2
    if-eqz v3, :cond_3

    .line 1494
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->k:Lcom/yelp/android/ui/panels/f;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/panels/f;->setPromotedFilterText(Ljava/lang/String;)V

    .line 1499
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1500
    const v0, 0x7f0f02fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 1503
    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1509
    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$7;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$7;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1461
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_1

    .line 1488
    :cond_5
    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;Lcom/yelp/android/serializable/Filter;Landroid/widget/ToggleButton;Lcom/yelp/android/appdata/webrequests/eo;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1618
    .line 1619
    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    .line 1621
    invoke-virtual {p3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1622
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v3

    .line 1623
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/yelp/android/serializable/PlatformFilter;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1624
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/yelp/android/serializable/PlatformFilter;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest;)V

    .line 1625
    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->e()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1627
    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->e()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 1633
    :cond_0
    invoke-static {v0, v1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;Z)Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    move v0, v1

    .line 1654
    :goto_0
    return v0

    .line 1637
    :cond_1
    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b(Landroid/widget/ToggleButton;)V

    move v0, v2

    .line 1638
    goto :goto_0

    .line 1641
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1642
    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->f()Lcom/yelp/android/serializable/PlatformFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/PlatformFilter;->e()Lcom/yelp/android/serializable/SearchLocation;

    move-result-object v3

    .line 1646
    if-eqz v3, :cond_3

    .line 1647
    invoke-virtual {v3, p4}, Lcom/yelp/android/serializable/SearchLocation;->a(Lcom/yelp/android/appdata/webrequests/eo;)V

    .line 1650
    :cond_3
    invoke-static {v0, v2}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;Z)Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Filter;Landroid/widget/ToggleButton;Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1587
    invoke-virtual {p3}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    .line 1590
    invoke-virtual {p2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1591
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;->f()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v3

    .line 1593
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/yelp/android/serializable/ReservationFilter;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1594
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;->f()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;->a(Lcom/yelp/android/serializable/ReservationGenericSearchFilter;Lcom/yelp/android/serializable/ReservationFilter;Z)Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    :goto_0
    move v0, v2

    .line 1610
    :goto_1
    return v0

    .line 1600
    :cond_0
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Landroid/widget/ToggleButton;)V

    move v0, v1

    .line 1601
    goto :goto_1

    .line 1604
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;->f()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/yelp/android/serializable/ReservationGenericSearchFilter;->a(Lcom/yelp/android/serializable/ReservationGenericSearchFilter;Lcom/yelp/android/serializable/ReservationFilter;Z)Lcom/yelp/android/serializable/ReservationGenericSearchFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/Filter;->a(Lcom/yelp/android/serializable/GenericSearchFilter;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Lcom/yelp/android/ui/activities/search/f;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 1675
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchPromotedFilterReservationCancel:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->a(Lcom/yelp/android/analytics/iris/EventIri;)Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    move-result-object v1

    .line 1678
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->s:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;)V

    .line 1680
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->a(Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v2, "reservation_search_dialog"

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 1683
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchPromotedFilterReservationOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 1684
    return-void
.end method

.method private b(Landroid/widget/ToggleButton;)V
    .locals 4

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$9;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$9;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Landroid/widget/ToggleButton;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1701
    return-void
.end method

.method private b(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
    .locals 4

    .prologue
    .line 1351
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "search_location_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    .line 1364
    if-nez v0, :cond_2

    .line 1365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->a()Ljava/util/List;

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

    .line 1367
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Parcelable;

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1369
    :cond_1
    const v0, 0x7f070251

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->b(ILjava/util/List;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    move-result-object v1

    .line 1371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v2, "search_location_dialog"

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    move-object v0, v1

    .line 1374
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->u:Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;)V

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessSearchResult;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1742
    if-eqz p1, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/Features;->platform_attributes:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 1762
    :goto_0
    return v0

    .line 1746
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessSearchResult;

    .line 1748
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/SearchAction;

    .line 1749
    invoke-interface {v1}, Lcom/yelp/android/serializable/SearchAction;->a()Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    move-result-object v6

    sget-object v7, Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;->Platform:Lcom/yelp/android/serializable/BusinessSearchResult$SearchActionType;

    if-ne v6, v7, :cond_3

    check-cast v1, Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PlatformSearchAction;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 1753
    goto :goto_0

    .line 1758
    :cond_4
    invoke-virtual {v0}, Lcom/yelp/android/serializable/BusinessSearchResult;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 1759
    goto :goto_0

    :cond_5
    move v0, v3

    .line 1762
    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->E()Ljava/lang/String;

    move-result-object v0

    .line 1733
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->G()Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 1735
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1737
    :cond_0
    :goto_0
    return-object v0

    .line 1735
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b()V

    return-void
.end method

.method private c(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1378
    invoke-interface {p1}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->e()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    move-result-object v1

    .line 1379
    sget-object v2, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDABLE:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    if-ne v1, v2, :cond_0

    .line 1380
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1381
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1410
    :goto_0
    return v0

    .line 1384
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1385
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$6;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$6;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1405
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->FOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    if-ne v1, v0, :cond_1

    const v0, 0x7f070577

    .line 1409
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1410
    const/4 v0, 0x1

    goto :goto_0

    .line 1405
    :cond_1
    const v0, 0x7f070321

    goto :goto_1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public onChanged()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1125
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    .line 1128
    if-nez v0, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1132
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->k()Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;

    move-result-object v2

    .line 1133
    if-eqz v2, :cond_f

    .line 1134
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v3, "filters_dialog"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/dialogs/FiltersDialog;

    .line 1137
    if-eqz v1, :cond_2

    .line 1138
    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Ljava/util/List;)V

    .line 1141
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->disableLoading()V

    .line 1142
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->clearError()V

    .line 1143
    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b(Ljava/util/List;)Z

    move-result v3

    .line 1145
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/activities/search/f;->a(Z)V

    .line 1146
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->g()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/activities/search/f;->a(I)V

    .line 1147
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v6, v0}, Lcom/yelp/android/appdata/o;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v7}, Lcom/yelp/android/appdata/o;->l()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/yelp/android/ui/activities/search/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/search/f;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    .line 1151
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)Z

    move-result v1

    .line 1152
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->b(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    .line 1153
    iget-object v6, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1154
    iget-object v6, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->j:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v6, v12}, Lcom/yelp/android/ui/util/aj;->a(Z)V

    .line 1155
    iget-object v6, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    invoke-virtual {v6}, Lcom/yelp/android/ui/activities/search/f;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v1, :cond_3

    .line 1156
    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_RESULTS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->populateError(Lcom/yelp/android/util/ErrorType;)V

    .line 1159
    :cond_3
    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->h()Ljava/lang/String;

    move-result-object v1

    .line 1160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1161
    iget-object v6, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1162
    iget-object v6, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a:Landroid/view/View;

    invoke-virtual {v1, v12, v12, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 1171
    :goto_1
    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->j()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Ljava/util/List;)Ljava/util/List;

    .line 1172
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    invoke-static {}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1179
    invoke-static {}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/LocalAd;

    .line 1180
    sget-object v9, Lcom/yelp/android/analytics/iris/EventIri;->AdSearchListImpression:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v13}, Lcom/yelp/android/serializable/LocalAd;->a(Z)Ljava/util/Map;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 1181
    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->c()Lcom/yelp/android/serializable/LocalAdPlacement;

    move-result-object v9

    sget-object v10, Lcom/yelp/android/serializable/LocalAdPlacement;->ABOVE_SEARCH:Lcom/yelp/android/serializable/LocalAdPlacement;

    if-ne v9, v10, :cond_6

    .line 1182
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1187
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 1188
    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    sget-object v9, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;->AD_IMPRESSION:Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;

    invoke-static {v1, v9}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z

    goto :goto_2

    .line 1167
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->f:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1183
    :cond_6
    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->c()Lcom/yelp/android/serializable/LocalAdPlacement;

    move-result-object v9

    sget-object v10, Lcom/yelp/android/serializable/LocalAdPlacement;->BELOW_SEARCH:Lcom/yelp/android/serializable/LocalAdPlacement;

    if-ne v9, v10, :cond_4

    .line 1184
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1191
    :cond_7
    const-string/jumbo v9, "AdsFix"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "LocalAd has a null business ad type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->k()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "local ad business id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1202
    :cond_8
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->h:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/panels/businesssearch/d;->a(Z)V

    .line 1203
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->h:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/yelp/android/ui/panels/businesssearch/d;->a(Ljava/lang/String;)V

    .line 1204
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->h:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/panels/businesssearch/d;->a(Ljava/util/List;)V

    .line 1205
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->i:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/panels/businesssearch/d;->a(Z)V

    .line 1206
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->i:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/panels/businesssearch/d;->a(Ljava/lang/String;)V

    .line 1207
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->i:Lcom/yelp/android/ui/panels/businesssearch/d;

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/panels/businesssearch/d;->a(Ljava/util/List;)V

    .line 1210
    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v1

    .line 1213
    if-eqz v1, :cond_9

    .line 1214
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v4

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 1215
    invoke-virtual {v1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v7

    sget-object v8, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->OpenNow:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v7, v8, :cond_13

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v7

    if-eqz v7, :cond_13

    :goto_5
    move-object v3, v1

    .line 1218
    goto :goto_4

    :cond_9
    move-object v3, v4

    .line 1220
    :cond_a
    if-eqz v3, :cond_e

    .line 1221
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    new-array v3, v13, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v6, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CLOSES_IN:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v6, v3, v12

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/activities/search/f;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 1226
    :goto_6
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V

    .line 1227
    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->l()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Ljava/util/List;)V

    .line 1229
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->q:Z

    if-eqz v1, :cond_b

    .line 1232
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    .line 1233
    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->S()I

    move-result v3

    .line 1234
    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->T()I

    move-result v1

    .line 1235
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v6

    new-instance v7, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$1;

    invoke-direct {v7, p0, v0, v3, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$1;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;II)V

    invoke-virtual {v6, v7}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->post(Ljava/lang/Runnable;)Z

    .line 1246
    iput-boolean v12, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->q:Z

    .line 1251
    :cond_b
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->o()Lcom/yelp/android/appdata/webrequests/SearchRequest;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 1252
    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v3}, Lcom/yelp/android/appdata/o;->n()Lcom/yelp/android/ca/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ca/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 1254
    invoke-static {v1, v3}, Lcom/yelp/android/ui/activities/search/d;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;Ljava/lang/String;)V

    .line 1258
    instance-of v1, v2, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    if-eqz v1, :cond_c

    move-object v1, v2

    .line 1259
    check-cast v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->n()Lcom/yelp/android/serializable/AndroidAppAnnotation;

    move-result-object v1

    .line 1261
    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->p:Lcom/yelp/android/util/u;

    invoke-virtual {v3, v0, v1}, Lcom/yelp/android/util/u;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/AndroidAppAnnotation;)V

    .line 1267
    :cond_c
    :goto_7
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->updateOptionsMenu()V

    .line 1269
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->f()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1270
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    new-instance v3, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$4;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$4;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    invoke-virtual {v1, v3, v5}, Lcom/yelp/android/ui/activities/search/PagingPanel;->b(Landroid/view/View$OnClickListener;I)V

    .line 1285
    :goto_8
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->e()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1287
    if-eqz v2, :cond_12

    .line 1288
    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->f()I

    move-result v1

    invoke-interface {v2}, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;->g()I

    move-result v2

    add-int/2addr v2, v5

    sub-int/2addr v1, v2

    .line 1290
    :goto_9
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    new-instance v3, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$5;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a$5;-><init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/yelp/android/ui/activities/search/PagingPanel;->a(Landroid/view/View$OnClickListener;I)V

    .line 1304
    :goto_a
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/PagingPanel;->b()V

    .line 1306
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->c:Lcom/yelp/android/appdata/o;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/o;->j()Lcom/yelp/android/serializable/Filter;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a(Lcom/yelp/android/serializable/Filter;)V

    .line 1307
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->a()V

    .line 1309
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "platform_search_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    .line 1313
    if-eqz v1, :cond_d

    .line 1314
    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->r:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;)V

    .line 1317
    :cond_d
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "reservation_search_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    .line 1321
    if-eqz v0, :cond_0

    .line 1322
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->s:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;)V

    goto/16 :goto_0

    .line 1223
    :cond_e
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    new-array v3, v13, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    sget-object v6, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->CLOSES_IN:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v6, v3, v12

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/activities/search/f;->b([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    goto/16 :goto_6

    .line 1264
    :cond_f
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->d:Lcom/yelp/android/ui/activities/search/f;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/f;->clear()V

    goto/16 :goto_7

    .line 1282
    :cond_10
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v1, v4, v12}, Lcom/yelp/android/ui/activities/search/PagingPanel;->b(Landroid/view/View$OnClickListener;I)V

    goto :goto_8

    .line 1302
    :cond_11
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v1, v4, v12}, Lcom/yelp/android/ui/activities/search/PagingPanel;->a(Landroid/view/View$OnClickListener;I)V

    goto :goto_a

    :cond_12
    move v1, v5

    goto :goto_9

    :cond_13
    move-object v1, v3

    goto/16 :goto_5
.end method

.method public onInvalidated()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1329
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/search/PagingPanel;->a(Landroid/view/View$OnClickListener;I)V

    .line 1331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/search/PagingPanel;->b(Landroid/view/View$OnClickListener;I)V

    .line 1332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$a;->o:Lcom/yelp/android/ui/activities/search/PagingPanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->b()V

    .line 1333
    return-void
.end method
