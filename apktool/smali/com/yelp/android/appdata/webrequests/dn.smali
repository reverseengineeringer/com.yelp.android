.class public Lcom/yelp/android/appdata/webrequests/dn;
.super Lcom/yelp/android/av/g;
.source "MemberSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/search"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dn;->b:Ljava/util/ArrayList;

    .line 29
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/dn;->a:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "q"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dn;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dn;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "limit"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dn;->addUrlParam(Ljava/lang/String;I)V

    .line 32
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/dn;->addUrlParam(Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/dn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;>;)",
            "Lcom/yelp/android/appdata/webrequests/dn;"
        }
    .end annotation

    .prologue
    .line 106
    const-string/jumbo v0, "MSR.results"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/yelp/android/appdata/webrequests/dn;

    const-string/jumbo v2, "MSR.query"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/yelp/android/appdata/webrequests/dn;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;I)V

    .line 109
    const-string/jumbo v2, "MSR.moreflag"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/dn;->a(Z)V

    .line 110
    invoke-direct {v1, v0}, Lcom/yelp/android/appdata/webrequests/dn;->a(Ljava/util/ArrayList;)V

    .line 111
    return-object v1
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dn;->b:Ljava/util/ArrayList;

    .line 102
    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/yelp/android/appdata/webrequests/dn;->c:Z

    .line 98
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dn;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dn;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v1, "total"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dn;->c:Z

    .line 40
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dn;->b:Ljava/util/ArrayList;

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "MSR.results"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dn;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 92
    const-string/jumbo v0, "MSR.moreflag"

    iget-boolean v1, p0, Lcom/yelp/android/appdata/webrequests/dn;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 93
    const-string/jumbo v0, "MSR.query"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dn;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/dn;->cancel(Z)V

    .line 57
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dn;->a:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "q"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dn;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dn;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dn;->b:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dn;->isFetching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string/jumbo v2, "offset"

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dn;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/appdata/webrequests/dn;->addUrlParam(Ljava/lang/String;I)V

    .line 77
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/dn;->executeRepeatable([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 79
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dn;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dn;->c:Z

    return v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/dn;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
