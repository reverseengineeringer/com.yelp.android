.class public Lcom/yelp/android/debug/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/debug/Debug$MockLocation;,
        Lcom/yelp/android/debug/Debug$ApiEndpoint;
    }
.end annotation


# static fields
.field public static c:[Ljava/lang/String;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field public b:Z

.field private final d:Lcom/yelp/android/appdata/f;

.field private e:Lorg/apache/http/conn/ssl/SSLSocketFactory;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "yelp4.5:///user/check_in_offers"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "yelp4.5:///search?check_in_offers=1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "yelp4.2:///user/badge/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "yelp4:///biz/89ahv989w8hj4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "yelp4:///search?terms=Beer&category=bars&location=435+Hayes+St,+SF"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/debug/Debug;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/appdata/f;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lcom/yelp/android/debug/Debug;->d:Lcom/yelp/android/appdata/f;

    .line 140
    const-string/jumbo v0, "yelp.android.debug"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    .line 141
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "gzip"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/debug/Debug;->f:Z

    .line 142
    iput-boolean v2, p0, Lcom/yelp/android/debug/Debug;->b:Z

    .line 143
    invoke-virtual {p0, p1}, Lcom/yelp/android/debug/Debug;->a(Landroid/content/Context;)V

    .line 144
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/debug/Debug;->e:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 173
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->e:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    invoke-static {v0}, Lcom/yelp/android/services/c;->a(Lorg/apache/http/conn/scheme/SocketFactory;)V

    .line 174
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "search_cache"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "show_yelplog_toasts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lorg/apache/http/conn/scheme/SocketFactory;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/yelp/android/debug/Debug;->e:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    return-object v0
.end method
