.class public Lcom/yelp/android/appdata/webrequests/c;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "AccountCreateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/eq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/http/HttpEntity;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Locale;",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/serializable/eq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v3, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v4, "account/create_secure"

    sget-object v5, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$Recentness;->HOUR:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v8, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v2, p0

    move-object/from16 v7, p12

    invoke-direct/range {v2 .. v8}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 38
    const-string/jumbo v2, "first_name"

    invoke-virtual {p0, v2, p1}, Lcom/yelp/android/appdata/webrequests/c;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v2, "last_name"

    invoke-virtual {p0, v2, p2}, Lcom/yelp/android/appdata/webrequests/c;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v2, "email"

    invoke-virtual {p0, v2, p3}, Lcom/yelp/android/appdata/webrequests/c;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v2, "password"

    invoke-virtual {p0, v2, p4}, Lcom/yelp/android/appdata/webrequests/c;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "user_country_code"

    invoke-virtual/range {p11 .. p11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/c;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 44
    const-string/jumbo v2, "zip"

    move-object/from16 v0, p6

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/c;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    :goto_0
    const-string/jumbo v3, "confirmed"

    if-eqz p10, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/yelp/android/appdata/webrequests/c;->addPostParam(Ljava/lang/String;I)V

    .line 49
    if-eqz p7, :cond_1

    .line 50
    const-string/jumbo v2, "gender"

    move-object/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/c;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    if-eqz p8, :cond_2

    .line 53
    const-string/jumbo v2, "birthdate"

    move-object/from16 v0, p8

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/c;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_2
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/c;->c:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/c;->d:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/c;->b:Ljava/lang/String;

    .line 59
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/c;->a:Lorg/apache/http/HttpEntity;

    .line 70
    :goto_2
    return-void

    .line 45
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    const-string/jumbo v2, "city"

    invoke-virtual {p0, v2, p5}, Lcom/yelp/android/appdata/webrequests/c;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 63
    :cond_5
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p9

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v3, Lcom/yelp/android/util/q;

    sget-object v4, Lcom/yelp/android/util/m;->i:[B

    sget-object v5, Lcom/yelp/android/util/m;->i:[B

    const/4 v6, 0x0

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/q;-><init>([B[B[BLjava/io/InputStream;J)V

    .line 67
    new-instance v2, Lcom/yelp/android/util/p;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/c;->getPostParameters()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/yelp/android/util/p;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/n;)V

    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/c;->a:Lorg/apache/http/HttpEntity;

    goto :goto_2
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/eq;
    .locals 11

    .prologue
    .line 80
    invoke-static {p1}, Lcom/yelp/android/serializable/en;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/eq;

    move-result-object v10

    .line 81
    invoke-virtual {v10}, Lcom/yelp/android/serializable/eq;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v10}, Lcom/yelp/android/serializable/eq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v10}, Lcom/yelp/android/serializable/eq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    new-instance v0, Lcom/yelp/android/serializable/eq;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/c;->d:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/yelp/android/serializable/eq;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/yelp/android/serializable/eq;->d()Z

    move-result v4

    invoke-virtual {v10}, Lcom/yelp/android/serializable/eq;->h()Z

    move-result v5

    iget-object v6, p0, Lcom/yelp/android/appdata/webrequests/c;->b:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/yelp/android/serializable/eq;->f()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/yelp/android/serializable/ep;

    const-string/jumbo v9, "message"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/yelp/android/serializable/ep;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v10}, Lcom/yelp/android/serializable/eq;->g()Z

    move-result v9

    invoke-virtual {v10}, Lcom/yelp/android/serializable/eq;->i()I

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/yelp/android/serializable/eq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/ep;ZI)V

    .line 96
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v10

    goto :goto_0
.end method

.method protected getPostEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/c;->a:Lorg/apache/http/HttpEntity;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/appdata/webrequests/h;->getPostEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/c;->a:Lorg/apache/http/HttpEntity;

    goto :goto_0
.end method

.method public isLocationAbsolutelyRequired()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/c;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/eq;

    move-result-object v0

    return-object v0
.end method
