.class public Lcom/yelp/android/ui/util/a;
.super Ljava/lang/Object;
.source "AdManager.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/util/a;->c()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/util/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/util/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/util/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/util/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/yelp/android/ui/util/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 82
    new-instance v0, Lcom/yelp/android/ui/util/a$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/a$1;-><init>(Lcom/yelp/android/ui/util/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/a$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 100
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/doubleclick/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 55
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 56
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    instance-of v4, v1, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 58
    check-cast v1, Lorg/json/JSONArray;

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "\""

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/util/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/yelp/android/appdata/Features;->dfp_advertising_hash:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    const-string/jumbo v0, "adid"

    invoke-direct {p0}, Lcom/yelp/android/ui/util/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/d$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/d$a;-><init>()V

    new-instance v1, Lcom/yelp/android/bd/a;

    invoke-direct {v1, v2}, Lcom/yelp/android/bd/a;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/d$a;->a(Lcom/yelp/android/bc/m;)Lcom/google/android/gms/ads/doubleclick/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/d$a;->a()Lcom/google/android/gms/ads/doubleclick/d;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/util/a;->a:Ljava/lang/String;

    return-object v0
.end method
