.class public final Lcom/ooyala/android/LocalizationSupport;
.super Ljava/lang/Object;
.source "LocalizationSupport.java"


# static fields
.field private static currentLocalizedStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultLocales:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/ooyala/android/LocalizationSupport;->defaultLocales:Ljava/util/Map;

    .line 7
    sput-object v0, Lcom/ooyala/android/LocalizationSupport;->currentLocalizedStrings:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDefaultLocales()V
    .locals 4

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    const-string/jumbo v1, "LIVE"

    const-string/jumbo v2, "LIVE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    const-string/jumbo v2, "LIVE"

    const-string/jumbo v3, "\u30e9\u30a4\u30d6\u30d3\u30c7\u30aa"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/ooyala/android/LocalizationSupport;->defaultLocales:Ljava/util/Map;

    .line 17
    sget-object v2, Lcom/ooyala/android/LocalizationSupport;->defaultLocales:Ljava/util/Map;

    const-string/jumbo v3, "en_US"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/ooyala/android/LocalizationSupport;->defaultLocales:Ljava/util/Map;

    const-string/jumbo v2, "ja_JP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string/jumbo v0, "en_US"

    invoke-static {v0}, Lcom/ooyala/android/LocalizationSupport;->loadLocalizedStrings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ooyala/android/LocalizationSupport;->currentLocalizedStrings:Ljava/util/Map;

    .line 20
    return-void
.end method

.method public static declared-synchronized loadLocalizedStrings(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    const-class v1, Lcom/ooyala/android/LocalizationSupport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ooyala/android/LocalizationSupport;->defaultLocales:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ooyala/android/LocalizationSupport;->createDefaultLocales()V

    .line 28
    :cond_0
    sget-object v0, Lcom/ooyala/android/LocalizationSupport;->defaultLocales:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized localizedStringFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/ooyala/android/LocalizationSupport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ooyala/android/LocalizationSupport;->currentLocalizedStrings:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ooyala/android/LocalizationSupport;->createDefaultLocales()V

    .line 44
    :cond_0
    sget-object v0, Lcom/ooyala/android/LocalizationSupport;->currentLocalizedStrings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized useLocalizedStrings(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    const-class v1, Lcom/ooyala/android/LocalizationSupport;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ooyala/android/LocalizationSupport;->currentLocalizedStrings:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ooyala/android/LocalizationSupport;->createDefaultLocales()V

    .line 36
    :cond_0
    sput-object p0, Lcom/ooyala/android/LocalizationSupport;->currentLocalizedStrings:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v1

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
