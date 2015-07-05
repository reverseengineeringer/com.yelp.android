.class public Lcom/yelp/android/ui/dialogs/FiltersDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "FiltersDialog.java"


# instance fields
.field final a:Ljava/lang/Runnable;

.field private final b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

.field private c:Lcom/yelp/android/ui/util/bs;

.field private d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private e:Lcom/yelp/android/serializable/Filter;

.field private f:Lcom/yelp/android/serializable/AttributeFilters;

.field private g:Lcom/yelp/android/ui/dialogs/y;

.field private h:Lcom/yelp/android/ui/dialogs/y;

.field private i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/app/Activity;

.field private n:Ljava/util/Calendar;

.field private o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

.field private p:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

.field private q:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yelp/android/ui/widgets/TwoTierButton;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 155
    new-instance v0, Lcom/yelp/android/ui/dialogs/ad;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/ad;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Filter;Lcom/yelp/android/serializable/AttributeFilters;Z)Lcom/yelp/android/ui/dialogs/FiltersDialog;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/yelp/android/ui/dialogs/FiltersDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;-><init>()V

    .line 93
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b(Lcom/yelp/android/serializable/Filter;Lcom/yelp/android/serializable/AttributeFilters;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->setArguments(Landroid/os/Bundle;)V

    .line 94
    const/4 v1, 0x1

    const v2, 0x7f0f0159

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->setStyle(II)V

    .line 95
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Lcom/yelp/android/ui/util/ScrollToLoadListView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FiltersDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/bs;

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/util/j;

    invoke-interface {v0}, Lcom/yelp/android/ui/util/j;->clear()V

    .line 170
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/ui/widgets/TwoTierButton;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/ui/widgets/TwoTierButton;Z)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/widgets/TwoTierButton;Z)V
    .locals 3

    .prologue
    .line 576
    invoke-virtual {p1, p2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setChecked(Z)V

    .line 577
    invoke-virtual {p1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f008f

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 580
    return-void

    .line 577
    :cond_0
    const v0, 0x7f0f0090

    goto :goto_0
.end method

.method private static b(Lcom/yelp/android/serializable/Filter;Lcom/yelp/android/serializable/AttributeFilters;Z)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 100
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 104
    if-nez p0, :cond_0

    .line 105
    new-instance p0, Lcom/yelp/android/serializable/Filter;

    new-instance v0, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AttributeFilters;-><init>()V

    invoke-direct {p0, v0}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/AttributeFilters;)V

    .line 108
    :cond_0
    const-string/jumbo v0, "SEARCH FILTER"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    const-string/jumbo v0, "SUGGESTED FILTERS"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    const-string/jumbo v0, "TIME"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Filter;->getOpenTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 111
    const-string/jumbo v0, "DISTANCE"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Filter;->getDistance()Lcom/yelp/android/serializable/at;

    move-result-object v2

    iget-object v2, v2, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "SORT"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Filter;->getSort()Lcom/yelp/android/serializable/Filter$Sort;

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Filter$Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "SEARCHING"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Filter;->getBusinessState()Ljava/util/EnumSet;

    move-result-object v0

    .line 119
    sget-object v3, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-string/jumbo v0, "OPEN_NOW"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Filter;->getAttributes()Lcom/yelp/android/serializable/AttributeFilters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilters;->getSuggestedFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    .line 124
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_2
    const-string/jumbo v3, "CHECKED"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    return-object v1
.end method

.method private b()Lcom/yelp/android/serializable/Filter;
    .locals 10

    .prologue
    .line 284
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 285
    const-class v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/y;->b()Ljava/util/HashSet;

    move-result-object v0

    .line 288
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Lcom/yelp/android/ui/dialogs/y;

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Lcom/yelp/android/ui/dialogs/y;

    invoke-virtual {v2}, Lcom/yelp/android/ui/dialogs/y;->b()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 292
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    const-string/jumbo v3, "OPEN_NOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    sget-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_2
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {v3, v0}, Lcom/yelp/android/serializable/AttributeFilters;->getAttribute(Ljava/lang/String;)Lcom/yelp/android/serializable/AttributeFilter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 301
    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {v3, v0}, Lcom/yelp/android/serializable/AttributeFilters;->getAttribute(Ljava/lang/String;)Lcom/yelp/android/serializable/AttributeFilter;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_3
    sget-object v4, Lcom/yelp/android/serializable/Filter$Sort;->Default:Lcom/yelp/android/serializable/Filter$Sort;

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->k:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/serializable/Filter$Sort;->Distance:Lcom/yelp/android/serializable/Filter$Sort;

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Filter$Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 307
    sget-object v4, Lcom/yelp/android/serializable/Filter$Sort;->Distance:Lcom/yelp/android/serializable/Filter$Sort;

    .line 313
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 314
    new-instance v3, Lcom/yelp/android/serializable/at;

    const-string/jumbo v0, ""

    const-wide/16 v8, 0x0

    invoke-direct {v3, v0, v8, v9}, Lcom/yelp/android/serializable/at;-><init>(Ljava/lang/String;D)V

    .line 320
    :goto_2
    sget-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$:Lcom/yelp/android/serializable/Filter$BusinessState;

    sget-object v2, Lcom/yelp/android/serializable/Filter$BusinessState;->$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    sget-object v5, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    sget-object v7, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-static {v0, v2, v5, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 323
    iget-object v7, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    array-length v8, v7

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    if-ge v2, v8, :cond_8

    aget-object v9, v7, v2

    .line 324
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    .line 325
    invoke-virtual {v9}, Lcom/yelp/android/ui/widgets/TwoTierButton;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 326
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 308
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->k:Ljava/lang/String;

    sget-object v2, Lcom/yelp/android/serializable/Filter$Sort;->Rating:Lcom/yelp/android/serializable/Filter$Sort;

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Filter$Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 309
    sget-object v4, Lcom/yelp/android/serializable/Filter$Sort;->Rating:Lcom/yelp/android/serializable/Filter$Sort;

    goto :goto_1

    .line 316
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Lcom/yelp/android/util/o;->d(D)D

    move-result-wide v8

    .line 317
    new-instance v3, Lcom/yelp/android/serializable/at;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    invoke-direct {v3, v0, v8, v9}, Lcom/yelp/android/serializable/at;-><init>(Ljava/lang/String;D)V

    goto :goto_2

    .line 330
    :cond_8
    new-instance v0, Lcom/yelp/android/serializable/Filter;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    invoke-virtual {v2}, Lcom/yelp/android/ui/dialogs/y;->c()Ljava/util/Calendar;

    move-result-object v2

    new-instance v5, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v5, v6}, Lcom/yelp/android/serializable/AttributeFilters;-><init>(Ljava/util/List;)V

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/Filter;-><init>(Ljava/util/EnumSet;Ljava/util/Calendar;Lcom/yelp/android/serializable/at;Lcom/yelp/android/serializable/Filter$Sort;Lcom/yelp/android/serializable/AttributeFilters;)V

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/FiltersDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const v7, 0x7f07032c

    const/4 v1, 0x0

    .line 335
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    sget-object v0, Lcom/yelp/android/serializable/Filter$Sort;->Default:Lcom/yelp/android/serializable/Filter$Sort;

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/Filter$Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x1

    sget-object v3, Lcom/yelp/android/serializable/Filter$Sort;->Rating:Lcom/yelp/android/serializable/Filter$Sort;

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/Filter$Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    sget-object v3, Lcom/yelp/android/serializable/Filter$Sort;->Distance:Lcom/yelp/android/serializable/Filter$Sort;

    iget-object v4, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/Filter$Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 340
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    const v4, 0x7f0300a8

    const v5, 0x7f0c02a5

    invoke-direct {v3, v0, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 344
    new-instance v4, Lcom/yelp/android/ui/util/h;

    new-array v0, v1, [Landroid/view/View;

    invoke-direct {v4, v0}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0300a7

    iget-object v6, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 349
    const v0, 0x7f0c0063

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    new-instance v6, Lcom/yelp/android/ui/dialogs/ag;

    invoke-direct {v6, p0}, Lcom/yelp/android/ui/dialogs/ag;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    move v0, v1

    .line 367
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 368
    aget-object v3, v2, v0

    iget-object v6, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->k:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setSelection(I)V

    .line 376
    invoke-virtual {v4, v5}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v7}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 382
    return-void

    .line 367
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b()Lcom/yelp/android/serializable/Filter;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 10

    .prologue
    const v9, 0x7f070329

    const v7, 0x7f070328

    const/4 v2, 0x0

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Ljava/util/HashMap;

    .line 389
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;)Z

    move-result v3

    .line 390
    if-eqz v3, :cond_1

    const v1, 0x7f08000e

    .line 392
    :goto_0
    if-eqz v3, :cond_2

    const v0, 0x7f08000a

    .line 395
    :goto_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v4

    invoke-static {v4}, Lcom/yelp/android/util/BigCity;->isBigCity(Landroid/location/Location;)Z

    move-result v4

    .line 397
    if-eqz v4, :cond_0

    .line 398
    if-eqz v3, :cond_3

    const v1, 0x7f08000d

    .line 400
    :goto_2
    if-eqz v3, :cond_4

    const v0, 0x7f080009

    .line 404
    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 405
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    array-length v5, v3

    move v0, v2

    :goto_4
    if-ge v0, v5, :cond_5

    aget-object v6, v3, v0

    .line 408
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 390
    :cond_1
    const v1, 0x7f08000c

    goto :goto_0

    .line 392
    :cond_2
    const v0, 0x7f080008

    goto :goto_1

    .line 398
    :cond_3
    const v1, 0x7f08000b

    goto :goto_2

    .line 400
    :cond_4
    const v0, 0x7f080007

    goto :goto_3

    .line 411
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    move v1, v2

    .line 417
    :goto_5
    array-length v6, v3

    if-ge v0, v6, :cond_7

    .line 418
    aget-object v6, v3, v0

    iget-object v7, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 419
    add-int/lit8 v1, v0, 0x1

    .line 421
    :cond_6
    iget-object v6, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->l:Ljava/util/HashMap;

    aget-object v7, v3, v0

    aget v8, v5, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 424
    :cond_7
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    const v5, 0x7f0300a8

    const v6, 0x7f0c02a5

    invoke-direct {v3, v0, v5, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 428
    new-instance v4, Lcom/yelp/android/ui/util/h;

    new-array v0, v2, [Landroid/view/View;

    invoke-direct {v4, v0}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    .line 430
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f0300a7

    iget-object v6, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 433
    const v0, 0x7f0c0063

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    new-instance v5, Lcom/yelp/android/ui/dialogs/ah;

    invoke-direct {v5, p0}, Lcom/yelp/android/ui/dialogs/ah;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 448
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 449
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->setSelection(I)V

    .line 451
    invoke-virtual {v4, v2}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 456
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/dialogs/FiltersDialog;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->q:Ljava/util/HashSet;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const v5, 0x7f0703af

    const/4 v2, 0x0

    .line 459
    new-instance v0, Lcom/yelp/android/ui/dialogs/y;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/y;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    .line 460
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->i:Ljava/util/HashSet;

    .line 464
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilter;

    const-string/jumbo v1, "OPEN_NOW"

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070278

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/serializable/AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/y;->c(Ljava/lang/Object;)V

    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilters;->getSuggestedFilters()Ljava/util/List;

    move-result-object v3

    .line 470
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 472
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 473
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    .line 474
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->isPopular()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 476
    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 472
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 481
    :cond_1
    :goto_1
    const/4 v0, 0x3

    if-ge v2, v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 482
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/y;->c(Ljava/lang/Object;)V

    .line 483
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->i:Ljava/util/HashSet;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 494
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Z

    if-eqz v0, :cond_3

    .line 495
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    .line 496
    sget-object v1, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->SMALL:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/y;)V

    .line 497
    new-instance v1, Lcom/yelp/android/ui/util/av;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/av;-><init>()V

    .line 498
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 499
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/bs;

    const v2, 0x7f0c0028

    invoke-static {v1}, Lcom/yelp/android/ui/util/bw;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 502
    :cond_3
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    const v4, 0x7f0702ba

    .line 507
    new-instance v0, Lcom/yelp/android/ui/dialogs/y;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/y;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Lcom/yelp/android/ui/dialogs/y;

    .line 508
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilters;->getSuggestedFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    .line 509
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Lcom/yelp/android/ui/dialogs/y;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/dialogs/y;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Lcom/yelp/android/ui/dialogs/y;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 518
    return-void
.end method

.method private g()V
    .locals 12

    .prologue
    const v5, 0x7f07032a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 521
    new-instance v3, Lcom/yelp/android/ui/util/h;

    new-array v0, v1, [Landroid/view/View;

    invoke-direct {v3, v0}, Lcom/yelp/android/ui/util/h;-><init>([Landroid/view/View;)V

    .line 522
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v4, 0x7f03006c

    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 529
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v0, 0x7f0c020c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    aput-object v0, v5, v1

    .line 530
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    const v0, 0x7f0c020d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    aput-object v0, v5, v2

    .line 531
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    const/4 v6, 0x2

    const v0, 0x7f0c020e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    aput-object v0, v5, v6

    .line 532
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    const/4 v6, 0x3

    const v0, 0x7f0c020f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    aput-object v0, v5, v6

    .line 535
    iget-object v5, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b:[Lcom/yelp/android/ui/widgets/TwoTierButton;

    array-length v6, v5

    move v0, v1

    move v1, v2

    :goto_0
    if-ge v0, v6, :cond_1

    aget-object v7, v5, v0

    .line 538
    invoke-virtual {v7}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getValue()Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    invoke-virtual {v7}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v8

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 542
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/yelp/android/appdata/LocaleSettings;->a(I)Ljava/lang/String;

    move-result-object v8

    .line 545
    invoke-virtual {v7}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    const v11, 0x7f0f0090

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 547
    invoke-virtual {v7, v8}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 550
    new-instance v8, Lcom/yelp/android/ui/dialogs/ai;

    invoke-direct {v8, p0, v7, v1}, Lcom/yelp/android/ui/dialogs/ai;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;Lcom/yelp/android/ui/widgets/TwoTierButton;I)V

    invoke-virtual {v7, v8}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v8, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->q:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 568
    invoke-direct {p0, v7, v2}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Lcom/yelp/android/ui/widgets/TwoTierButton;Z)V

    .line 570
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/util/h;->b(Landroid/view/View;)V

    .line 573
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/AttributeFilters;)V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Z

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilters;->getSuggestedFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/y;->b()Ljava/util/HashSet;

    move-result-object v0

    .line 277
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Ljava/util/HashSet;)V

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 279
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a()V

    .line 281
    :cond_0
    return-void
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AttributeFilters;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    .line 136
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/bs;

    .line 138
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g()V

    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e()V

    .line 140
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d()V

    .line 141
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c()V

    .line 142
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f()V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/dialogs/y;->a(Ljava/util/HashSet;)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Lcom/yelp/android/ui/dialogs/y;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->h:Lcom/yelp/android/ui/dialogs/y;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/dialogs/y;->a(Ljava/util/HashSet;)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->n:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/y;->a(Ljava/util/Calendar;)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->c:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    .line 177
    if-eqz p1, :cond_1

    .line 178
    :goto_0
    const-string/jumbo v0, "SEARCH FILTER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Filter;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/serializable/Filter;

    .line 179
    const-string/jumbo v0, "SUGGESTED FILTERS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilters;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    .line 180
    const-string/jumbo v0, "TIME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->n:Ljava/util/Calendar;

    .line 181
    const-string/jumbo v0, "DISTANCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    .line 182
    const-string/jumbo v0, "SORT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->k:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "SEARCHING"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Z

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->q:Ljava/util/HashSet;

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->e:Lcom/yelp/android/serializable/Filter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Filter;->getPrices()[Z

    move-result-object v1

    .line 189
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 190
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->q:Ljava/util/HashSet;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030093

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 199
    const v0, 0x7f0c00df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ScrollToLoadListView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 205
    iget-boolean v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Z

    if-eqz v0, :cond_3

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 207
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->e()V

    .line 208
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_3
    const-string/jumbo v0, "CHECKED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/f;->a([Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 217
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->a(Ljava/util/HashSet;)V

    .line 219
    new-instance v0, Lcom/yelp/android/ui/dialogs/bl;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->m:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/yelp/android/ui/dialogs/bl;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/bl;->a(Landroid/view/View;)V

    .line 221
    const v1, 0x7f07027a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/bl;->a(I)V

    .line 222
    const v1, 0x7f070524

    new-instance v2, Lcom/yelp/android/ui/dialogs/ae;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/ae;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/bl;->a(ILandroid/view/View$OnClickListener;)V

    .line 239
    const v1, 0x7f070110

    new-instance v2, Lcom/yelp/android/ui/dialogs/af;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/af;-><init>(Lcom/yelp/android/ui/dialogs/FiltersDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/bl;->b(ILandroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bl;->a()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->p:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->onDetachedFromWindow()V

    .line 589
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->o:Lcom/yelp/android/ui/widgets/YelpHoloSpinner;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/YelpHoloSpinner;->onDetachedFromWindow()V

    .line 590
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 591
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    const-string/jumbo v0, "SEARCH FILTER"

    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/FiltersDialog;->b()Lcom/yelp/android/serializable/Filter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    const-string/jumbo v0, "SUGGESTED FILTERS"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->f:Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    const-string/jumbo v0, "TIME"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/y;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 257
    const-string/jumbo v0, "DISTANCE"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v0, "SORT"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string/jumbo v0, "SEARCHING"

    iget-boolean v1, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FiltersDialog;->g:Lcom/yelp/android/ui/dialogs/y;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/y;->b()Ljava/util/HashSet;

    move-result-object v0

    .line 264
    const-string/jumbo v1, "CHECKED"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 266
    return-void
.end method
