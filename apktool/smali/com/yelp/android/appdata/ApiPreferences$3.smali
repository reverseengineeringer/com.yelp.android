.class Lcom/yelp/android/appdata/ApiPreferences$3;
.super Ljava/lang/Object;
.source "ApiPreferences.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/ApiPreferences;->a(Ljava/lang/String;ILcom/yelp/android/appdata/ApiPreferences$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yelp/android/appdata/ApiPreferences$b;

.field final synthetic d:Lcom/yelp/android/appdata/ApiPreferences;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/ApiPreferences;Ljava/lang/Integer;Ljava/lang/String;Lcom/yelp/android/appdata/ApiPreferences$b;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/yelp/android/appdata/ApiPreferences$3;->d:Lcom/yelp/android/appdata/ApiPreferences;

    iput-object p2, p0, Lcom/yelp/android/appdata/ApiPreferences$3;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/yelp/android/appdata/ApiPreferences$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/yelp/android/appdata/ApiPreferences$3;->c:Lcom/yelp/android/appdata/ApiPreferences$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences$3;->c:Lcom/yelp/android/appdata/ApiPreferences$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/ApiPreferences$b;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 123
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences$3;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences$3;->d:Lcom/yelp/android/appdata/ApiPreferences;

    invoke-static {v0}, Lcom/yelp/android/appdata/ApiPreferences;->a(Lcom/yelp/android/appdata/ApiPreferences;)Lcom/yelp/android/serializable/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Preferences;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/ApiPreferences$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/appdata/ApiPreferences$3;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences$3;->c:Lcom/yelp/android/appdata/ApiPreferences$b;

    invoke-interface {v0, p2}, Lcom/yelp/android/appdata/ApiPreferences$b;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 118
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/ApiPreferences$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
