.class public abstract Lcom/yelp/android/ui/util/SuggestionFilter;
.super Landroid/widget/Filter;
.source "SuggestionFilter.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/SuggestionFilter$1;,
        Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;,
        Lcom/yelp/android/ui/util/SuggestionFilter$b;,
        Lcom/yelp/android/ui/util/SuggestionFilter$a;,
        Lcom/yelp/android/ui/util/SuggestionFilter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/Filter;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private e:Lcom/yelp/android/appdata/webrequests/ep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ep",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/yelp/android/ui/util/SuggestionFilter$a;",
            "Lcom/yelp/android/ui/util/SuggestionFilter$c",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

.field private k:Lcom/yelp/android/analytics/iris/IriSource;

.field private l:Landroid/location/Location;

.field private m:Ljava/lang/String;

.field private final n:Lcom/yelp/android/ui/util/SuggestionFilter$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/SuggestionFilter$b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZLcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/ui/util/SuggestionFilter$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZ",
            "Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;",
            "Lcom/yelp/android/ui/util/SuggestionFilter$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->a:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 74
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->b:Ljava/util/ArrayList;

    .line 76
    iput-object p3, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->c:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->f:Ljava/util/HashMap;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->g:Z

    .line 80
    iput-boolean p4, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->h:Z

    .line 81
    iput-boolean p5, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->i:Z

    .line 82
    iput-object p6, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->j:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    .line 83
    iput-object p7, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->n:Lcom/yelp/android/ui/util/SuggestionFilter$b;

    .line 84
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    .line 85
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string/jumbo p1, ""

    .line 275
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\s+"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/16 v12, 0x12

    const/4 v11, 0x0

    .line 325
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 326
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f09013d

    invoke-direct {v4, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 328
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f0901a0

    invoke-direct {v5, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 331
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 332
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 333
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 337
    instance-of v0, v1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 338
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v2, v0

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v2, v4, v11, v0, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 348
    instance-of v0, v1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 349
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a(Landroid/text/SpannableString;)V

    .line 350
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 340
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 352
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v2, v5, v11, v0, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 364
    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 366
    if-ltz v0, :cond_4

    .line 367
    invoke-virtual {v2, v6, v11, v0, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 368
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/2addr v0, v10

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v10

    invoke-virtual {v2, v7, v0, v10, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 373
    instance-of v0, v1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 374
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a(Landroid/text/SpannableString;)V

    .line 375
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_4
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v2, v6, v11, v0, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 384
    instance-of v0, v1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 385
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a(Landroid/text/SpannableString;)V

    .line 386
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 388
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 391
    :cond_6
    return-object v3
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/util/SuggestionFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/ui/util/SuggestionFilter",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 495
    if-nez p2, :cond_0

    .line 496
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :goto_0
    const-string/jumbo v1, "typed_text"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    invoke-virtual {p1, p0, v0}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 508
    return-void

    .line 498
    :cond_0
    const-string/jumbo v1, "suggestion_type"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string/jumbo v1, "suggested_text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string/jumbo v1, "suggestion_list_index"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string/jumbo v1, "analytics_payload"

    invoke-direct {p1}, Lcom/yelp/android/ui/util/SuggestionFilter;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-string/jumbo v1, "source"

    invoke-virtual {p1}, Lcom/yelp/android/ui/util/SuggestionFilter;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    const-string/jumbo v1, "request_id"

    invoke-virtual {p1}, Lcom/yelp/android/ui/util/SuggestionFilter;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/SuggestionFilter;->a()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 250
    const-string/jumbo v1, "typed_text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v1, "request_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v1, "analytics_payload"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/SuggestionFilter;->a()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 256
    :cond_0
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->e:Lcom/yelp/android/appdata/webrequests/ep;

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 483
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->e:Lcom/yelp/android/appdata/webrequests/ep;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ep;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Landroid/location/Location;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/ep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<TT;>;>;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/ep",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected abstract a(Landroid/content/Context;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->l:Landroid/location/Location;

    .line 265
    return-void
.end method

.method public a(Lcom/yelp/android/analytics/iris/IriSource;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->k:Lcom/yelp/android/analytics/iris/IriSource;

    .line 116
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 281
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ep;

    .line 282
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->i_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/SuggestionFilter;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance v7, Lcom/yelp/android/ui/util/SuggestionFilter$c;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->i_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v7, p2, v0, v1, v2}, Lcom/yelp/android/ui/util/SuggestionFilter$c;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/ui/util/SuggestionFilter$1;)V

    .line 289
    iget-object v8, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->f:Ljava/util/HashMap;

    new-instance v0, Lcom/yelp/android/ui/util/SuggestionFilter$a;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->f()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->x()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->i:Z

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->y()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->z()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/util/SuggestionFilter$a;-><init>(Ljava/lang/String;ZZLandroid/location/Location;Ljava/lang/String;)V

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    iget-object v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->g:Z

    if-nez v1, :cond_0

    .line 300
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 301
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    :cond_0
    iput-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    .line 305
    iget-object v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->n:Lcom/yelp/android/ui/util/SuggestionFilter$b;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ep;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/util/SuggestionFilter$b;->a(Ljava/util/List;)V

    .line 311
    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->g:Z

    .line 312
    return-void

    :cond_2
    move v2, v6

    .line 289
    goto :goto_0

    .line 306
    :cond_3
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->g:Z

    if-eqz v0, :cond_1

    .line 308
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->n:Lcom/yelp/android/ui/util/SuggestionFilter$b;

    iget-object v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/SuggestionFilter$b;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->m:Ljava/lang/String;

    .line 269
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->j:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    sget-object v1, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->CONTRIBUTION:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/SuggestionFilter;->c()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->j:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    sget-object v1, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->BOOKMARK:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    if-ne v0, v1, :cond_1

    .line 96
    const-string/jumbo v0, "bookmark"

    goto :goto_0

    .line 98
    :cond_1
    const-string/jumbo v0, "search"

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->k:Lcom/yelp/android/analytics/iris/IriSource;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->k:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getParameterValue()Ljava/lang/String;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "contribution_search"

    goto :goto_0
.end method

.method protected d()Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->j:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->e:Lcom/yelp/android/appdata/webrequests/ep;

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->e:Lcom/yelp/android/appdata/webrequests/ep;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ep;->i_()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .prologue
    .line 129
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 132
    iget-boolean v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->i:Z

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 138
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 140
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    iget-boolean v5, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->i:Z

    if-eqz v5, :cond_2

    .line 145
    invoke-static {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    :cond_3
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 155
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 156
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 187
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 188
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-ltz v0, :cond_6

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 191
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->h:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    .line 193
    iget-object v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->n:Lcom/yelp/android/ui/util/SuggestionFilter$b;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v8}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/util/SuggestionFilter$b;->a(Ljava/util/List;)V

    .line 244
    :goto_0
    return-void

    .line 195
    :cond_0
    iput-boolean v7, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->g:Z

    .line 197
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v0, Lcom/yelp/android/ui/util/SuggestionFilter$a;

    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->l:Landroid/location/Location;

    if-eqz v2, :cond_2

    move v2, v6

    :goto_1
    iget-boolean v3, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->i:Z

    iget-object v4, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->l:Landroid/location/Location;

    iget-object v5, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->m:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/util/SuggestionFilter$a;-><init>(Ljava/lang/String;ZZLandroid/location/Location;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->e:Lcom/yelp/android/appdata/webrequests/ep;

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->e:Lcom/yelp/android/appdata/webrequests/ep;

    invoke-virtual {v2, v6}, Lcom/yelp/android/appdata/webrequests/ep;->a(Z)V

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 210
    iget-object v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/SuggestionFilter$c;

    invoke-static {v1}, Lcom/yelp/android/ui/util/SuggestionFilter$c;->a(Lcom/yelp/android/ui/util/SuggestionFilter$c;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 211
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 213
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    .line 214
    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->n:Lcom/yelp/android/ui/util/SuggestionFilter$b;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v8}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/yelp/android/ui/util/SuggestionFilter$b;->a(Ljava/util/List;)V

    .line 215
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/SuggestionFilter$c;

    invoke-static {v1}, Lcom/yelp/android/ui/util/SuggestionFilter$c;->b(Lcom/yelp/android/ui/util/SuggestionFilter$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/SuggestionFilter;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/SuggestionFilter$c;

    invoke-static {v0}, Lcom/yelp/android/ui/util/SuggestionFilter$c;->c(Lcom/yelp/android/ui/util/SuggestionFilter$c;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v2, v7

    .line 198
    goto :goto_1

    .line 221
    :cond_3
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->i:Z

    if-eqz v0, :cond_4

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    iput-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 228
    iput-boolean v6, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->g:Z

    .line 230
    :cond_4
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->d:Ljava/util/List;

    .line 231
    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->n:Lcom/yelp/android/ui/util/SuggestionFilter$b;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v8}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/yelp/android/ui/util/SuggestionFilter$b;->a(Ljava/util/List;)V

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->l:Landroid/location/Location;

    if-nez v0, :cond_5

    sget-object v0, Lcom/yelp/android/appdata/webrequests/ep;->a:Landroid/location/Location;

    :goto_2
    iget-object v2, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->m:Ljava/lang/String;

    invoke-virtual {p0, v1, p0, v0, v2}, Lcom/yelp/android/ui/util/SuggestionFilter;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Landroid/location/Location;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/ep;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->e:Lcom/yelp/android/appdata/webrequests/ep;

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->e:Lcom/yelp/android/appdata/webrequests/ep;

    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ep;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto/16 :goto_0

    .line 232
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->l:Landroid/location/Location;

    goto :goto_2

    .line 242
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/util/SuggestionFilter;->n:Lcom/yelp/android/ui/util/SuggestionFilter$b;

    invoke-interface {v0}, Lcom/yelp/android/ui/util/SuggestionFilter$b;->a()V

    goto/16 :goto_0
.end method
