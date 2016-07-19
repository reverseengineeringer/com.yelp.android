.class Lcom/yelp/android/ui/activities/search/SearchOverlay$a;
.super Landroid/os/AsyncTask;
.source "SearchOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

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
    .line 863
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 864
    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->b:Landroid/location/Geocoder;

    .line 865
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/location/Location;
    .locals 4

    .prologue
    .line 869
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 872
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->b:Landroid/location/Geocoder;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 873
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 874
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 875
    if-eqz v0, :cond_0

    .line 876
    new-instance v1, Landroid/location/Location;

    const-string/jumbo v2, "Geocoder"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 878
    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 886
    :goto_0
    return-object v0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    const-string/jumbo v0, "SearchOverlay"

    const-string/jumbo v1, "The network is unavailable for Geocoder."

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->w(Ljava/lang/Object;Ljava/lang/String;)I

    .line 886
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/location/Location;)V
    .locals 2

    .prologue
    .line 891
    if-eqz p1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/af;->a(Landroid/location/Location;)V

    .line 893
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/af;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/af;->filter(Ljava/lang/CharSequence;)V

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/af;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/af;->a(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/af;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/af;->filter(Ljava/lang/CharSequence;)V

    .line 902
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 859
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a([Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 859
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$a;->a(Landroid/location/Location;)V

    return-void
.end method
