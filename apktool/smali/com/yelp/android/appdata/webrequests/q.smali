.class public Lcom/yelp/android/appdata/webrequests/q;
.super Lcom/yelp/parcelgen/JsonParser;
.source "AutomaticApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/parcelgen/JsonParser",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yelp/parcelgen/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/parcelgen/JsonParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/parcelgen/JsonParser",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/q;->a:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/q;->b:Lcom/yelp/parcelgen/JsonParser;

    .line 58
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/q;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/q;->b:Lcom/yelp/parcelgen/JsonParser;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/q;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
