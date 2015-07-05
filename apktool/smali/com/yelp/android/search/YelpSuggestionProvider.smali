.class public Lcom/yelp/android/search/YelpSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "YelpSuggestionProvider.java"


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field b:Lcom/yelp/android/appdata/LocationService;

.field c:Lorg/apache/http/client/HttpClient;

.field d:Lcom/yelp/android/debug/Debug;

.field e:Lcom/yelp/android/appdata/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "content://com.yelp.android.search.YelpSuggestionProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/search/YelpSuggestionProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 3

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 58
    if-nez p1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->b:Lcom/yelp/android/appdata/LocationService;

    .line 65
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->e:Lcom/yelp/android/appdata/n;

    .line 66
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->d:Lcom/yelp/android/debug/Debug;

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->d:Lcom/yelp/android/debug/Debug;

    iget-object v1, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->e:Lcom/yelp/android/appdata/n;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/services/d;->a(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/n;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->c:Lorg/apache/http/client/HttpClient;

    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p1}, Lcom/yelp/android/appdata/LocationService;->c(Landroid/content/Context;)Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->b:Lcom/yelp/android/appdata/LocationService;

    .line 69
    new-instance v0, Lcom/yelp/android/appdata/n;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/services/x;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/appdata/n;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->e:Lcom/yelp/android/appdata/n;

    .line 70
    new-instance v0, Lcom/yelp/android/debug/Debug;

    iget-object v1, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->e:Lcom/yelp/android/appdata/n;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/debug/Debug;-><init>(Landroid/content/Context;Lcom/yelp/android/appdata/n;)V

    iput-object v0, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->d:Lcom/yelp/android/debug/Debug;

    goto :goto_1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 85
    array-length v0, p4

    if-ge v0, v7, :cond_0

    move-object v0, v1

    .line 127
    :goto_0
    return-object v0

    .line 88
    :cond_0
    aget-object v0, p4, v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->b:Lcom/yelp/android/appdata/LocationService;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v4

    .line 99
    if-nez v4, :cond_3

    .line 100
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fw;

    invoke-direct {v0, v2, v1}, Lcom/yelp/android/appdata/webrequests/fw;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 106
    :goto_1
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/yelp/android/search/YelpSuggestionProvider;->d:Lcom/yelp/android/debug/Debug;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/yelp/android/appdata/webrequests/fw;->executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_2
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v6

    const-string/jumbo v1, "suggest_text_1"

    aput-object v1, v0, v7

    const-string/jumbo v1, "suggest_intent_data"

    aput-object v1, v0, v8

    .line 118
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 119
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    aput-object v0, v3, v8

    .line 124
    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 102
    :cond_3
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fw;

    invoke-direct {v0, v2, v4, v1, v1}, Lcom/yelp/android/appdata/webrequests/fw;-><init>(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    goto :goto_1

    .line 109
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 110
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 127
    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method
