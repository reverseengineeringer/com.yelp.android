.class Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;
.super Lcom/yelp/android/analytics/d;
.source "FromThisBusinessPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/serializable/FromThisBusiness;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->e:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->a:Lcom/yelp/android/serializable/YelpBusiness;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->c:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->d:Z

    invoke-direct {p0, p2}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->e:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->e:Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->a:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/yelp/android/ui/activities/businesspage/FromThisBusinessPanel$1;->d:Z

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/businesspage/ActivityMoreInfoPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method
