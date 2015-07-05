.class Lcom/yelp/android/ui/activities/businesspage/ce;
.super Lcom/yelp/android/analytics/d;
.source "FromThisBusinessPanel.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ce;->b:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/ce;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0, p2}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ce;->b:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ce;->b:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ce;->a:Lcom/yelp/android/serializable/YelpBusiness;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
