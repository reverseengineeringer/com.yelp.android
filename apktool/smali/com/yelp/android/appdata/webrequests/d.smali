.class public Lcom/yelp/android/appdata/webrequests/d;
.super Lcom/yelp/android/appdata/webrequests/k;
.source "AccountCreateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:Lorg/apache/http/HttpEntity;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;Lcom/yelp/android/appdata/webrequests/k$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
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
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/serializable/j;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static/range {p14 .. p14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v15, "account/line/create"

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    invoke-direct/range {v0 .. v15}, Lcom/yelp/android/appdata/webrequests/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;Lcom/yelp/android/appdata/webrequests/k$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 47
    :cond_0
    const-string/jumbo v15, "account/create_secure"

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Locale;Lcom/yelp/android/appdata/webrequests/k$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/serializable/j;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v3, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v5, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$Recentness;->HOUR:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v8, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v2, p0

    move-object/from16 v4, p15

    move-object/from16 v7, p12

    invoke-direct/range {v2 .. v8}, Lcom/yelp/android/appdata/webrequests/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 92
    invoke-static/range {p13 .. p13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p14 .. p14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    const-string/jumbo v2, "line_user_id"

    move-object/from16 v0, p14

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v2, "access_token"

    move-object/from16 v0, p13

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    const-string/jumbo v2, "first_name"

    invoke-virtual {p0, v2, p1}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v2, "last_name"

    invoke-virtual {p0, v2, p2}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v2, "email"

    invoke-virtual {p0, v2, p3}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v2, "password"

    invoke-virtual {p0, v2, p4}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v2, "user_country_code"

    invoke-virtual/range {p11 .. p11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 103
    const-string/jumbo v2, "zip"

    move-object/from16 v0, p6

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    :goto_0
    const-string/jumbo v3, "confirmed"

    if-eqz p10, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;I)V

    .line 108
    if-eqz p7, :cond_2

    .line 109
    const-string/jumbo v2, "gender"

    move-object/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_2
    if-eqz p8, :cond_3

    .line 112
    const-string/jumbo v2, "birthdate"

    move-object/from16 v0, p8

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_3
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/d;->i:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/d;->j:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/d;->h:Ljava/lang/String;

    .line 118
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 119
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/d;->g:Lorg/apache/http/HttpEntity;

    .line 132
    :goto_2
    return-void

    .line 104
    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    const-string/jumbo v2, "city"

    invoke-virtual {p0, v2, p5}, Lcom/yelp/android/appdata/webrequests/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 122
    :cond_6
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p9

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    new-instance v3, Lcom/yelp/android/util/j$a;

    sget-object v4, Lcom/yelp/android/util/g;->i:[B

    sget-object v5, Lcom/yelp/android/util/g;->i:[B

    const/4 v6, 0x0

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/yelp/android/util/j$a;-><init>([B[B[BLjava/io/InputStream;J)V

    .line 130
    new-instance v2, Lcom/yelp/android/util/j;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/d;->t()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {v2, v4, v3, v5}, Lcom/yelp/android/util/j;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/g$a;)V

    iput-object v2, p0, Lcom/yelp/android/appdata/webrequests/d;->g:Lorg/apache/http/HttpEntity;

    goto :goto_2
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/j;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p1}, Lcom/yelp/android/serializable/h;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/j;

    move-result-object v12

    .line 142
    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    new-instance v0, Lcom/yelp/android/serializable/j;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/d;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/d;->j:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->f()Z

    move-result v6

    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->j()Z

    move-result v7

    iget-object v8, p0, Lcom/yelp/android/appdata/webrequests/d;->h:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->h()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/yelp/android/serializable/i;

    const-string/jumbo v11, "message"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/yelp/android/serializable/i;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->i()Z

    move-result v11

    invoke-virtual {v12}, Lcom/yelp/android/serializable/j;->l()I

    move-result v12

    invoke-direct/range {v0 .. v12}, Lcom/yelp/android/serializable/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/i;ZI)V

    .line 160
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v12

    goto :goto_0
.end method

.method protected a()Lorg/apache/http/HttpEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/d;->g:Lorg/apache/http/HttpEntity;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/appdata/webrequests/k;->a()Lorg/apache/http/HttpEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/d;->g:Lorg/apache/http/HttpEntity;

    goto :goto_0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/d;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/j;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method
