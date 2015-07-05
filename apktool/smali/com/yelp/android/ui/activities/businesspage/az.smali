.class Lcom/yelp/android/ui/activities/businesspage/az;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/Menu;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 2453
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/az;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/az;->a:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/az;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/az;->a:Landroid/view/Menu;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Landroid/view/Menu;)V

    .line 2457
    return-void
.end method
