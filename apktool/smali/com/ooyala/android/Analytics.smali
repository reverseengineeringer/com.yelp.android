.class public Lcom/ooyala/android/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field private static final EMBED_MODULEPARAMS_HTML:Ljava/lang/String; = "<html><head><script src=\"_HOST__URI_\"></script><script>function _init() {reporter = new Ooyala.Reporter(\'_PCODE_\',_MODULE_PARAMS_);console.log(\'...onLoad: domain=\'+document.domain);};</script></script></head><body onLoad=\"_init();\"></body></html>"

.field private static final TAG:Ljava/lang/String; = "Analytics"

.field private static final TMP_EXT:Ljava/lang/String; = ".html"

.field private static final TMP_PREFIX:Ljava/lang/String; = "pb2823"


# instance fields
.field private _defaultUserAgent:Ljava/lang/String;

.field private _failed:Z

.field private _jsAnalytics:Landroid/webkit/WebView;

.field private _queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _ready:Z

.field private _userAgent:Ljava/lang/String;

.field private tmpBootHtmlFileManager:Lcom/ooyala/android/TemporaryInternalStorageFileManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/ooyala/android/PlayerAPIClient;)V
    .locals 2

    .prologue
    .line 88
    invoke-static {p2}, Lcom/ooyala/android/Analytics;->generateEmbedHTML(Lcom/ooyala/android/PlayerAPIClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ooyala/android/PlayerAPIClient;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ooyala/android/Analytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "http://www.ooyala.com/analytics.html"

    invoke-direct {p0, p1, p2, v0}, Lcom/ooyala/android/Analytics;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/Analytics;->_queue:Ljava/util/List;

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ooyala/android/Analytics;->_defaultUserAgent:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ooyala/android/Analytics;->_userAgent:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/ooyala/android/TemporaryInternalStorageFileManager;

    invoke-direct {v0}, Lcom/ooyala/android/TemporaryInternalStorageFileManager;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/Analytics;->tmpBootHtmlFileManager:Lcom/ooyala/android/TemporaryInternalStorageFileManager;

    .line 112
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    .line 114
    const-string/jumbo v0, "Ooyala Android SDK v%s [%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "2.2.0_RC12"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/Analytics;->_defaultUserAgent:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->_defaultUserAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/ooyala/android/Analytics;->_userAgent:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/Analytics;->_defaultUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 119
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/Analytics;->setAllowUniversalAccessFromFileURLs(Landroid/webkit/WebSettings;)V

    .line 121
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    new-instance v1, Lcom/ooyala/android/Analytics$1;

    invoke-direct {v1, p0}, Lcom/ooyala/android/Analytics$1;-><init>(Lcom/ooyala/android/Analytics;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 140
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    new-instance v1, Lcom/ooyala/android/Analytics$2;

    invoke-direct {v1, p0}, Lcom/ooyala/android/Analytics$2;-><init>(Lcom/ooyala/android/Analytics;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 152
    invoke-direct {p0, p1, p3, p2}, Lcom/ooyala/android/Analytics;->bootHtml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initialized Analytics with user agent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/ooyala/android/Analytics;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/ooyala/android/Analytics;->_ready:Z

    return v0
.end method

.method static synthetic access$002(Lcom/ooyala/android/Analytics;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/ooyala/android/Analytics;->_ready:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ooyala/android/Analytics;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/ooyala/android/Analytics;->_failed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/ooyala/android/Analytics;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/ooyala/android/Analytics;->_failed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ooyala/android/Analytics;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ooyala/android/Analytics;->performQueuedActions()V

    return-void
.end method

.method private bootHtml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->tmpBootHtmlFileManager:Lcom/ooyala/android/TemporaryInternalStorageFileManager;

    const-string/jumbo v1, "pb2823"

    const-string/jumbo v2, ".html"

    invoke-virtual {v0, p1, v1, v2}, Lcom/ooyala/android/TemporaryInternalStorageFileManager;->next(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ooyala/android/TemporaryInternalStorageFile;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p3}, Lcom/ooyala/android/TemporaryInternalStorageFile;->write(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v0}, Lcom/ooyala/android/Analytics;->loadTmpBootHtmlFile(Lcom/ooyala/android/TemporaryInternalStorageFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string/jumbo v1, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    .line 168
    const-string/jumbo v1, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static generateEmbedHTML(Lcom/ooyala/android/PlayerAPIClient;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string/jumbo v0, "http://www.ooyala.com/analytics.html"

    .line 49
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v3, "http"

    invoke-virtual {p0}, Lcom/ooyala/android/PlayerAPIClient;->getDomain()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-direct {v2, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    const-string/jumbo v2, "documentUrl"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Lcom/ooyala/android/PlayerAPIClient;->getUserInfo()Lcom/ooyala/android/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ooyala/android/PlayerAPIClient;->getUserInfo()Lcom/ooyala/android/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/UserInfo;->getAccountId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    const-string/jumbo v0, "accountId"

    invoke-virtual {p0}, Lcom/ooyala/android/PlayerAPIClient;->getUserInfo()Lcom/ooyala/android/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ooyala/android/UserInfo;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    const-string/jumbo v0, "<html><head><script src=\"_HOST__URI_\"></script><script>function _init() {reporter = new Ooyala.Reporter(\'_PCODE_\',_MODULE_PARAMS_);console.log(\'...onLoad: domain=\'+document.domain);};</script></script></head><body onLoad=\"_init();\"></body></html>"

    const-string/jumbo v2, "_HOST_"

    sget-object v3, Lcom/ooyala/android/Constants;->JS_ANALYTICS_HOST:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "_URI_"

    const-string/jumbo v3, "/reporter.js"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "_PCODE_"

    invoke-virtual {p0}, Lcom/ooyala/android/PlayerAPIClient;->getPcode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "_MODULE_PARAMS_"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :catch_0
    move-exception v2

    .line 52
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "falling back to default analytics URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadTmpBootHtmlFile(Lcom/ooyala/android/TemporaryInternalStorageFile;)V
    .locals 4

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ooyala/android/TemporaryInternalStorageFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string/jumbo v1, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trying to load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :try_start_0
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {p1}, Lcom/ooyala/android/TemporaryInternalStorageFile;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :goto_0
    :try_start_1
    const-string/jumbo v2, "Analytics"

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 182
    :goto_1
    iget-object v1, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 183
    return-void

    .line 180
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private performQueuedActions()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->_queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    iget-object v2, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method private queue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->_queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method private static setAllowUniversalAccessFromFileURLs(Landroid/webkit/WebSettings;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 70
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setAllowUniversalAccessFromFileURLs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_1
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string/jumbo v1, "Analytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method initializeVideo(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/ooyala/android/Analytics;->_failed:Z

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:reporter.initializeVideo(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-boolean v1, p0, Lcom/ooyala/android/Analytics;->_ready:Z

    if-nez v1, :cond_1

    .line 194
    invoke-direct {p0, v0}, Lcom/ooyala/android/Analytics;->queue(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportPlayStarted()V
    .locals 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/ooyala/android/Analytics;->_failed:Z

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string/jumbo v0, "javascript:reporter.reportPlayStarted();"

    .line 233
    iget-boolean v1, p0, Lcom/ooyala/android/Analytics;->_ready:Z

    if-nez v1, :cond_1

    .line 234
    invoke-direct {p0, v0}, Lcom/ooyala/android/Analytics;->queue(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportPlayerLoad()V
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/ooyala/android/Analytics;->_failed:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string/jumbo v0, "javascript:reporter.reportPlayerLoad();"

    .line 206
    iget-boolean v1, p0, Lcom/ooyala/android/Analytics;->_ready:Z

    if-nez v1, :cond_1

    .line 207
    invoke-direct {p0, v0}, Lcom/ooyala/android/Analytics;->queue(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportPlayheadUpdate(D)V
    .locals 5

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/ooyala/android/Analytics;->_failed:Z

    if-eqz v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:reporter.reportPlayheadUpdate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    iget-boolean v1, p0, Lcom/ooyala/android/Analytics;->_ready:Z

    if-nez v1, :cond_1

    .line 221
    invoke-direct {p0, v0}, Lcom/ooyala/android/Analytics;->queue(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportReplay()V
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/ooyala/android/Analytics;->_failed:Z

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string/jumbo v0, "javascript:reporter.reportReplay();"

    .line 246
    iget-boolean v1, p0, Lcom/ooyala/android/Analytics;->_ready:Z

    if-nez v1, :cond_1

    .line 247
    invoke-direct {p0, v0}, Lcom/ooyala/android/Analytics;->queue(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setTags(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/ooyala/android/Analytics;->_failed:Z

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "javascript:reporter.setTags([\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\",\""

    invoke-static {p1, v1}, Lcom/ooyala/android/Utils;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"]);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    iget-boolean v1, p0, Lcom/ooyala/android/Analytics;->_ready:Z

    if-nez v1, :cond_1

    .line 257
    invoke-direct {p0, v0}, Lcom/ooyala/android/Analytics;->queue(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 274
    if-eqz p1, :cond_0

    .line 275
    iput-object p1, p0, Lcom/ooyala/android/Analytics;->_userAgent:Ljava/lang/String;

    .line 280
    :goto_0
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->_jsAnalytics:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/Analytics;->_userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 281
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/Analytics;->_defaultUserAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/ooyala/android/Analytics;->_userAgent:Ljava/lang/String;

    goto :goto_0
.end method
