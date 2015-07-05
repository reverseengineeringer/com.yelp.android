.class Lcom/yelp/android/ui/activities/talk/a;
.super Ljava/lang/Object;
.source "ActivityTalk.java"

# interfaces
.implements Lcom/yelp/android/appdata/aa;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;Z)V
    .locals 8

    .prologue
    .line 128
    if-nez p2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    new-instance v1, Landroid/location/Geocoder;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 141
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Lcom/yelp/android/appdata/webrequests/eq;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Lcom/yelp/android/appdata/webrequests/eq;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/eq;->cancel(Z)V

    .line 146
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Lcom/yelp/android/appdata/webrequests/eq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/eq;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 149
    :cond_2
    iget-object v7, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/eq;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->c(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/yelp/android/appdata/webrequests/eq;-><init>(DDLcom/yelp/android/appdata/webrequests/m;)V

    invoke-static {v7, v1}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->a(Lcom/yelp/android/ui/activities/talk/ActivityTalk;Lcom/yelp/android/appdata/webrequests/eq;)Lcom/yelp/android/appdata/webrequests/eq;

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->b(Lcom/yelp/android/ui/activities/talk/ActivityTalk;)Lcom/yelp/android/appdata/webrequests/eq;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eq;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/a;->a:Lcom/yelp/android/ui/activities/talk/ActivityTalk;

    invoke-virtual {v0, v1, v2, v2}, Lcom/yelp/android/ui/activities/talk/ActivityTalk;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 163
    return v2
.end method
