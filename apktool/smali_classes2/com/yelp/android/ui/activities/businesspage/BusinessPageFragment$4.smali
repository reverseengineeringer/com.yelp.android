.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$4;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->w()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$4;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$4;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const-string/jumbo v1, "tip_contribution_cell"

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$4;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const-string/jumbo v1, "tip_contribution_cell"

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    .line 1460
    return-void
.end method
