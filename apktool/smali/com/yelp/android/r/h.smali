.class Lcom/yelp/android/r/h;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/yelp/android/r/i;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/r/g;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/yelp/android/r/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method
