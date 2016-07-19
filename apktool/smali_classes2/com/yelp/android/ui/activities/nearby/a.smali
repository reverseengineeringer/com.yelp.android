.class public Lcom/yelp/android/ui/activities/nearby/a;
.super Ljava/lang/Object;
.source "NearbyHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/nearby/a$3;,
        Lcom/yelp/android/ui/activities/nearby/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

.field private e:Lcom/yelp/android/ui/widgets/WidgetSpan;

.field private f:Landroid/support/v4/app/FragmentActivity;

.field private g:J

.field private final h:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/nearby/a;->b:Ljava/util/Map;

    .line 68
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "restaurants"

    const v2, 0x7f0202bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "bars"

    const v2, 0x7f0203db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "coffee"

    const v2, 0x7f020173

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "shopping"

    const v2, 0x7f0204da

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "NewBusiness"

    const v2, 0x7f0200ba

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->b:Ljava/util/Map;

    const-string/jumbo v1, "MoreCategories"

    const v2, 0x7f0203a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/nearby/a;->a:Ljava/util/Set;

    .line 76
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->a:Ljava/util/Set;

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->a:Ljava/util/Set;

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->a:Ljava/util/Set;

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->RESERVATION:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->a:Ljava/util/Set;

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->PLATFORM:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/yelp/android/ui/activities/nearby/a;->a:Ljava/util/Set;

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->PLATFORM_DELIVERY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->g:J

    .line 403
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/a$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/nearby/a$2;-><init>(Lcom/yelp/android/ui/activities/nearby/a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->h:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    .line 91
    sget-object v0, Lcom/yelp/android/appdata/Features;->nearby_search_suggest:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->c:Z

    .line 92
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    .line 93
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, p1, p2, p3}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 5

    .prologue
    .line 297
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->NearbyPlatformOpen:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 298
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->n()Lcom/yelp/android/serializable/PlatformRSSTermMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->o()Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v3

    const-string/jumbo v4, "nearby"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/PlatformRSSTermMap;Ljava/lang/String;Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a;->h:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;)V

    .line 306
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "platform_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/a;Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/nearby/a;->a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/a;Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/a;->d(Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    return-void
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 3
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
    .line 278
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 279
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 280
    sget-object v2, Lcom/yelp/android/ui/activities/nearby/a;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 283
    add-int/lit8 v1, v1, -0x1

    .line 278
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 286
    :cond_1
    return-object p0
.end method

