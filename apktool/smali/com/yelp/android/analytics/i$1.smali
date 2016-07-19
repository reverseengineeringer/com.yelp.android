.class Lcom/yelp/android/analytics/i$1;
.super Ljava/lang/Object;
.source "KahunaAnalyticsManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/analytics/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/analytics/i;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yelp/android/analytics/i$1;->a:Lcom/yelp/android/analytics/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
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
    .line 169
    iget-object v0, p0, Lcom/yelp/android/analytics/i$1;->a:Lcom/yelp/android/analytics/i;

    invoke-static {v0}, Lcom/yelp/android/analytics/i;->b(Lcom/yelp/android/analytics/i;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "migration_complete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    iget-object v0, p0, Lcom/yelp/android/analytics/i$1;->a:Lcom/yelp/android/analytics/i;

    invoke-static {v0}, Lcom/yelp/android/analytics/i;->c(Lcom/yelp/android/analytics/i;)Lcom/kahuna/sdk/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/kahuna/sdk/h;->e()V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/analytics/i$1;->a:Lcom/yelp/android/analytics/i;

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaAttributeIri;->KahunaEnabled:Lcom/yelp/android/analytics/iris/KahunaAttributeIri;

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaAttributeIri;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/analytics/i$1;->a:Lcom/yelp/android/analytics/i;

    invoke-static {v0}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/i;)Lcom/yelp/android/analytics/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/analytics/i$a;->a()V

    .line 173
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 164
    iget-object v0, p0, Lcom/yelp/android/analytics/i$1;->a:Lcom/yelp/android/analytics/i;

    invoke-static {v0}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/i;)Lcom/yelp/android/analytics/i$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/analytics/i$a;->a()V

    .line 165
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/analytics/i$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
