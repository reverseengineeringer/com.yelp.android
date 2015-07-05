.class Lcom/yelp/android/ui/activities/businesspage/u;
.super Ljava/lang/Object;
.source "BusinessNotificationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic c:Lcom/yelp/android/ui/activities/businesspage/t;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/t;Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/u;->c:Lcom/yelp/android/ui/activities/businesspage/t;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/u;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/u;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/u;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/u;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/u;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
