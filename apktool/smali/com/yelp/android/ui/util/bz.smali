.class public abstract Lcom/yelp/android/ui/util/bz;
.super Landroid/widget/Filter;
.source "SuggestionFilter.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/Filter;",
        "Lcom/yelp/android/appdata/webrequests/m",
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

.field private e:Lcom/yelp/android/appdata/webrequests/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/fy",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/yelp/android/ui/util/cb;",
            "Lcom/yelp/android/ui/util/cd",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private k:Lcom/yelp/android/analytics/iris/IriSource;

.field private l:Landroid/location/Location;

.field private m:Ljava/lang/String;

.field private final n:Lcom/yelp/android/ui/util/cc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/cc",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZZLcom/yelp/android/ui/util/cc;)V
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
            ">;ZZZ",
            "Lcom/yelp/android/ui/util/cc",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/bz;->a:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/yelp/android/ui/util/bz;->b:Ljava/util/ArrayList;

    .line 73
    iput-object p3, p0, Lcom/yelp/android/ui/util/bz;->c:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/bz;->f:Ljava/util/HashMap;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/bz;->g:Z

    .line 77
    iput-boolean p4, p0, Lcom/yelp/android/ui/util/bz;->h:Z

    .line 78
    iput-boolean p5, p0, Lcom/yelp/android/ui/util/bz;->i:Z

    .line 79
    iput-boolean p6, p0, Lcom/yelp/android/ui/util/bz;->j:Z

    .line 80
    iput-object p7, p0, Lcom/yelp/android/ui/util/bz;->n:Lcom/yelp/android/ui/util/cc;

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    .line 82
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const-string/jumbo p1, ""

    .line 261
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\s+"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
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

    .line 307
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 308
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f0f00b5

    invoke-direct {v4, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 310
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f0f0139

    invoke-direct {v5, v0, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 313
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 314
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 315
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 316
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 319
    instance-of v0, v1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 320
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v2, v0

    .line 325
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v2, v4, v11, v0, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 330
    instance-of v0, v1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 331
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion;->setStyledTerm(Landroid/text/SpannableString;)V

    .line 332
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 322
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 334
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v2, v5, v11, v0, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 346
    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 348
    if-ltz v0, :cond_4

    .line 349
    invoke-virtual {v2, v6, v11, v0, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 350
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/2addr v0, v10

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v10

    invoke-virtual {v2, v7, v0, v10, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 352
    instance-of v0, v1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 353
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion;->setStyledTerm(Landroid/text/SpannableString;)V

    .line 354
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    :cond_4
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v0

    invoke-virtual {v2, v6, v11, v0, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 363
    instance-of v0, v1, Lcom/yelp/android/serializable/RichSearchSuggestion;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 364
    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/RichSearchSuggestion;->setStyledTerm(Landroid/text/SpannableString;)V

    .line 365
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 367
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 370
    :cond_6
    return-object v3
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/util/bz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/ui/util/bz",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 458
    if-nez p2, :cond_0

    .line 459
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :goto_0
    const-string/jumbo v1, "typed_text"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-virtual {p1, p0, v0}, Lcom/yelp/android/ui/util/bz;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 471
    return-void

    .line 461
    :cond_0
    const-string/jumbo v1, "suggestion_type"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string/jumbo v1, "suggested_text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string/jumbo v1, "suggestion_list_index"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string/jumbo v1, "analytics_payload"

    invoke-direct {p1}, Lcom/yelp/android/ui/util/bz;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string/jumbo v1, "source"

    invoke-virtual {p1}, Lcom/yelp/android/ui/util/bz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string/jumbo v1, "request_id"

    invoke-virtual {p1}, Lcom/yelp/android/ui/util/bz;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bz;->a()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 236
    const-string/jumbo v1, "typed_text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string/jumbo v1, "request_id"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string/jumbo v1, "source"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string/jumbo v1, "analytics_payload"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bz;->a()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 242
    :cond_0
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->e:Lcom/yelp/android/appdata/webrequests/fy;

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->e:Lcom/yelp/android/appdata/webrequests/fy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fy;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;Landroid/location/Location;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<TT;>;>;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/fy",
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
    .line 250
    iput-object p1, p0, Lcom/yelp/android/ui/util/bz;->l:Landroid/location/Location;

    .line 251
    return-void
.end method

.method public a(Lcom/yelp/android/analytics/iris/IriSource;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yelp/android/ui/util/bz;->k:Lcom/yelp/android/analytics/iris/IriSource;

    .line 111
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

    .line 267
    check-cast p1, Lcom/yelp/android/appdata/webrequests/fy;

    .line 268
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yelp/android/ui/util/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v7, Lcom/yelp/android/ui/util/cd;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v7, p2, v0, v1, v2}, Lcom/yelp/android/ui/util/cd;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/ui/util/ca;)V

    .line 274
    iget-object v8, p0, Lcom/yelp/android/ui/util/bz;->f:Ljava/util/HashMap;

    new-instance v0, Lcom/yelp/android/ui/util/cb;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->c()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->d()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/yelp/android/ui/util/bz;->i:Z

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->e()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->f()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/util/cb;-><init>(Ljava/lang/String;ZZLandroid/location/Location;Ljava/lang/String;)V

    invoke-virtual {v8, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    iget-object v1, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/ui/util/bz;->g:Z

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 283
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    :cond_0
    iput-object v0, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    .line 287
    iget-object v1, p0, Lcom/yelp/android/ui/util/bz;->n:Lcom/yelp/android/ui/util/cc;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/fy;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/yelp/android/ui/util/bz;->a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/util/cc;->a(Ljava/util/List;)V

    .line 293
    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/yelp/android/ui/util/bz;->g:Z

    .line 294
    return-void

    :cond_2
    move v2, v6

    .line 274
    goto :goto_0

    .line 288
    :cond_3
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bz;->g:Z

    if-eqz v0, :cond_1

    .line 290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->n:Lcom/yelp/android/ui/util/cc;

    iget-object v1, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/cc;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/yelp/android/ui/util/bz;->m:Ljava/lang/String;

    .line 255
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bz;->j:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bz;->c()Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "search"

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->k:Lcom/yelp/android/analytics/iris/IriSource;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->k:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getParameterValue()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "contribution_search"

    goto :goto_0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bz;->j:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->e:Lcom/yelp/android/appdata/webrequests/fy;

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->e:Lcom/yelp/android/appdata/webrequests/fy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fy;->getRequestId()Ljava/lang/String;

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
    .line 247
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/util/bz;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6

    .prologue
    .line 124
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/bz;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 127
    iget-boolean v1, p0, Lcom/yelp/android/ui/util/bz;->i:Z

    if-nez v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/yelp/android/ui/util/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 132
    iget-object v1, p0, Lcom/yelp/android/ui/util/bz;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 133
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 135
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    iget-boolean v5, p0, Lcom/yelp/android/ui/util/bz;->i:Z

    if-eqz v5, :cond_2

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->instantiateCommonSuggestion(Ljava/lang/String;)Lcom/yelp/android/serializable/RichSearchSuggestion;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 148
    :cond_3
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 149
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 150
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 151
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 179
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/bz;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 180
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-ltz v0, :cond_6

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 183
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bz;->h:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    .line 185
    iget-object v1, p0, Lcom/yelp/android/ui/util/bz;->n:Lcom/yelp/android/ui/util/cc;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v8}, Lcom/yelp/android/ui/util/bz;->a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/util/cc;->a(Ljava/util/List;)V

    .line 230
    :goto_0
    return-void

    .line 188
    :cond_0
    iput-boolean v7, p0, Lcom/yelp/android/ui/util/bz;->g:Z

    .line 190
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    new-instance v0, Lcom/yelp/android/ui/util/cb;

    iget-object v2, p0, Lcom/yelp/android/ui/util/bz;->l:Landroid/location/Location;

    if-eqz v2, :cond_2

    move v2, v6

    :goto_1
    iget-boolean v3, p0, Lcom/yelp/android/ui/util/bz;->i:Z

    iget-object v4, p0, Lcom/yelp/android/ui/util/bz;->l:Landroid/location/Location;

    iget-object v5, p0, Lcom/yelp/android/ui/util/bz;->m:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/util/cb;-><init>(Ljava/lang/String;ZZLandroid/location/Location;Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/yelp/android/ui/util/bz;->e:Lcom/yelp/android/appdata/webrequests/fy;

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/yelp/android/ui/util/bz;->e:Lcom/yelp/android/appdata/webrequests/fy;

    invoke-virtual {v2, v6}, Lcom/yelp/android/appdata/webrequests/fy;->cancel(Z)V

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/util/bz;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 199
    iget-object v1, p0, Lcom/yelp/android/ui/util/bz;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/cd;

    invoke-static {v1}, Lcom/yelp/android/ui/util/cd;->a(Lcom/yelp/android/ui/util/cd;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 200
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 202
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    .line 203
    iget-object v2, p0, Lcom/yelp/android/ui/util/bz;->n:Lcom/yelp/android/ui/util/cc;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v8}, Lcom/yelp/android/ui/util/bz;->a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/yelp/android/ui/util/cc;->a(Ljava/util/List;)V

    .line 205
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/yelp/android/ui/util/bz;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/cd;

    invoke-static {v1}, Lcom/yelp/android/ui/util/cd;->b(Lcom/yelp/android/ui/util/cd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bz;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/util/bz;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/cd;

    invoke-static {v0}, Lcom/yelp/android/ui/util/cd;->c(Lcom/yelp/android/ui/util/cd;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/yelp/android/ui/util/bz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v2, v7

    .line 191
    goto :goto_1

    .line 209
    :cond_3
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bz;->i:Z

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    iput-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 216
    iput-boolean v6, p0, Lcom/yelp/android/ui/util/bz;->g:Z

    .line 218
    :cond_4
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/yelp/android/ui/util/bz;->d:Ljava/util/List;

    .line 219
    iget-object v2, p0, Lcom/yelp/android/ui/util/bz;->n:Lcom/yelp/android/ui/util/cc;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v8}, Lcom/yelp/android/ui/util/bz;->a(Ljava/util/List;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/yelp/android/ui/util/cc;->a(Ljava/util/List;)V

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->l:Landroid/location/Location;

    if-nez v0, :cond_5

    sget-object v0, Lcom/yelp/android/appdata/webrequests/fy;->a:Landroid/location/Location;

    :goto_2
    iget-object v2, p0, Lcom/yelp/android/ui/util/bz;->m:Ljava/lang/String;

    invoke-virtual {p0, v1, p0, v0, v2}, Lcom/yelp/android/ui/util/bz;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;Landroid/location/Location;Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fy;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/bz;->e:Lcom/yelp/android/appdata/webrequests/fy;

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->e:Lcom/yelp/android/appdata/webrequests/fy;

    new-array v2, v6, [Ljava/lang/String;

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/fy;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto/16 :goto_0

    .line 221
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->l:Landroid/location/Location;

    goto :goto_2

    .line 228
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/util/bz;->n:Lcom/yelp/android/ui/util/cc;

    invoke-interface {v0}, Lcom/yelp/android/ui/util/cc;->a()V

    goto/16 :goto_0
.end method
