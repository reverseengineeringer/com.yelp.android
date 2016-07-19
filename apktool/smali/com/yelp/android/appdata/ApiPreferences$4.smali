.class Lcom/yelp/android/appdata/ApiPreferences$4;
.super Ljava/lang/Object;
.source "ApiPreferences.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/ApiPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/Preferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/ApiPreferences;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/ApiPreferences;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yelp/android/appdata/ApiPreferences$4;->a:Lcom/yelp/android/appdata/ApiPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Preferences;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Preferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences$4;->a:Lcom/yelp/android/appdata/ApiPreferences;

    invoke-static {v0, p2}, Lcom/yelp/android/appdata/ApiPreferences;->a(Lcom/yelp/android/appdata/ApiPreferences;Lcom/yelp/android/serializable/Preferences;)Lcom/yelp/android/serializable/Preferences;

    .line 187
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences$4;->a:Lcom/yelp/android/appdata/ApiPreferences;

    invoke-static {v0}, Lcom/yelp/android/appdata/ApiPreferences;->b(Lcom/yelp/android/appdata/ApiPreferences;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/ApiPreferences$a;

    .line 188
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/yelp/android/appdata/ApiPreferences$a;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences$4;->a:Lcom/yelp/android/appdata/ApiPreferences;

    invoke-static {v0}, Lcom/yelp/android/appdata/ApiPreferences;->b(Lcom/yelp/android/appdata/ApiPreferences;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 178
    iget-object v0, p0, Lcom/yelp/android/appdata/ApiPreferences$4;->a:Lcom/yelp/android/appdata/ApiPreferences;

    invoke-static {v0}, Lcom/yelp/android/appdata/ApiPreferences;->b(Lcom/yelp/android/appdata/ApiPreferences;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/ApiPreferences$a;

    .line 179
    invoke-interface {v0, p2}, Lcom/yelp/android/appdata/ApiPreferences$a;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0

    .line 181
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 175
    check-cast p2, Lcom/yelp/android/serializable/Preferences;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/ApiPreferences$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Preferences;)V

    return-void
.end method
