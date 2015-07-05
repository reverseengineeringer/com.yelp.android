.class Lcom/yelp/android/ui/n;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"

# interfaces
.implements Lcom/yelp/android/ui/ActivityMonocle$MonocleButton;


# instance fields
.field private final a:Lcom/yelp/android/serializable/YelpBusiness;

.field private final b:Lcom/yelp/android/ui/ActivityMonocle;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p2, p0, Lcom/yelp/android/ui/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 756
    iput-object p1, p0, Lcom/yelp/android/ui/n;->b:Lcom/yelp/android/ui/ActivityMonocle;

    .line 757
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/yelp/android/ui/n;->b:Lcom/yelp/android/ui/ActivityMonocle;

    iget-object v1, p0, Lcom/yelp/android/ui/n;->b:Lcom/yelp/android/ui/ActivityMonocle;

    iget-object v2, p0, Lcom/yelp/android/ui/n;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/ActivityMonocle;->startActivity(Landroid/content/Intent;)V

    .line 762
    return-void
.end method
