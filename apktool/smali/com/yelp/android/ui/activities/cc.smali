.class Lcom/yelp/android/ui/activities/cc;
.super Landroid/os/AsyncTask;
.source "ActivityCreateAccount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

.field private final b:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cc;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1489
    iput-object p2, p0, Lcom/yelp/android/ui/activities/cc;->b:Landroid/location/Location;

    .line 1490
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/location/Address;
    .locals 7

    .prologue
    .line 1497
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/cc;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {v1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 1498
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cc;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/cc;->b:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 1500
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1501
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    :goto_0
    return-object v0

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    const-string/jumbo v1, "ActivityCreateAccount"

    const-string/jumbo v2, "Error geo-coding current location."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1506
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/location/Address;)V
    .locals 1

    .prologue
    .line 1511
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/cc;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cc;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Landroid/location/Address;)V

    .line 1514
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1484
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/cc;->a([Ljava/lang/Void;)Landroid/location/Address;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1484
    check-cast p1, Landroid/location/Address;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/cc;->a(Landroid/location/Address;)V

    return-void
.end method