.method private b(Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 3

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_0
    :goto_0
    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v2, "nearby_suggest"

    iput-object v2, v1, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 318
    sget-object v1, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v2, "delivery"

    iput-object v2, v1, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 319
    new-instance v1, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    .line 320
    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 324
    return-void

    .line 314
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->n()Lcom/yelp/android/serializable/PlatformRSSTermMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->n()Lcom/yelp/android/serializable/PlatformRSSTermMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PlatformRSSTermMap;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 7
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
    const v6, 0x7f0703d9

    .line 173
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    .line 174
    const/4 v1, 0x0

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 176
    const-string/jumbo v3, "MoreCategories"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 182
    :goto_0
    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    sget-object v1, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->CATEGORY:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    invoke-virtual {v5, v6}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "more_24x24"

    const-string/jumbo v4, "MoreCategories"

    invoke-virtual {v5, v6}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/RichSearchSuggestion;-><init>(Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_2

    .line 196
    const/4 v0, 0x5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    :cond_2
    return-object p1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private c(Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 6

    .prologue
    .line 327
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "nearby_suggest"

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 328
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "reservations"

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-static {}, Lcom/yelp/android/ui/activities/reservations/c;->a()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/ReservationFilter;ZLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 336
    return-void
.end method

.method private d()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 207
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    .line 208
    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/e;

    move-result-object v4

    .line 210
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 214
    array-length v7, v6

    move v1, v2

    :goto_0
    if-ge v1, v7, :cond_3

    aget-object v0, v6, v1

    .line 215
    invoke-virtual {v4, v0}, Lcom/yelp/android/database/e;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v8

    .line 216
    if-eqz v8, :cond_1

    .line 219
    new-instance v9, Lcom/yelp/android/serializable/RichSearchSuggestion;

    sget-object v10, Lcom/yelp/android/ui/activities/nearby/a;->b:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v9, v8, v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;-><init>(Lcom/yelp/android/serializable/Category;I)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 221
    :cond_1
    const-string/jumbo v8, "MoreCategories"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 222
    new-instance v8, Lcom/yelp/android/serializable/Category;

    const v9, 0x7f0703d9

    invoke-virtual {v3, v9}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-direct {v8, v9, v0, v10}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    new-instance v9, Lcom/yelp/android/serializable/RichSearchSuggestion;

    sget-object v10, Lcom/yelp/android/ui/activities/nearby/a;->b:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v9, v8, v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;-><init>(Lcom/yelp/android/serializable/Category;I)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 225
    :cond_2
    const-string/jumbo v8, "NewBusiness"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 226
    new-instance v8, Lcom/yelp/android/serializable/Category;

    const v9, 0x7f07032b

    invoke-virtual {v3, v9}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0, v2}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    new-instance v9, Lcom/yelp/android/serializable/RichSearchSuggestion;

    sget-object v10, Lcom/yelp/android/ui/activities/nearby/a;->b:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v9, v8, v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;-><init>(Lcom/yelp/android/serializable/Category;I)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_3
    return-object v5
.end method

.method private d(Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 339
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->NearbyCategory:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "category"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    sget-object v0, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->COMMON:Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    .line 341
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    .line 344
    :cond_0
    sget-object v1, Lcom/yelp/android/ui/activities/nearby/a$3;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 383
    :goto_0
    return-void

    .line 346
    :pswitch_0
    const-string/jumbo v0, "MoreCategories"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v4, v4, v3, v3}, Lcom/yelp/android/ui/activities/PickCategory;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Category;Ljava/util/List;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 349
    :cond_1
    const-string/jumbo v0, "NewBusiness"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 355
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/e;

    move-result-object v0

    .line 356
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/e;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_3

    .line 359
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Category;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RichSearchSuggestion;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/a;->c(Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    goto :goto_0

    .line 373
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/a;->a(Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    goto :goto_0

    .line 376
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/a;->b(Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 240
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string/jumbo v1, ","

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 253
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string/jumbo v0, ","

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/a$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/a$1;-><init>(Lcom/yelp/android/ui/activities/nearby/a;)V

    invoke-static {v0, p1, v1}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/StringUtils$c;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "platform_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/a;->h:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;)V

    .line 108
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/util/ScrollToLoadListView;)V
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->e:Lcom/yelp/android/ui/widgets/WidgetSpan;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WidgetSpan;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->e:Lcom/yelp/android/ui/widgets/WidgetSpan;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->e:Lcom/yelp/android/ui/widgets/WidgetSpan;

    const-string/jumbo v1, "HEADER"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 168
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/a;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    .line 169
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
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
    const/4 v3, 0x0

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/yelp/android/ui/activities/nearby/a;->g:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 117
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 118
    const-string/jumbo v4, "request_id"

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v4, "location_time"

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->c:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 126
    const-string/jumbo v1, "aliases"

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->NearbySuggestSearches:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    move-object v1, v0

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/a;->c()V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->e:Lcom/yelp/android/ui/widgets/WidgetSpan;

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/a;->a(Lcom/yelp/android/ui/util/ScrollToLoadListView;)V

    .line 141
    :cond_0
    new-instance v4, Lcom/yelp/android/ui/activities/nearby/c;

    invoke-direct {v4}, Lcom/yelp/android/ui/activities/nearby/c;-><init>()V

    .line 142
    invoke-virtual {v4, v1}, Lcom/yelp/android/ui/activities/nearby/c;->a(Ljava/util/List;)V

    move v2, v3

    .line 143
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->f:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f03018a

    iget-object v6, p0, Lcom/yelp/android/ui/activities/nearby/a;->e:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v0, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 147
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/c$a;

    invoke-direct {v0, v5}, Lcom/yelp/android/ui/activities/nearby/c$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->d:Lcom/yelp/android/ui/util/ScrollToLoadListView;

    invoke-virtual {v4, v2, v5, v0}, Lcom/yelp/android/ui/activities/nearby/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 149
    new-instance v6, Lcom/yelp/android/ui/activities/nearby/a$a;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-direct {v6, p0, v0}, Lcom/yelp/android/ui/activities/nearby/a$a;-><init>(Lcom/yelp/android/ui/activities/nearby/a;Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->e:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/WidgetSpan;->addView(Landroid/view/View;)V

    .line 143
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/a;->d()Ljava/util/List;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "aliases"

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->NearbyDefaultSearches:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    move-object v1, v0

    goto :goto_0

    .line 152
    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->g:J

    .line 112
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->e:Lcom/yelp/android/ui/widgets/WidgetSpan;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->e:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->removeAllViews()V

    .line 158
    :cond_0
    return-void
.end method
