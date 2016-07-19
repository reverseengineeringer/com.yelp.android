.class Lcom/yelp/android/ui/activities/nearby/a$2;
.super Ljava/lang/Object;
.source "NearbyHeaderController.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/nearby/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/a;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/a$2;->a:Lcom/yelp/android/ui/activities/nearby/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 408
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    const-string/jumbo v1, "nearby_suggest"

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 409
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformFilter;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a$2;->a:Lcom/yelp/android/ui/activities/nearby/a;

    invoke-static {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/nearby/a;->a(Lcom/yelp/android/ui/activities/nearby/a;Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method
