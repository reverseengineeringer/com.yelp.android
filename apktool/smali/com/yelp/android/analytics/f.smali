.class Lcom/yelp/android/analytics/f;
.super Lcom/yelp/android/analytics/b;
.source "InvalidBundleAnalytic.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/analytics/b;-><init>()V

    .line 18
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->ERROR:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    invoke-virtual {p0, v0}, Lcom/yelp/android/analytics/f;->a(Lcom/yelp/android/analytics/iris/AnalyticCategory;)V

    .line 19
    invoke-static {p1}, Lcom/yelp/android/appdata/BaseYelpApplication;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/analytics/f;->a:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/yelp/android/analytics/f;->b:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 25
    invoke-super {p0}, Lcom/yelp/android/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "bundle_image_not_found"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string/jumbo v1, "app_version"

    iget-object v2, p0, Lcom/yelp/android/analytics/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string/jumbo v1, "description"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bundle://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/analytics/f;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string/jumbo v1, "is_crash"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 30
    return-object v0
.end method
