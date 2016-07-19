.class public Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;
.super Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;
.source "AddBusiness.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
.implements Lcom/yelp/android/ui/activities/mutatebiz/c$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;",
        "Lcom/yelp/android/ui/activities/mutatebiz/c$a",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lcom/yelp/android/ui/dialogs/FlagsDialog;

.field private B:Landroid/widget/ImageButton;

.field private C:Ljava/util/Locale;

.field private D:Lcom/yelp/android/ui/activities/mutatebiz/b;

.field private final E:Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

.field private final F:Lcom/yelp/android/ui/activities/mutatebiz/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;-><init>()V

    .line 262
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$2;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->E:Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

    .line 271
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$3;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->F:Lcom/yelp/android/ui/activities/mutatebiz/b$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const-string/jumbo v1, "categories"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 72
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 78
    if-eqz p2, :cond_0

    .line 81
    const-string/jumbo v1, "country"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)Lcom/yelp/android/ui/dialogs/FlagsDialog;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->A:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;Lcom/yelp/android/ui/dialogs/FlagsDialog;)Lcom/yelp/android/ui/dialogs/FlagsDialog;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->A:Lcom/yelp/android/ui/dialogs/FlagsDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->B:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->C:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b()Ljava/util/Locale;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->C:Ljava/util/Locale;

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->C:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Ljava/lang/String;)V

    .line 240
    :cond_0
    const v0, 0x7f0f00d3

    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(ILjava/lang/CharSequence;)V

    .line 241
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)Ljava/util/Locale;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->C:Ljava/util/Locale;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;

    .line 226
    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)V

    .line 231
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)Lcom/yelp/android/ui/dialogs/FlagsDialog$b;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->E:Lcom/yelp/android/ui/dialogs/FlagsDialog$b;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "country"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "country"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->p:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->b(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->p:Ljava/lang/String;

    .line 254
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/b;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->F:Lcom/yelp/android/ui/activities/mutatebiz/b$a;

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/b;-><init>(Landroid/content/Context;Lcom/yelp/android/appdata/LocationService;Lcom/yelp/android/ui/activities/mutatebiz/b$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->D:Lcom/yelp/android/ui/activities/mutatebiz/b;

    .line 257
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->enableLoading()V

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->D:Lcom/yelp/android/ui/activities/mutatebiz/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 165
    const v0, 0x7f03001b

    return v0
.end method

.method protected a(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 191
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Map;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/analytics/iris/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")",
            "Lcom/yelp/android/analytics/iris/a;"
        }
    .end annotation

    .prologue
    .line 207
    const-string/jumbo v0, "is_default_business_category_code"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v0, "business_country_code"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/y;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;)",
            "Lcom/yelp/android/appdata/webrequests/y;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getParcelableArrayData()[Landroid/os/Parcelable;

    move-result-object v3

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->c:Ljava/lang/String;

    .line 143
    :cond_0
    new-instance v4, Lcom/yelp/android/appdata/webrequests/t;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->c:Ljava/lang/String;

    aget-object v0, v3, v2

    check-cast v0, Landroid/location/Address;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    :goto_0
    invoke-direct {v4, p1, v5, v0, v1}, Lcom/yelp/android/appdata/webrequests/t;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/CharSequence;Landroid/location/Address;Z)V

    return-object v4

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->h:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getParcelableArrayListData()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->h:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getParcelableArrayListData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    .line 177
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v3}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getParcelableArrayData()[Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 174
    goto :goto_0

    :cond_2
    move v1, v2

    .line 177
    goto :goto_1
.end method

.method protected c()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddCancel:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method protected d()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddFail:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e()V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->b(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessAdd:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->x:Z

    .line 89
    new-instance v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpBusiness;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/serializable/YelpBusiness;->a(D)V

    .line 91
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "categories"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->h:Lcom/yelp/android/ui/activities/mutatebiz/d;

    const-string/jumbo v2, ", "

    new-instance v3, Lcom/yelp/android/serializable/Category$b;

    invoke-direct {v3}, Lcom/yelp/android/serializable/Category$b;-><init>()V

    invoke-static {v2, v0, v3}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/StringUtils$c;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 99
    :cond_0
    const v0, 0x7f0f00d2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->B:Landroid/widget/ImageButton;

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->B:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->C:Ljava/util/Locale;

    .line 103
    const v0, 0x7f0f00d1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness$1;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->i()V

    .line 119
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onPause()V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->D:Lcom/yelp/android/ui/activities/mutatebiz/b;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->disableLoading()V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->D:Lcom/yelp/android/ui/activities/mutatebiz/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/b;->cancel(Z)Z

    .line 129
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 154
    const v0, 0x7f0f0607

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0700f8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 155
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
