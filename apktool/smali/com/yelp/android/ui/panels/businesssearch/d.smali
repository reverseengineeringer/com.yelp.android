.class Lcom/yelp/android/ui/panels/businesssearch/d;
.super Ljava/lang/Object;
.source "BusinessAdapter.java"

# interfaces
.implements Lcom/yelp/android/util/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/util/ag",
        "<",
        "Lcom/yelp/android/serializable/RecentCheckIn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/businesssearch/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesssearch/c;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/d;->a:Lcom/yelp/android/ui/panels/businesssearch/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/RecentCheckIn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    invoke-virtual {p1}, Lcom/yelp/android/serializable/RecentCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    check-cast p1, Lcom/yelp/android/serializable/RecentCheckIn;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/d;->a(Lcom/yelp/android/serializable/RecentCheckIn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
