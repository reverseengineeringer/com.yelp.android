.class Lcom/yelp/android/appdata/p$d;
.super Landroid/os/AsyncTask;
.source "StatefulLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

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
.field final synthetic a:Lcom/yelp/android/appdata/p;

.field private final b:Lcom/yelp/android/appdata/LocationService$a;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/p;Lcom/yelp/android/appdata/LocationService$a;J)V
    .locals 1

    .prologue
    .line 780
    iput-object p1, p0, Lcom/yelp/android/appdata/p$d;->a:Lcom/yelp/android/appdata/p;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 781
    iput-object p2, p0, Lcom/yelp/android/appdata/p$d;->b:Lcom/yelp/android/appdata/LocationService$a;

    .line 782
    iput-wide p3, p0, Lcom/yelp/android/appdata/p$d;->c:J

    .line 783
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
    .line 803
    :try_start_0
    iget-object v2, p0, Lcom/yelp/android/appdata/p$d;->a:Lcom/yelp/android/appdata/p;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/appdata/LocationService$Accuracies;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/yelp/android/appdata/LocationService$Recentness;

    iget-wide v4, p0, Lcom/yelp/android/appdata/p$d;->c:J

    invoke-static {v2, v0, v1, v4, v5}, Lcom/yelp/android/appdata/p;->a(Lcom/yelp/android/appdata/p;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;J)Landroid/util/Pair;
    :try_end_0
    .catch Lcom/yelp/android/appdata/LocationService$NoProvidersException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 807
    :goto_0
    return-object v0

    .line 804
    :catch_0
    move-exception v0

    .line 805
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

    .line 812
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 814
    iget-object v0, p0, Lcom/yelp/android/appdata/p$d;->a:Lcom/yelp/android/appdata/p;

    iget-object v0, v0, Lcom/yelp/android/appdata/p;->a:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/yelp/android/appdata/p$d;->b:Lcom/yelp/android/appdata/LocationService$a;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Callback was cancelled"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 825
    :goto_0
    return-void

    .line 819
    :cond_0
    if-nez p1, :cond_1

    .line 820
    iget-object v0, p0, Lcom/yelp/android/appdata/p$d;->b:Lcom/yelp/android/appdata/LocationService$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/appdata/LocationService$a;->a(Landroid/location/Location;Z)V

    goto :goto_0

    .line 824
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/appdata/p$d;->b:Lcom/yelp/android/appdata/LocationService$a;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/yelp/android/appdata/LocationService$a;->a(Landroid/location/Location;Z)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 774
    check-cast p1, [Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/p$d;->a([Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 774
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/p$d;->a(Landroid/util/Pair;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 787
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 788
    iget-object v0, p0, Lcom/yelp/android/appdata/p$d;->a:Lcom/yelp/android/appdata/p;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/yelp/android/appdata/p$d;->a:Lcom/yelp/android/appdata/p;

    iget-object v0, v0, Lcom/yelp/android/appdata/p;->a:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/yelp/android/appdata/p$d;->b:Lcom/yelp/android/appdata/LocationService$a;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/yelp/android/appdata/p$d;->b:Lcom/yelp/android/appdata/LocationService$a;

    invoke-interface {v0}, Lcom/yelp/android/appdata/LocationService$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 791
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/p$d;->cancel(Z)Z

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    const-string/jumbo v0, "LOCDEBUG"

    const-string/jumbo v1, "Callback was cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
