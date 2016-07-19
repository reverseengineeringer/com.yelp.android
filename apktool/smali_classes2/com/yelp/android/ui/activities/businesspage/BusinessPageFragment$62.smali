.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$62;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v()V
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
    .line 1362
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$62;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$62;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1366
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$62;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    const/16 v2, 0x3f6

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1367
    return-void
.end method
