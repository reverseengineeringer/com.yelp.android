.class public Lcom/yelp/android/appdata/webrequests/cx;
.super Ljava/lang/Object;
.source "ListTipsRequest.java"


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Locale;

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Locale;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cx;->a:Ljava/util/List;

    .line 92
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/cx;->c:Ljava/util/Locale;

    .line 93
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/cx;->b:Ljava/util/Map;

    .line 94
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/cx;->d:Ljava/util/List;

    .line 95
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cx;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cx;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cx;->c:Ljava/util/Locale;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cx;->d:Ljava/util/List;

    return-object v0
.end method
