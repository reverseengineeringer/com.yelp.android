.class Lcom/yelp/android/appdata/az;
.super Landroid/os/AsyncTask;
.source "StatefulLocationService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/util/Pair",
        "<",
        "Lcom/yelp/android/appdata/LocationService$Accuracies;",
        "Lcom/yelp/android/appdata/LocationService$Recentness;",
        ">;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Landroid/location/Location;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/as;

.field private final b:Lcom/yelp/android/appdata/aa;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/as;Lcom/yelp/android/appdata/aa;J)V
    .locals 1

    .prologue
    .line 736
    iput-object p1, p0, Lcom/yelp/android/appdata/az;->a:Lcom/yelp/android/appdata/as;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 737
    iput-object p2, p0, Lcom/yelp/android/appdata/az;->b:Lcom/yelp/android/appdata/aa;

    .line 738
    iput-wide p3, p0, Lcom/yelp/android/appdata/az;->c:J

    .line 739
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/util/Pair;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/appdata/LocationService$Accuracies;",
            "Lcom/yelp/android/appdata/LocationService$Recentness;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Landroid/location/Location;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/appdata/az;->a:Lcom/yelp/android/appdata/as;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/LocationService$Accuracies;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-wide v4, p0, Lcom/yelp/android/appdata/az;->c:J

    invoke-static {v2, v0, v1, v4, v5}, Lcom/yelp/android/appdata/as;->a(Lcom/yelp/android/appdata/as;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;J)Landroid/util/Pair;
    :try_end_0
    .catch Lcom/yelp/android/appdata/LocationService$NoProvidersException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 763
    :goto_0
    return-object v0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/location/Location;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 768
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 770
    iget-object v0, p0, Lcom/yelp/android/appdata/az;->a:Lcom/yelp/android/appdata/as;

    iget-object v0, v0, Lcom/yelp/android/appdata/as;->a:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/yelp/android/appdata/az;->b:Lcom/yelp/android/appdata/aa;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Callback was cancelled"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 781
    :goto_0
    return-void

    .line 775
    :cond_0
    if-nez p1, :cond_1

    .line 776
    iget-object v0, p0, Lcom/yelp/android/appdata/az;->b:Lcom/yelp/android/appdata/aa;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/appdata/aa;->a(Landroid/location/Location;Z)V

    goto :goto_0

    .line 780
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/appdata/az;->b:Lcom/yelp/android/appdata/aa;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/yelp/android/appdata/aa;->a(Landroid/location/Location;Z)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 731
    check-cast p1, [Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/az;->a([Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 731
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/az;->a(Landroid/util/Pair;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 743
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 744
    iget-object v0, p0, Lcom/yelp/android/appdata/az;->a:Lcom/yelp/android/appdata/as;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/as;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/yelp/android/appdata/az;->a:Lcom/yelp/android/appdata/as;

    iget-object v0, v0, Lcom/yelp/android/appdata/as;->a:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/yelp/android/appdata/az;->b:Lcom/yelp/android/appdata/aa;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/yelp/android/appdata/az;->b:Lcom/yelp/android/appdata/aa;

    invoke-interface {v0}, Lcom/yelp/android/appdata/aa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/az;->cancel(Z)Z

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Callback was cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
