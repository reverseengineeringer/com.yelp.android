.class Lcom/yelp/android/ui/activities/search/as;
.super Landroid/os/AsyncTask;
.source "SearchOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

.field private final b:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;Landroid/location/Geocoder;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/as;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 687
    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/as;->b:Landroid/location/Geocoder;

    .line 688
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/location/Location;
    .locals 4

    .prologue
    .line 692
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/as;->b:Landroid/location/Geocoder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 697
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 698
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 699
    if-eqz v0, :cond_0

    .line 700
    new-instance v1, Landroid/location/Location;

    const-string/jumbo v2, "Geocoder"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 702
    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 710
    :goto_0
    return-object v0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    const-string/jumbo v0, "SearchOverlay"

    const-string/jumbo v1, "The network is unavailable for Geocoder."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->w(Ljava/lang/Object;Ljava/lang/String;)I

    .line 710
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 715
    if-eqz p1, :cond_0

    .line 716
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/as;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/bj;->a(Landroid/location/Location;)V

    .line 717
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/as;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/as;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/as;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bj;->filter(Ljava/lang/CharSequence;)V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/as;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/as;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/as;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bj;->a(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/as;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/as;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bj;->filter(Ljava/lang/CharSequence;)V

    .line 726
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 682
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/as;->a([Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 682
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/as;->a(Landroid/location/Location;)V

    return-void
.end method
