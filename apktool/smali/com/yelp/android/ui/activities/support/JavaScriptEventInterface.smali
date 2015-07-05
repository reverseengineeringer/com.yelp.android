.class public Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface;
.super Ljava/lang/Object;
.source "JavaScriptEventInterface.java"


# static fields
.field private static final LOADING_EVENT_PREFIX:Ljava/lang/String; = "loader."

.field private static final METHOD_LOADER_PREFIX:Ljava/lang/String; = "onLoader"

.field private static final METHOD_PREFIX:Ljava/lang/String; = "on"


# instance fields
.field private final mCallback:Lcom/yelp/android/ui/activities/support/b;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/yelp/android/ui/activities/support/b;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface;->mCallback:Lcom/yelp/android/ui/activities/support/b;

    .line 41
    return-void
.end method

.method private getMethodName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    .line 73
    const-string/jumbo v0, "loader."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v0, "onLoader"

    .line 75
    const-string/jumbo v1, "loader."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 81
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0

    .line 77
    :cond_0
    const-string/jumbo v0, "on"

    goto :goto_0
.end method


# virtual methods
.method public triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 47
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface;->getMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :try_start_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface;->mCallback:Lcom/yelp/android/ui/activities/support/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/json/JSONObject;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/yelp/android/ui/activities/support/a;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface;->mCallback:Lcom/yelp/android/ui/activities/support/b;

    invoke-direct {v4, v5, v2, v0}, Lcom/yelp/android/ui/activities/support/a;-><init>(Lcom/yelp/android/ui/activities/support/b;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :goto_1
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string/jumbo v2, "JSONException"

    invoke-static {p0, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No such method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - probably not used in this version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
