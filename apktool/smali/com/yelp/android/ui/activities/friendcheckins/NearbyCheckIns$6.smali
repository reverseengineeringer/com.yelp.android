.class Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$6;
.super Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;
.source "NearbyCheckIns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;)V
    .locals 0

    .prologue
    .line 614
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$6;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 5

    .prologue
    .line 619
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$6;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v2, v0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->a:[I

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 620
    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$6;->a:Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns;->d:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v4, v0}, Lcom/yelp/android/ui/util/aj;->a(I)Lcom/yelp/android/ui/util/aj$b;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/activities/friendcheckins/a;

    .line 623
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b(Ljava/lang/Object;)V

    .line 619
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 625
    :cond_0
    return-void
.end method
