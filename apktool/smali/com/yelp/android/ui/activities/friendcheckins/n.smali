.class Lcom/yelp/android/ui/activities/friendcheckins/n;
.super Lcom/yelp/android/ui/activities/friendcheckins/p;
.source "NearbyCheckIns.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/n;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/p;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 5

    .prologue
    .line 590
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/n;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v2, v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 591
    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/n;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/util/bs;->a(I)Lcom/yelp/android/ui/util/bv;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    .line 593
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/lang/Object;)V

    .line 590
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 595
    :cond_0
    return-void
.end method
