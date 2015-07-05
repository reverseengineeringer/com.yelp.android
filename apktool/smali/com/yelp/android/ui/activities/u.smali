.class Lcom/yelp/android/ui/activities/u;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yelp/android/ui/activities/u;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/yelp/android/ui/activities/u;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    const-class v2, Lcom/yelp/android/ui/activities/ActivityDebugInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 333
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/yelp/android/ui/activities/u;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityConfig;->startActivity(Landroid/content/Intent;)V

    .line 335
    return-void
.end method
